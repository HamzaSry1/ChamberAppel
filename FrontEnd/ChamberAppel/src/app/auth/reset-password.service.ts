import jwt_decode from 'jwt-decode';
import { Injectable } from '@angular/core';

@Injectable({
  providedIn: 'root',
})
export class ResetPasswordService {
  _token!: string;

  public getToken(token: any) {
    this._token = token;
  }

  public decodeToken(): any {
    const token = this._token;
    return jwt_decode(token) as any;
  }

  public getUserResetPassword(): string {
    var decodedToken = this.decodeToken() as any;
    var userId = decodedToken['http://schemas.xmlsoap.org/ws/2005/05/identity/claims/nameidentifier'];
    return userId;
  }

  public getExpirationDate() {
    var decodedToken = this.decodeToken() as any;
    var ExpirationDate = decodedToken['http://schemas.microsoft.com/ws/2008/06/identity/claims/expiration'];
    return ExpirationDate;
  }
}
