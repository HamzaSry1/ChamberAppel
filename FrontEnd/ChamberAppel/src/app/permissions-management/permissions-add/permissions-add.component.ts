import { Component } from '@angular/core';
import { Router } from '@angular/router';
import { AppMessageService } from 'src/app/app-message.service';
import { PermissionsService } from '../../generatedapis/services/PermissionsService';
import { Permission } from 'src/app/generatedapis/models/Permission';

@Component({
  selector: 'app-permissions-add',
  templateUrl: './permissions-add.component.html',
  styleUrls: ['./permissions-add.component.scss'],
})
export class PermissionsAddComponent {
  constructor(
    private _notify: AppMessageService,
    private _router: Router,
  ) { }

  OnSave(data: Permission) {
    PermissionsService.postApiPermissionsCreateAsync(data)
      .then(() => {
        this._notify.Success(AppMessageService.Add);
        this._router.navigate(['/permissions']);
      })
      .catch(() => {
        this._notify.Error(AppMessageService.ErrorAddEdit);
      });
  }
}
