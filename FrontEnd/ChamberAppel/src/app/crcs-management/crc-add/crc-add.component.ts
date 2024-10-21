import { Component } from '@angular/core';
import { Router } from '@angular/router';
import { AppMessageService } from 'src/app/app-message.service';
import { CRC } from 'src/app/generatedapis/models/CRC';
import { CrCsService } from 'src/app/generatedapis/services/CrCsService';

@Component({
  selector: 'app-crc-add',
  templateUrl: './crc-add.component.html',
  styleUrls: ['./crc-add.component.scss']
})
export class CrcAddComponent {
  constructor(
    private _notify: AppMessageService,
    private _router: Router,
  ) { }

  OnSave(data: CRC) {
    CrCsService.postApiCrCsCreateAsync(data)
      .then(() => {
        this._notify.Success(AppMessageService.Add);
        this._router.navigate(['/crcs']);
      })
      .catch(() => {
        this._notify.Error(AppMessageService.ErrorAddEdit);
      });
  }
}
