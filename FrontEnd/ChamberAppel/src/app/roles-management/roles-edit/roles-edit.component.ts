import { Role } from 'src/app/generatedapis/models/Role';
import { RolesService } from '../../generatedapis/services/RolesService';
import { Component } from '@angular/core';
import { Router } from '@angular/router';
import { AppMessageService } from 'src/app/app-message.service';

@Component({
  selector: 'app-roles-edit',
  templateUrl: './roles-edit.component.html',
  styleUrls: ['./roles-edit.component.scss'],
})
export class RolesEditComponent {
  constructor(
    private _notify: AppMessageService,
    private _router: Router,
  ) { }

  OnSave(data: Role) {
    RolesService.putApiRolesUpdateAsync(data)
      .then(() => {
        this._notify.Success(AppMessageService.Edit);
        this._router.navigate(['/roles']);
      })
      .catch(() => {
        this._notify.Error(AppMessageService.ErrorAddEdit);
      });
  }
}
