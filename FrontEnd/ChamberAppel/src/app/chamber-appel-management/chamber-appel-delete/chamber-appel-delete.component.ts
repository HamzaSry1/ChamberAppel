import { Component } from '@angular/core';
import { Router } from '@angular/router';
import { ConfirmBoxEvokeService } from '@costlydeveloper/ngx-awesome-popup';
import { AppMessageService } from 'src/app/app-message.service';
import { ChamberAppele } from 'src/app/generatedapis/models/ChamberAppele';
import { ChamberAppelService } from 'src/app/generatedapis/services/ChamberAppelService';

@Component({
  selector: 'app-chamber-appel-delete',
  templateUrl: './chamber-appel-delete.component.html',
  styleUrls: ['./chamber-appel-delete.component.scss']
})
export class ChamberAppelDeleteComponent {
  constructor(
    private _notify: AppMessageService,
    private _notifyConfirm: ConfirmBoxEvokeService,
    private _router: Router
  ) { }

  ConfirmDelete(data: ChamberAppele) {
    this._notifyConfirm
      .danger(
        'Supprimer',
        'Souhaitez-vous supprimer ' +
        data.numero_Dossier +
        ' définitivement ?',
        'Supprimer',
        'Fermer'
      )
      .subscribe((resp) => {
        const ClickedButton = resp.clickedButtonID;
        if (ClickedButton == 'supprimer') {
          this.Delete(data.id as string);
        }
      });
  }

  Delete(id: string) {
    ChamberAppelService.deleteApiChamberAppelDeleteAsync(id)
      .then(() => {
        this._notify.Success(AppMessageService.Delete);
        this._router.navigate(['/chambers-appel']);
      })
      .catch(() => this._notify.Error(AppMessageService.ErrorDelete));
  }
}
