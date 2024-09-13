import { Injectable } from '@angular/core';
import { jwtDecode } from 'jwt-decode';
import { UtilisateursService } from '../generatedapis/services/UtilisateursService';
import { Permission } from '../generatedapis/models/Permission';

@Injectable({ providedIn: 'root' })
export class AuthService {
  public permissions: string[] = [];
  private initialized: boolean = false;

  public decodeToken(): any {
    const token = this.getToken();
    return jwtDecode(token) as any;
  }

  public geCurrentUserId() {
    var decodedToken = this.decodeToken() as any;
    var userId =
      decodedToken[
      'http://schemas.xmlsoap.org/ws/2005/05/identity/claims/nameidentifier'
      ];
    return userId;
  }
  private permissionLock: Promise<void> | null = null;
  private permissionsCache: Permission[] | null = null;

  public ResetPermissions() {
    this.permissionsCache = null;
    this.initialized = false;
    this.permissionLock = null;
  }

  public InitPermissions(): Promise<any> | null {
    if (this.initialized) {
      return null;
    }

    if (this.permissionLock !== null) {
      return this.permissionLock.then(() => {
        return this.permissionsCache;
      });
    }

    const userId = this.geCurrentUserId();

    this.permissionLock =
      UtilisateursService.getApiUtilisateursGetMyPermissionsAsync().then(
        (r) => {
          this.LoadPermissions(r.data);
        }
      );

    return this.permissionLock;
  }
  LoadPermissions(p: Permission[] | undefined | null) {
    const ListPermissions: string[] = p?.map((d) => d.code) as string[];
    this.permissionsCache = p as Permission[];
    this.initialized = true;
    if (ListPermissions && ListPermissions?.length > 0) {
      this.permissions = ListPermissions.map((p) => p.toLowerCase());
      localStorage.setItem('permissions', JSON.stringify(this.permissions));
    }
    this.permissionLock = null;
  }

  public GetCurrentUserName(): string {
    const decodedToken = this.decodeToken() as any;
    return decodedToken[
      'http://schemas.xmlsoap.org/ws/2005/05/identity/claims/name'
    ];
  }

  public async checkPermission(
    permissionR: string | string[]
  ): Promise<boolean> {
    if (!this.initialized) {
      const strPermissions = localStorage.getItem('permissions');
      if (strPermissions) {
        this.permissions = JSON.parse(strPermissions) as string[];
      } else {
        await this.InitPermissions();
      }
    }
    if (Array.isArray(permissionR)) {
      for (let index = 0; index < permissionR?.length; index++) {
        if (this.permissions.includes(permissionR[index].toLowerCase())) {
          return true;
        }
      }
      return false;
    } else {
      return this.permissions.includes(permissionR.toLowerCase());
    }
  }

  public getToken(): string {
    return localStorage.getItem('token') as string;
  }

  public isAuthenticated(): boolean {
    const token = this.getToken();
    return token != null && !this.isTokenExpired();
  }

  isTokenExpired(): boolean {
    const decodedToken = this.decodeToken();
    const currentTime = Math.floor(Date.now() / 1000);
    const tokenTime = Number.parseInt(decodedToken['exp']);
    return tokenTime < currentTime;
  }
}
