import { Component } from '@angular/core';
import { Router } from '@angular/router';
import { AppMessageService } from 'src/app/app-message.service';
import { ChamberAppele } from 'src/app/generatedapis/models/ChamberAppele';
import { ChamberAppelService } from 'src/app/generatedapis/services/ChamberAppelService';

@Component({
  selector: 'app-chamber-appel-add',
  templateUrl: './chamber-appel-add.component.html',
  styleUrls: ['./chamber-appel-add.component.scss']
})
export class ChamberAppelAddComponent {
  constructor(private _notify: AppMessageService, private _router: Router) { }

  OnSave(data: ChamberAppele) {
    ChamberAppelService.postApiChamberAppelCreateAsync(data)
      .then(() => {
        this._notify.Success(AppMessageService.Add);
        this._router.navigate(['/chambers-appel']);
      })
      .catch(() => {
        this._notify.Error(AppMessageService.ErrorAddEdit);
      });
  }
}
