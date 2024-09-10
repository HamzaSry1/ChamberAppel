import { Component, OnInit } from '@angular/core';
import { FormControl, FormGroup, Validators } from '@angular/forms';
import { Router } from '@angular/router';
import { UtilisateursService } from '../../generatedapis/services/UtilisateursService';
import { AppMessageService } from 'src/app/app-message.service';
import { AuthService } from '../auth.service';
import { LoginDto } from 'src/app/generatedapis/models/LoginDto';
import { LoginResultApiResult } from 'src/app/generatedapis/models/LoginResultApiResult';
import { NgxSpinnerService } from 'ngx-spinner';
import { HttpStatusCode } from 'src/app/generatedapis/models/HttpStatusCode';

@Component({
  selector: 'app-login',
  templateUrl: './login.component.html',
  styleUrls: ['./login.component.scss'],
})
export class LoginComponent implements OnInit {
  pageStatus: 'error' | 'success' = 'success';
  constructor(
    private router: Router,
    private _notify: AppMessageService,
    private authService: AuthService,
    private _loader: NgxSpinnerService,
  ) {}
  ngOnInit(): void {
    localStorage.clear();
    this.authService.ResetPermissions();
  }

  Reactiveform = new FormGroup({
    login: new FormControl('', Validators.required),
    password: new FormControl('', Validators.required),
  });

  login() {
    if (this.Reactiveform.valid) {
      this.pageStatus = 'success';
      const loginDto: LoginDto = {
        login: this.Reactiveform.getRawValue().login?.trim() as string,
        password: this.Reactiveform.getRawValue().password?.trim() as string,
      };
      this._loader.show();
      UtilisateursService.postApiUtilisateursLogin(loginDto)
        .then((result: LoginResultApiResult) => {
          if (result.status != HttpStatusCode.OK) {
            this._notify.Warning(AppMessageService.LoginError);
          } else {
            const data = result?.data ?? {};
            localStorage.setItem('token', data.token as string);
            this.authService.LoadPermissions(data.permissions);
            this.router.navigate(['/accueil']);
          }
        })
        .catch((error) => {
          this.pageStatus = 'error';
          this._notify.Error(AppMessageService.ServerError);
        })
        .finally(() => {
          this._loader.hide();
        });
    }
  }
}
