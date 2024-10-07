import { BooleanApiResponse } from 'src/app/generatedapis/models/BooleanApiResponse';
import { DisciplineBudgetairesImportService } from './../../generatedapis/services/DisciplineBudgetairesImportService';
import { Component, EventEmitter, OnInit, Output, ViewChild } from '@angular/core';
import { DisciplineBudgetaireTempDatatableResponse } from 'src/app/generatedapis/models/DisciplineBudgetaireTempDatatableResponse';
import { environment } from 'src/environments/environment';
import { DisciplineBudgetaireTemp } from 'src/app/generatedapis/models/DisciplineBudgetaireTemp';
import { NgxSpinnerService } from 'ngx-spinner';
import { AppMessageService } from 'src/app/app-message.service';
import { DtoPagination } from 'src/app/generatedapis/models/DtoPagination';
import { HttpClient, HttpHeaders } from '@angular/common/http';

@Component({
  selector: 'app-importe-validation',
  templateUrl: './importe-validation.component.html',
  styleUrls: ['./importe-validation.component.scss'],
})
export class ImporteValidationComponent implements OnInit {

  @Output() BtnNext: EventEmitter<any> = new EventEmitter();
  @Output() BtnPrevious: EventEmitter<any> = new EventEmitter();
  @Output() BtnDownloadListWithErrors: EventEmitter<any> = new EventEmitter();

  public Data!: DisciplineBudgetaireTemp[];
  public pagination!: DtoPagination;
  public pageNumber = 1;
  public orderBy = 'numero_Dossier';
  public orderByDirection = 'desc';
  public RecordTotal = 0;
  public RecordFiltred = 0;
  public pageStatus: 'loading' | 'loaded' | 'error' | 'noData' = 'loading';
  public pageSize = environment.pageSize;
  public ListHasError = false;

  constructor(
    private _loader: NgxSpinnerService,
    private http: HttpClient,
    private _notify: AppMessageService
  ) { }

  ngOnInit(): void {
    this.Analyse();
  }

  Analyse() {
    DisciplineBudgetairesImportService.postApiDisciplineBudgetairesImportAnalyse().then(
      (res: BooleanApiResponse) => {
        // the list has error
        if (res.data == true) {
          this.ListHasError = true;
          this.GetAllErrorsData();
        }
        // there is no error
        if (res.data == false) {
          this.ListHasError = false;
          this.GetAllValideData();
        }
      }
    );
  }

  GetAllValideData() {
    this.pageStatus = 'loading';
    this._loader.show();

    this.pagination = {
      pageNumber: this.pageNumber,
      pageSize: this.pageSize,
      orderBy: this.orderBy,
      orderByDirection: this.orderByDirection,
    };

    DisciplineBudgetairesImportService.postApiDisciplineBudgetairesImportGetAllValideData(
      this.pagination
    )
      .then((res: DisciplineBudgetaireTempDatatableResponse) => {
        this.Data = res.data ?? [];
        this.RecordTotal = res.recordTotal ?? 0;
        this.RecordFiltred = res.recordFiltred ?? 0;
        /* set page status */
        this.pageStatus = this.Data.length > 0 ? 'loaded' : 'noData';
      })
      .catch(() => {
        this._notify.Error(AppMessageService.ErrorLoadingListe);
        this.pageStatus = 'error';
      })
      .finally(() => this._loader.hide());
  }

  GetAllErrorsData() {
    this.pageStatus = 'loading';
    this._loader.show();

    this.pagination = {
      pageNumber: this.pageNumber,
      pageSize: this.pageSize,
      orderBy: this.orderBy,
      orderByDirection: this.orderByDirection,
    };

    DisciplineBudgetairesImportService.postApiDisciplineBudgetairesImportGetAllErrorsData(
      this.pagination
    )
      .then((res: DisciplineBudgetaireTempDatatableResponse) => {
        this.Data = res.data ?? [];
        this.RecordTotal = res.recordTotal ?? 0;
        this.RecordFiltred = res.recordFiltred ?? 0;
        /* set page status */
        this.pageStatus = this.Data.length > 0 ? 'loaded' : 'noData';
      })
      .catch(() => {
        this._notify.Error(AppMessageService.ErrorLoadingListe);
        this.pageStatus = 'error';
      })
      .finally(() => this._loader.hide());
  }

  DownLoadFileWithErrors() {
    this.BtnDownloadListWithErrors.emit();
  }

  Previous() {
    this.BtnPrevious.emit();
  }

  Next() {
    this.BtnNext.emit();
  }
}
