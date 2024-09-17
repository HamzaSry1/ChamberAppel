import { Component } from '@angular/core';
import { FormControl, FormGroup, Validators } from '@angular/forms';
import { Router } from '@angular/router';
import { AppMessageService } from 'src/app/app-message.service';
import { Permission } from '../../generatedapis/models/Permission';
import { PermissionsService } from '../../generatedapis/services/PermissionsService';
import { Guid } from 'guid-typescript';
import { AuthService } from 'src/app/auth/auth.service';
import { Const } from 'src/app/Helpers/Const';
import { Features } from 'src/app/auth/permissions';

@Component({
  selector: 'app-permissions-add',
  templateUrl: './permissions-add.component.html',
  styleUrls: ['./permissions-add.component.scss'],
})
export class PermissionsAddComponent {
  public features = {
    Create: this.authService.checkPermission(Features.Permissions.Create),
  };
  public validationMessages: any = Const.ValidationMessages;
  constructor(
    private _notify: AppMessageService,
    private _router: Router,
    private authService: AuthService,
  ) { }

  Reactiveform = new FormGroup({
    id: new FormControl({
      value: Guid.EMPTY,
      disabled: true,
    }),
    label: new FormControl('', Validators.required),
    code: new FormControl('', Validators.required),
    groupe: new FormControl('', Validators.required),
    description: new FormControl(''),
    isActive: new FormControl(false),
  });

  Save() {
    if (this.Reactiveform.valid) {
      PermissionsService.postApiPermissionsCreateAsync(this.Reactiveform.getRawValue() as any)
        .then(() => {
          this._notify.Success(AppMessageService.Add);
          this._router.navigate(['/permissions']);
        })
        .catch(() => {
          this._notify.Error(AppMessageService.ErrorAddEdit);
        });
    }
  }
}
