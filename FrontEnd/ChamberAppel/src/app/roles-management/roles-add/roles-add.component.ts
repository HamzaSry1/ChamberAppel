import { Role } from '../../generatedapis/models/Role';
import { Component } from '@angular/core';
import { Router } from '@angular/router';
import { AppMessageService } from 'src/app/app-message.service';
import { RolesService } from '../../generatedapis/services/RolesService';

@Component({
  selector: 'app-roles-add',
  templateUrl: './roles-add.component.html',
  styleUrls: ['./roles-add.component.scss'],
})
export class RolesAddComponent {
  constructor(
    private _notify: AppMessageService,
    private _router: Router,
  ) { }

  OnSave(data: Role) {
    RolesService.postApiRolesCreateAsync(data)
      .then(() => {
        this._notify.Success(AppMessageService.Add);
        this._router.navigate(['/roles']);
      })
      .catch(() => {
        this._notify.Error(AppMessageService.ErrorAddEdit);
      });
  }
}
