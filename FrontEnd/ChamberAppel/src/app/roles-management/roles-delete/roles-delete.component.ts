import { Component } from '@angular/core';
import { Router } from '@angular/router';
import { ConfirmBoxEvokeService } from '@costlydeveloper/ngx-awesome-popup';
import { AppMessageService } from 'src/app/app-message.service';
import { Role } from 'src/app/generatedapis/models/Role';
import { RolesService } from 'src/app/generatedapis/services/RolesService';

@Component({
  selector: 'app-roles-delete',
  templateUrl: './roles-delete.component.html',
  styleUrls: ['./roles-delete.component.scss'],
})
export class RolesDeleteComponent {
  constructor(
    private _notify: AppMessageService,
    private _notifyConfirm: ConfirmBoxEvokeService,
    private _router: Router,
  ) { }

  ConfirmDelete(data: Role) {
    this._notifyConfirm.danger('Supprimer', 'Souhaitez-vous supprimer ' + data.label + ' définitivement ?', 'Supprimer', 'Fermer').subscribe((resp) => {
      const ClickedButton = resp.clickedButtonID;
      if (ClickedButton == 'supprimer') {
        this.Delete(data.id as string);
      }
    });
  }

  Delete(id: string) {
    RolesService.deleteApiRolesDeleteAsync(id)
      .then(() => {
        this._notify.Success(AppMessageService.Delete);
        this._router.navigate(['/roles']);
      })
      .catch(() => this._notify.Error(AppMessageService.ErrorDelete));
  }
}
