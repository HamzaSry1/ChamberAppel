import { HttpClient } from '@angular/common/http';
import { Component, EventEmitter, OnInit, Output } from '@angular/core';
import { NgxSpinnerService } from 'ngx-spinner';
import { AppMessageService } from 'src/app/app-message.service';
import { BooleanApiResponse } from 'src/app/generatedapis/models/BooleanApiResponse';
import { DtoPagination } from 'src/app/generatedapis/models/DtoPagination';
import { EnumFileType } from 'src/app/generatedapis/models/EnumFileType';
import { RequeteAppelTemp } from 'src/app/generatedapis/models/RequeteAppelTemp';
import { RequeteAppelTempDatatableResponse } from 'src/app/generatedapis/models/RequeteAppelTempDatatableResponse';
import { ImportService } from 'src/app/generatedapis/services/ImportService';
import { environment } from 'src/environments/environment';

@Component({
  selector: 'app-requete-validation',
  templateUrl: './requete-validation.component.html',
  styleUrls: ['./requete-validation.component.scss'],
})
export class RequeteValidationComponent implements OnInit {
  @Output() BtnPrevious: EventEmitter<any> = new EventEmitter();
  @Output() BtnConfirmer: EventEmitter<any> = new EventEmitter();
  @Output() BtnDownloadListWithErrors: EventEmitter<any> = new EventEmitter();

  public Data!: RequeteAppelTemp[];
  public pagination!: DtoPagination;
  public pageNumber = 1;
  public orderBy = 'numero_Dossier';
  public orderByDirection = 'desc';
  public RecordTotal = 0;
  public RecordFiltred = 0;
  public pageStatus: 'loading' | 'loaded' | 'error' | 'noData' = 'loading';
  public pageSize = 5;
  public selectionPageSize: boolean = false;
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
    ImportService.postApiImportAnalyse(EnumFileType.REQUETE_APPELE).then(
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
    this._loader.show();

    this.pagination = {
      pageNumber: this.pageNumber,
      pageSize: this.pageSize,
      orderBy: this.orderBy,
      orderByDirection: this.orderByDirection,
    };

    ImportService.postApiImportGetAllRequeteAppelValide(this.pagination)
      .then((res: RequeteAppelTempDatatableResponse) => {
        this.Data = res.data ?? [];
        this.RecordTotal = res.recordTotal ?? 0;
        this.RecordFiltred = res.recordFiltred ?? 0;
      })
      .catch(() => {
        this._notify.Error(AppMessageService.ErrorLoadingListe);
      })
      .finally(() => this._loader.hide());
  }

  GetAllErrorsData() {
    this._loader.show();

    this.pagination = {
      pageNumber: this.pageNumber,
      pageSize: this.pageSize,
      orderBy: this.orderBy,
      orderByDirection: this.orderByDirection,
    };

    ImportService.postApiImportGetAllRequeteAppelErrors(this.pagination)
      .then((res: RequeteAppelTempDatatableResponse) => {
        this.Data = res.data ?? [];
        this.RecordTotal = res.recordTotal ?? 0;
        this.RecordFiltred = res.recordFiltred ?? 0;
      })
      .catch(() => {
        this._notify.Error(AppMessageService.ErrorLoadingListe);
      })
      .finally(() => this._loader.hide());
  }

  DownLoadFileWithErrors() {
    this.BtnDownloadListWithErrors.emit();
  }

  Previous() {
    this.BtnPrevious.emit();
  }

  Confirmer() {
    this.BtnConfirmer.emit();
  }

  OnPageNumberChange(event: number) {
    this.pageNumber = event;
    this.GetAllValideData();
  }

  OnPageSizeChange(event: number) {
    if (this.selectionPageSize) {
      this.pageSize = event;
      this.GetAllValideData();
    }
  }

  OnSortChange(event: any) {
    this.orderBy = event.active;
    this.orderByDirection = event.direction;
    this.GetAllValideData();
  }
}
