import { Component } from '@angular/core';
import { Router } from '@angular/router';
import { AppMessageService } from 'src/app/app-message.service';
import { RequeteAppel } from 'src/app/generatedapis/models/RequeteAppel';
import { RequetesAppelService } from 'src/app/generatedapis/services/RequetesAppelService';

@Component({
  selector: 'app-chamber-appel-edit',
  templateUrl: './chamber-appel-edit.component.html',
  styleUrls: ['./chamber-appel-edit.component.scss']
})
export class ChamberAppelEditComponent {
  constructor(
    private _notify: AppMessageService,
    private _router: Router,
  ) { }

  OnSave(data: RequeteAppel) {
    RequetesAppelService.putApiRequetesAppelUpdateAsync(data)
      .then(() => {
        this._notify.Success(AppMessageService.Edit);
        this._router.navigate(['/requetes-appel']);
      })
      .catch(() => {
        this._notify.Error(AppMessageService.ErrorAddEdit);
      });
  }
}
