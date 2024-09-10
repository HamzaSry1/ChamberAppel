import { Component } from '@angular/core';
import { ActivatedRoute, Router } from '@angular/router';
import { AppMessageService } from 'src/app/app-message.service';
import { AbstractControl, FormBuilder, FormControl, FormGroup, ValidationErrors, Validators } from '@angular/forms';
import { UtilisateursService } from 'src/app/generatedapis/services/UtilisateursService';
import { ResetPasswordConfirmationDto } from 'src/app/generatedapis/models/ResetPasswordConfirmationDto';
import { Const } from 'src/app/Helpers/Const';
import { Validator } from 'src/app/Helpers/custom-validation';
import { BooleanApiResult } from 'src/app/generatedapis/models/BooleanApiResult';

@Component({
  selector: 'app-reset-password',
  templateUrl: './reset-password.component.html',
  styleUrls: ['./reset-password.component.scss'],
})
export class ResetPasswordComponent {
  tokenResetPassword!: string;
  public validationMessages: ValidationErrors = Const.ValidationMessages;
  ReactiveForm = new FormGroup({
    newPassword: new FormControl('', [Validators.required, Validator.passwordValidator]),
    confirmnewpassword: new FormControl('', [Validators.required, this.passwordMatchValidator]),
  });

  constructor(
    private _activeRoute: ActivatedRoute,
    private _router: Router,
    private _notify: AppMessageService,
  ) {
    this.tokenResetPassword = this._activeRoute.snapshot.params['token'];
  }

  passwordMatchValidator(control: AbstractControl): ValidationErrors | null {
    const password = control.get('newPassword');
    const confirmPassword = control.get('confirmnewpassword');

    if (password && confirmPassword && password.value !== confirmPassword.value) {
      return { passwordMismatch: true };
    }

    return null;
  }
  Submit() {
    if (this.ReactiveForm.valid) {
      const ResetPasswordRequest = {
        token: this.tokenResetPassword,
        newPassword: this.ReactiveForm.getRawValue().newPassword,
      };

      UtilisateursService.postApiUtilisateursConfirmResetPassword(ResetPasswordRequest)
        .then((result: BooleanApiResult) => {
          if (result.data == true) {
            this._notify.Success(AppMessageService.ResetPassword);
            this._router.navigate(['/auth/login']);
          } else {
            this._notify.Error(AppMessageService.ResetPasswordError);
          }
        })
        .catch(() => {
          this._notify.Error(AppMessageService.ResetPasswordError);
        });
    }
  }
}
