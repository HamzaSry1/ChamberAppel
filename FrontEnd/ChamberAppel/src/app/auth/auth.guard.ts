import { Injectable } from '@angular/core';
import { ActivatedRouteSnapshot, CanActivate, Router, RouterStateSnapshot, UrlTree } from '@angular/router';
import { Observable } from 'rxjs';
import { AuthService } from './auth.service';

@Injectable({
  providedIn: 'root',
})
export class AuthGuard implements CanActivate {
  constructor(
    private _service: AuthService,
    private _router: Router,
  ) {}

  canActivate(route: ActivatedRouteSnapshot, state: RouterStateSnapshot): Observable<boolean | UrlTree> | Promise<boolean | UrlTree> | boolean | UrlTree {
    const hasAccess = this._service.isAuthenticated();
    if (hasAccess == true) {
      if (route.data?.['permission']) {
        return this._service.checkPermission(route.data['permission']);
      }
      return true;
    } else {
      this._router.navigate(['/auth/login']);
      return false;
    }
  }
}
