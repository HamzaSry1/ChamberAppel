import { Component, OnInit } from '@angular/core';
import { AbstractControl, FormBuilder, FormControl, FormGroup, ValidationErrors, ValidatorFn, Validators } from '@angular/forms';
import { Router } from '@angular/router';
import { Const } from 'src/app/Helpers/Const';
import { Validator } from 'src/app/Helpers/custom-validation';
import { AppMessageService } from 'src/app/app-message.service';
import { AuthService } from 'src/app/auth/auth.service';
import { Features } from 'src/app/auth/permissions';
import { BooleanApiResult } from 'src/app/generatedapis/models/BooleanApiResult';
import { ChangePasswordRequestModel } from 'src/app/generatedapis/models/ChangePasswordRequestModel';
import { HttpStatusCode } from 'src/app/generatedapis/models/HttpStatusCode';
import { UtilisateursService } from 'src/app/generatedapis/services/UtilisateursService';

@Component({
  selector: 'app-users-change-password',
  templateUrl: './users-change-password.component.html',
  styleUrls: ['./users-change-password.component.scss'],
})
export class UsersChangePasswordComponent implements OnInit {
  public features = {
    ResetPassword: this._authService.checkPermission(Features.Utilisateurs.ChangePassword),
  };
  validationMessages: any = Const.ValidationMessages;
  ChangePasswordModel!: ChangePasswordRequestModel;
  ReactiveForm: FormGroup = new FormGroup({
    oldpassword: new FormControl('', [Validators.required]),
    newpassword: new FormControl('', [Validators.required, Validator.passwordValidator]),
    confirmnewpassword: new FormControl('', [Validators.required, this.passwordMatchValidator]),
  });

  constructor(
    private formBuilder: FormBuilder,
    private _authService: AuthService,
    private _notify: AppMessageService,
    private _router: Router,
  ) {}
  ngOnInit(): void {}

  passwordMatchValidator(control: any) {
    const password = control.get('newpassword');
    const confirmPassword = control.get('confirmnewpassword');
    if (password && confirmPassword && password.value !== confirmPassword.value) {
      return { passwordMismatch: true };
    }
    return null;
  }
  ChangePassword() {
    if (this.ReactiveForm.valid) {
      this.ChangePasswordModel = {
        userId: this._authService.geCurrentUserId(),
        oldPassword: this.ReactiveForm.getRawValue().oldpassword,
        newPassword: this.ReactiveForm.getRawValue().newpassword,
      };
      UtilisateursService.postApiUtilisateursChangePassword(this.ChangePasswordModel).then((result: BooleanApiResult) => {
        if (result.status == HttpStatusCode.OK) {
          this._notify.Success(AppMessageService.ChangePasswordSuccess);
          this._router.navigate(['/utilisateurs/monprofil']);
        } else this._notify.Error(AppMessageService.ChangePasswordError);
      });
    } else this.ReactiveForm.markAllAsTouched();
  }
}
