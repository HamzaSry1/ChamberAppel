import { Component } from '@angular/core';
import { Router } from '@angular/router';
import { ConfirmBoxEvokeService } from '@costlydeveloper/ngx-awesome-popup';
import { AppMessageService } from 'src/app/app-message.service';
import { TypeUtilisateur } from 'src/app/generatedapis/models/TypeUtilisateur';
import { TypeUtilisateursService } from 'src/app/generatedapis/services/TypeUtilisateursService';

@Component({
  selector: 'app-type-utilisateur-delete',
  templateUrl: './type-utilisateur-delete.component.html',
  styleUrls: ['./type-utilisateur-delete.component.scss']
})
export class TypeUtilisateurDeleteComponent {

  constructor(
    private _notify: AppMessageService,
    private _notifyConfirm: ConfirmBoxEvokeService,
    private _router: Router,
  ) { }

  ConfirmDelete(data: TypeUtilisateur) {
    this._notifyConfirm.danger('Supprimer', 'Souhaitez-vous supprimer ' + data.label + ' définitivement ?', 'Supprimer', 'Fermer').subscribe((resp) => {
      const ClickedButton = resp.clickedButtonID;
      if (ClickedButton == 'supprimer') {
        this.Delete(data.id as string);
      }
    });
  }

  Delete(id: string) {
    TypeUtilisateursService.deleteApiTypeUtilisateursDeleteAsync(id)
      .then(() => {
        this._notify.Success(AppMessageService.Delete);
        this._router.navigate(['/type-utilisateurs']);
      })
      .catch(() => this._notify.Error(AppMessageService.ErrorDelete));
  }
}
