import { Component } from '@angular/core';
import { Router } from '@angular/router';
import { AppMessageService } from 'src/app/app-message.service';
import { ChamberAppele } from 'src/app/generatedapis/models/ChamberAppele';
import { ChamberAppelService } from 'src/app/generatedapis/services/ChamberAppelService';

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

  OnSave(data: ChamberAppele) {
    ChamberAppelService.putApiChamberAppelUpdateAsync(data)
      .then(() => {
        this._notify.Success(AppMessageService.Edit);
        this._router.navigate(['/chambers-appel']);
      })
      .catch(() => {
        this._notify.Error(AppMessageService.ErrorAddEdit);
      });
  }
}
