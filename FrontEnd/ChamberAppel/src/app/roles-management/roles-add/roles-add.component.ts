import { Role } from '../../generatedapis/models/Role';
import { Component } from '@angular/core';
import { FormControl, FormGroup, Validators } from '@angular/forms';
import { Router } from '@angular/router';
import { AppMessageService } from 'src/app/app-message.service';
import { RolesService } from '../../generatedapis/services/RolesService';
import { Guid } from 'guid-typescript';
import { AuthService } from 'src/app/auth/auth.service';
import { Const } from 'src/app/Helpers/Const';
import { Features } from 'src/app/auth/permissions';

@Component({
  selector: 'app-roles-add',
  templateUrl: './roles-add.component.html',
  styleUrls: ['./roles-add.component.scss'],
})
export class RolesAddComponent {
  public features = {
    Create: this.authService.checkPermission(Features.Roles.Add),
  };
  public validationMessages: any = Const.ValidationMessages;
  constructor(
    private _notify: AppMessageService,
    private _router: Router,
    private authService: AuthService,
  ) {}

  Reactiveform = new FormGroup({
    id: new FormControl({
      value: Guid.EMPTY,
      disabled: true,
    }),
    label: new FormControl('', Validators.required),
    code: new FormControl('', Validators.required),
    isArchive: new FormControl(false),
  });

  Save() {
    if (this.Reactiveform.valid) {
      RolesService.postApiRolesCreateAsync(this.Reactiveform.getRawValue() as Role)
        .then(() => {
          this._notify.Success(AppMessageService.Add);
          this._router.navigate(['/roles']);
        })
        .catch(() => {
          this._notify.Error(AppMessageService.ErrorAddEdit);
        });
    }
  }
}
