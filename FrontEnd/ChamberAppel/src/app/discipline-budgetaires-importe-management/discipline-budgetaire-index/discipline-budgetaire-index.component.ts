import { ImportService } from './../../generatedapis/services/ImportService';
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
import { Const } from 'src/app/Helpers/Const';
import { GenerateExcelFileService } from 'src/app/Helpers/generate-excel-file.service';
import { ButtonStyle } from 'src/app/shared/button-style';
import { environment } from 'src/environments/environment';

@Component({
  selector: 'app-discipline-budgetaire-index',
  templateUrl: './discipline-budgetaire-index.component.html',
  styleUrls: ['./discipline-budgetaire-index.component.scss'],
})
export class DisciplineBudgetaireIndexComponent implements OnInit {
  public ReturnButtonStyle = ButtonStyle.secondary;
  public ExempleButtonStyle = ButtonStyle.success;
  public stepper!: Stepper;
  public ValidationPartIsDisabled = true;
  public FileType!: string;

  constructor(
    private http: HttpClient,
    private _notify: AppMessageService,
    private _loader: NgxSpinnerService,
    private location: Location,
    private _router: Router
  ) { }

  ngOnInit(): void {
    const stepperElement = document.querySelector('#stepperDiscipline');
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
        { fileType: EnumFileType.DISCIPLINE_BUDGETAIRE },
        {
          headers: headers,
          responseType: 'blob' as 'json',
        }
      )
      .subscribe((result: any) => {
        GenerateExcelFileService.GenerateExcel(
          result,
          Const.List_Discipline_Budgeitaires_With_Errors
        );
      });
  }

  Confirmer() {
    this._loader.show();
    ImportService.postApiImportFusionner(EnumFileType.DISCIPLINE_BUDGETAIRE)
      .then((res: BooleanApiResponse) => {
        if (res.statusCode == HttpStatusCode.OK) {
          this._notify.Success(AppMessageService.MergeFileSuccess);
          this._router.navigate(['/discipline-budgetaires']);
        }
      })
      .catch(() => this._notify.Success(AppMessageService.MergeFileError))
      .finally(() => this._loader.hide());
  }
}
