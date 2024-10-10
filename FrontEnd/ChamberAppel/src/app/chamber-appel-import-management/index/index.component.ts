import { Component, OnInit } from '@angular/core';
import { ButtonStyle } from 'src/app/shared/button-style';
import { HttpClient, HttpHeaders } from '@angular/common/http';
import Stepper from 'bs-stepper';
import { environment } from 'src/environments/environment';
import { GenerateExcelFileService } from 'src/app/Helpers/generate-excel-file.service';
import { Const } from 'src/app/Helpers/Const';
import { BooleanApiResponse } from 'src/app/generatedapis/models/BooleanApiResponse';
import { HttpStatusCode } from 'src/app/generatedapis/models/HttpStatusCode';
import { ActivatedRoute, Router } from '@angular/router';
import { AppMessageService } from 'src/app/app-message.service';
import { NgxSpinnerService } from 'ngx-spinner';
import { ChamberAppelImportManagementModule } from '../chamber-appel-import-management.module';
import { ImportService } from 'src/app/generatedapis/services/ImportService';
import { EnumFileType } from 'src/app/generatedapis/models/EnumFileType';
@Component({
  selector: 'app-index',
  templateUrl: './index.component.html',
  styleUrls: ['./index.component.scss'],
})
export class IndexComponent implements OnInit {
  public ReturnButtonStyle = ButtonStyle.secondary;
  public ExempleButtonStyle = ButtonStyle.success;
  public stepper!: Stepper;
  public ValidationPartIsDisabled = true;
  public MargePartIsDisabled = true;
  public FileType!: string;

  constructor(
    private http: HttpClient,
    private _notify: AppMessageService,
    private _loader: NgxSpinnerService,
    private _router: Router
  ) {}

  ngOnInit(): void {
    const stepperElement = document.querySelector('#stepper1');
    if (stepperElement !== null) {
      this.stepper = new Stepper(stepperElement, {
        linear: false,
        animation: true,
      });
    }
  }

  Previous() {
    this.stepper.previous();
  }

  GoToValidation(event: any) {
    if (event == true) {
      this.ValidationPartIsDisabled = false;
      this.stepper.next();
    }
  }

  GoToMarge() {
    this.MargePartIsDisabled = false;
    this.stepper.next();
  }

  DownloadListWithErrors() {
    const headers = new HttpHeaders().set(
      'Authorization',
      'Bearer ' + localStorage.getItem('token')
    );
    this.http
      .post(environment.apiUrl + '/api/Import/Exporter', EnumFileType._1, {
        headers: headers,
        responseType: 'blob' as 'json',
      })
      .subscribe((result: any) => {
        GenerateExcelFileService.GenerateExcel(result, Const.List_Crcs);
      });
  }

  Confirmer() {
    this._loader.show();
    ImportService.postApiImportFusionner(EnumFileType._1)
      .then((res: BooleanApiResponse) => {
        if (res.statusCode == HttpStatusCode._200) {
          this._notify.Success(AppMessageService.MergeFileSuccess);
          this._router.navigate(['/chamber-appel']);
        }
      })
      .catch(() => this._notify.Success(AppMessageService.MergeFileError))
      .finally(() => this._loader.hide());
  }
}
