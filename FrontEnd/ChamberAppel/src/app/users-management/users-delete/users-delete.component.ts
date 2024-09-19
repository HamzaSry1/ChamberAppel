import { Component } from '@angular/core';
import { Router } from '@angular/router';
import { ConfirmBoxEvokeService } from '@costlydeveloper/ngx-awesome-popup';
import { AppMessageService } from 'src/app/app-message.service';
import { DtoUtilisateur } from 'src/app/generatedapis/models/DtoUtilisateur';
import { UtilisateursService } from 'src/app/generatedapis/services/UtilisateursService';
@Component({
  selector: 'app-users-delete',
  templateUrl: './users-delete.component.html',
  styleUrls: ['./users-delete.component.scss'],
})
export class UsersDeleteComponent {
  constructor(
    private _notify: AppMessageService,
    private _notifyConfirm: ConfirmBoxEvokeService,
    private _router: Router,
  ) { }

  ConfirmDelete(data: DtoUtilisateur) {
    this._notifyConfirm.danger('Supprimer', 'Souhaitez-vous supprimer ' + data.nom + ' définitivement ?', 'Supprimer', 'Fermer').subscribe((resp) => {
      const ClickedButton = resp.clickedButtonID;
      if (ClickedButton == 'supprimer') {
        this.Delete(data.id as string);
      }
    });
  }

  Delete(id: string) {
    UtilisateursService.deleteApiUtilisateursDeleteAsync(id)
      .then(() => {
        this._notify.Success(AppMessageService.Delete);
        this._router.navigate(['/utilisateurs']);
      })
      .catch(() => this._notify.Error(AppMessageService.ErrorDelete));
  }
}
