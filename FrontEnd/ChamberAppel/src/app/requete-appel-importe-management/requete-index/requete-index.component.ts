import { HttpClient, HttpHeaders } from '@angular/common/http';
import { Component, OnInit } from '@angular/core';
import { Router } from '@angular/router';
import Stepper from 'bs-stepper';
import { Location } from '@angular/common';
import { NgxSpinnerService } from 'ngx-spinner';
import { AppMessageService } from 'src/app/app-message.service';
import { BooleanApiResponse } from 'src/app/generatedapis/models/BooleanApiResponse';
import { EnumFileType } from 'src/app/generatedapis/models/EnumFileType';
import { HttpStatusCode } from 'src/app/generatedapis/models/HttpStatusCode';
import { ImportService } from 'src/app/generatedapis/services/ImportService';
import { Const } from 'src/app/Helpers/Const';
import { GenerateExcelFileService } from 'src/app/Helpers/generate-excel-file.service';
import { ButtonStyle } from 'src/app/shared/button-style';
import { environment } from 'src/environments/environment';

@Component({
  selector: 'app-requete-index',
  templateUrl: './requete-index.component.html',
  styleUrls: ['./requete-index.component.scss'],
})
export class RequeteIndexComponent implements OnInit {
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
    private location: Location,
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

  Retour() {
    this.location.back();
  }

  DownloadListWithErrors() {
    const headers = new HttpHeaders().set(
      'Authorization',
      'Bearer ' + localStorage.getItem('token')
    );
    this.http
      .post(
        environment.apiUrl + '/api/Import/Exporter',
        { fileType: EnumFileType.REQUETE_APPELE },
        {
          headers: headers,
          responseType: 'blob' as 'json',
        }
      )
      .subscribe((result: any) => {
        GenerateExcelFileService.GenerateExcel(
          result,
          Const.List_Requete_appel_With_Errors
        );
      });
  }

  Confirmer() {
    this._loader.show();
    ImportService.postApiImportFusionner(EnumFileType.REQUETE_APPELE)
      .then((res: BooleanApiResponse) => {
        if (res.statusCode == HttpStatusCode.OK) {
          this._notify.Success(AppMessageService.MergeFileSuccess);
          this._router.navigate(['/requetes-appel']);
        }
      })
      .catch(() => this._notify.Success(AppMessageService.MergeFileError))
      .finally(() => this._loader.hide());
  }
}
