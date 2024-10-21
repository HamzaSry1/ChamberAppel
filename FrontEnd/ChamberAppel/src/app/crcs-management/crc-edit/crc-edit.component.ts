import { Component } from '@angular/core';
import { Router } from '@angular/router';
import { AppMessageService } from 'src/app/app-message.service';
import { CRC } from 'src/app/generatedapis/models/CRC';
import { CrCsService } from 'src/app/generatedapis/services/CrCsService';

@Component({
  selector: 'app-crc-edit',
  templateUrl: './crc-edit.component.html',
  styleUrls: ['./crc-edit.component.scss']
})
export class CrcEditComponent {
  constructor(
    private _notify: AppMessageService,
    private _router: Router,
  ) { }

  OnSave(data: CRC) {
    CrCsService.putApiCrCsUpdateAsync(data)
      .then(() => {
        this._notify.Success(AppMessageService.Edit);
        this._router.navigate(['/crcs']);
      })
      .catch(() => {
        this._notify.Error(AppMessageService.ErrorAddEdit);
      });
  }
}
