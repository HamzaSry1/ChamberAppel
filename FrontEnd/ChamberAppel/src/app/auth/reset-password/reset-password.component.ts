import { Component } from '@angular/core';
import { ActivatedRoute, Router } from '@angular/router';
import {
  AbstractControl,
  FormControl,
  FormGroup,
  ValidationErrors,
  Validators,
} from '@angular/forms';
import { UtilisateursService } from '../../generatedapis/services/UtilisateursService';
import { BooleanApiResponse } from '../../generatedapis/models/BooleanApiResponse';
import { AppMessageService } from '../../app-message.service';
import { Const } from '../../Helpers/Const';

@Component({
  selector: 'app-reset-password',
  templateUrl: './reset-password.component.html',
  styleUrls: ['./reset-password.component.scss'],
})
export class ResetPasswordComponent {
  tokenResetPassword!: string;
  public validationMessages: ValidationErrors = Const.ValidationMessages;
  ReactiveForm = new FormGroup({
    newPassword: new FormControl('', [Validators.required]),
    confirmnewpassword: new FormControl('', [
      Validators.required,
      this.passwordMatchValidator,
    ]),
  });

  constructor(
    private _activeRoute: ActivatedRoute,
    private _router: Router,
    private _notify: AppMessageService
  ) {
    this.tokenResetPassword = this._activeRoute.snapshot.params['token'];
  }

  passwordMatchValidator(control: AbstractControl): ValidationErrors | null {
    const password = control.get('newPassword');
    const confirmPassword = control.get('confirmnewpassword');

    if (
      password &&
      confirmPassword &&
      password.value !== confirmPassword.value
    ) {
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

      UtilisateursService.postApiUtilisateursResetPasswordConfirmationAsync(
        ResetPasswordRequest
      )
        .then((result: BooleanApiResponse) => {
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
