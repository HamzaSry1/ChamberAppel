import { Component } from '@angular/core';
import { Router } from '@angular/router';
import { ConfirmBoxEvokeService } from '@costlydeveloper/ngx-awesome-popup';
import { AppMessageService } from 'src/app/app-message.service';
import { CRC } from 'src/app/generatedapis/models/CRC';
import { CrCsService } from 'src/app/generatedapis/services/CrCsService';

@Component({
  selector: 'app-crc-delete',
  templateUrl: './crc-delete.component.html',
  styleUrls: ['./crc-delete.component.scss']
})
export class CrcDeleteComponent {
  constructor(
    private _notify: AppMessageService,
    private _notifyConfirm: ConfirmBoxEvokeService,
    private _router: Router,
  ) { }

  ConfirmDelete(data: CRC) {
    this._notifyConfirm.danger('Supprimer', 'Souhaitez-vous supprimer ' + data.label + ' définitivement ?', 'Supprimer', 'Fermer').subscribe((resp) => {
      const ClickedButton = resp.clickedButtonID;
      if (ClickedButton == 'supprimer') {
        this.Delete(data.id as string);
      }
    });
  }

  Delete(id: string) {
    CrCsService.deleteApiCrCsDeleteAsync(id)
      .then(() => {
        this._notify.Success(AppMessageService.Delete);
        this._router.navigate(['/crcs']);
      })
      .catch(() => this._notify.Error(AppMessageService.ErrorDelete));
  }
}
