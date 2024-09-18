import { Component } from '@angular/core';
import { Router } from '@angular/router';
import { ConfirmBoxEvokeService } from '@costlydeveloper/ngx-awesome-popup';
import { AppMessageService } from 'src/app/app-message.service';
import { PermissionsService } from '../../generatedapis/services/PermissionsService';
import { Permission } from 'src/app/generatedapis/models/Permission';

@Component({
  selector: 'app-permissions-delete',
  templateUrl: './permissions-delete.component.html',
  styleUrls: ['./permissions-delete.component.scss'],
})
export class PermissionsDeleteComponent {
  constructor(
    private _notify: AppMessageService,
    private _notifyConfirm: ConfirmBoxEvokeService,
    private _router: Router,
  ) { }

  ConfirmDelete(data: Permission) {
    this._notifyConfirm.danger('Supprimer', 'Souhaitez-vous supprimer ' + data.label + ' définitivement ?', 'Supprimer', 'Fermer').subscribe((resp) => {
      const ClickedButton = resp.clickedButtonID;
      if (ClickedButton == 'supprimer') {
        this.Delete(data.id as string);
      }
    });
  }

  Delete(id: string) {
    PermissionsService.deleteApiPermissionsDeleteAsync(id)
      .then(() => {
        this._notify.Success(AppMessageService.Delete);
        this._router.navigate(['/permissions']);
      })
      .catch(() => this._notify.Error(AppMessageService.ErrorDelete));
  }
}
