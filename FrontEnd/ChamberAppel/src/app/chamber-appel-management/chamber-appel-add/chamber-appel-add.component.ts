import { RequetesAppelService } from './../../generatedapis/services/RequetesAppelService';
import { Component } from '@angular/core';
import { Router } from '@angular/router';
import { AppMessageService } from 'src/app/app-message.service';
import { RequeteAppel } from 'src/app/generatedapis/models/RequeteAppel';

@Component({
  selector: 'app-chamber-appel-add',
  templateUrl: './chamber-appel-add.component.html',
  styleUrls: ['./chamber-appel-add.component.scss']
})
export class ChamberAppelAddComponent {
  constructor(private _notify: AppMessageService, private _router: Router) { }

  OnSave(data: RequeteAppel) {
    RequetesAppelService.postApiRequetesAppelCreateAsync(data)
      .then(() => {
        this._notify.Success(AppMessageService.Add);
        this._router.navigate(['/requetes-appel']);
      })
      .catch(() => {
        this._notify.Error(AppMessageService.ErrorAddEdit);
      });
  }
}
