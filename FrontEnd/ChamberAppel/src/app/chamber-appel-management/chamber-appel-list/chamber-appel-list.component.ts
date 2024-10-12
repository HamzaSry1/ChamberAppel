import { ChamberAppelService } from './../../generatedapis/services/ChamberAppelService';
import { DtoFiltreChamberAppeleDatatableRequest } from './../../generatedapis/models/DtoFiltreChamberAppeleDatatableRequest';
import { ChamberAppele } from './../../generatedapis/models/ChamberAppele';
import { Component, OnInit } from '@angular/core';
import { fadeInOnEnterAnimation, fadeOutOnLeaveAnimation } from 'angular-animations';
import { ButtonStyle } from 'src/app/shared/button-style';
import { FilterSaver } from 'src/app/Helpers/FilterSaver';
import { environment } from 'src/environments/environment';
import { CRC } from 'src/app/generatedapis/models/CRC';
import { AuthService } from 'src/app/auth/auth.service';
import { NgxSpinnerService } from 'ngx-spinner';
import { AppMessageService } from 'src/app/app-message.service';
import { HttpClient, HttpHeaders } from '@angular/common/http';
import { CRCListApiResponse } from 'src/app/generatedapis/models/CRCListApiResponse';
import { CrCsService } from 'src/app/generatedapis/services/CrCsService';
import { FormControl, FormGroup } from '@angular/forms';
import { ChamberAppeleDatatableResponse } from 'src/app/generatedapis/models/ChamberAppeleDatatableResponse';
import { GenerateExcelFileService } from 'src/app/Helpers/generate-excel-file.service';
import { Const } from 'src/app/Helpers/Const';

@Component({
  selector: 'app-chamber-appel-list',
  templateUrl: './chamber-appel-list.component.html',
  styleUrls: ['./chamber-appel-list.component.scss'],
  animations: [fadeInOnEnterAnimation(), fadeOutOnLeaveAnimation()],
})
export class ChamberAppelListComponent implements OnInit {
  public CreateButtonStyle = ButtonStyle.primary;
  public DetailButtonStyle = ButtonStyle.secondary;
  public DeleteButtonStyle = ButtonStyle.danger;
  public UpdateButtonStyle = ButtonStyle.success;
  public ExporterButtonStyle = ButtonStyle.secondary;
  public ImporterButtonStyle = ButtonStyle.success;
  public SearchButtonStyle = ButtonStyle.primary_block;

  public Data!: ChamberAppele[];
  public pageNumber = 1;
  public orderBy = 'Numero_Dossier';
  public orderByDirection = 'desc';
  public RecordTotal = 0;
  public RecordFiltred = 0;
  public DataTableRequest!: DtoFiltreChamberAppeleDatatableRequest;
  public filterSaver!: FilterSaver;
  public pageStatus: 'loading' | 'loaded' | 'error' | 'noData' = 'loading';
  public pageSize = environment.pageSize;
  public selectionPageSize: boolean = false;
  public showDetailsState: string = 'hidden';
  public showDetails: boolean = false;
  public CRCs!: CRC[];
  public DefaultSelectOption !: string;

  constructor(
    private authService: AuthService,
    private _loader: NgxSpinnerService,
    private _notify: AppMessageService,
    private http: HttpClient
  ) { }

  ngOnInit(): void {
    this.DefaultSelectOption = this._notify.DefaultSelectOption;

    this.filterSaver = new FilterSaver(
      this.FilterForm,
      'ChamberAppele-list-filters'
    );
    this.filterSaver.saveFilters();
    this.LoadCRC();
    this.LoadData();
    if (localStorage.getItem('ChamberAppele-list-details') == 'true') {
      this.showDetails = true;
    } else {
      this.showDetails = false;
    }
    this.showDetailsState = this.showDetails ? 'visible' : 'hidden';
  }

  LoadCRC() {
    CrCsService.getApiCrCsGetAllAsync().then((res: CRCListApiResponse) => {
      this.CRCs = res.data ?? [];
    });
  }

  resetPagination() {
    this.pageNumber = 1;
    this.pageSize = environment.pageSize;
    this.orderBy = 'Numero_Dossier';
    this.orderByDirection = 'desc';
  }

  ApplyFilter() {
    this.resetPagination();
    this.filterSaver.saveFilters();
    this.LoadData();
  }

  resetForm() {
    this.resetPagination();
    this.filterSaver.clearFilters();
    this.FilterForm.reset();
    this.LoadData();
  }

  toggleShowDetails() {
    this.showDetails = !this.showDetails;
    this.showDetailsState = this.showDetails ? 'visible' : 'hidden';
    localStorage.setItem(
      'DisciplineBudgetaires-list-details',
      this.showDetails.toString()
    );
  }

  FilterForm = new FormGroup({
    motsCle: new FormControl(),
    appelant: new FormControl(),
    centre_Comptable: new FormControl(),
    emis_En_Date_Du: new FormControl(),
    idCRC: new FormControl(),
    numero_Dossier: new FormControl(),
    exercice_fiscal: new FormControl(),
    numero_Jugement_Faisant_Objet_De_Appel: new FormControl(),
  });

  LoadData() {
    this.pageStatus = 'loading';
    this._loader.show();
    this.DataTableRequest = {
      filtre: {
        motsCle: this.FilterForm.getRawValue().motsCle,
        appelant: this.FilterForm.getRawValue().appelant,
        centre_Comptable: this.FilterForm.getRawValue().centre_Comptable,
        emis_En_Date_Du: this.FilterForm.getRawValue().emis_En_Date_Du,
        idCRC: this.FilterForm.getRawValue().idCRC,
        numero_Dossier: this.FilterForm.getRawValue().numero_Dossier,
        exercice_fiscal : this.FilterForm.getRawValue().exercice_fiscal,
        numero_Jugement_Faisant_Objet_De_Appel : this.FilterForm.getRawValue().numero_Jugement_Faisant_Objet_De_Appel,

      },
      pagination: {
        pageNumber: this.pageNumber,
        pageSize: this.pageSize,
        orderBy: this.orderBy,
        orderByDirection: this.orderByDirection,
      },
    };
    ChamberAppelService.postApiChamberAppelGetAllFiltredAsync(
      this.DataTableRequest
    )
      .then((result: ChamberAppeleDatatableResponse) => {
        this.Data = result.data ?? [];
        this.RecordFiltred = result.recordFiltred ?? 0;
        this.RecordTotal = result.recordTotal ?? 0;
        /* set page status */
        this.pageStatus = this.Data.length > 0 ? 'loaded' : 'noData';
      })
      .catch(() => {
        this._notify.Error(AppMessageService.ErrorLoadingListe);
        this.pageStatus = 'error';
      })
      .finally(() => this._loader.hide());
  }

  Exporter() {
    if (this.Data.length != 0) {
      this._loader.show();
      const headers = new HttpHeaders().set(
        'Authorization',
        'Bearer ' + localStorage.getItem('token')
      );
      this.http
        .post(
          environment.apiUrl + '/api/ChamberAppel/ExporterAsync',
          (this.DataTableRequest.filtre = {
            motsCle: this.FilterForm.getRawValue().motsCle,
            appelant: this.FilterForm.getRawValue().appelant,
            centre_Comptable: this.FilterForm.getRawValue().centre_Comptable,
            emis_En_Date_Du: this.FilterForm.getRawValue().emis_En_Date_Du,
            idCRC: this.FilterForm.getRawValue().idCRC,
            numero_Dossier: this.FilterForm.getRawValue().numero_Dossier,
            exercice_fiscal : this.FilterForm.getRawValue().exercice_fiscal,
            numero_Jugement_Faisant_Objet_De_Appel: this.FilterForm.getRawValue().numero_Jugement_Faisant_Objet_De_Appel,
          }),
          {
            headers: headers,
            responseType: 'blob' as 'json',
          }
        )
        .subscribe((result: any) => {
          GenerateExcelFileService.GenerateExcel(
            result,
            Const.List_Chambers_Appel
          );
          this._loader.hide();
        });
    }
  }

  OnPageNumberChange(event: number) {
    this.pageNumber = event;
    this.LoadData();
  }

  OnPageSizeChange(event: number) {
    if (this.selectionPageSize) {
      this.pageSize = event;
      this.LoadData();
    }
  }

  OnSortChange(event: any) {
    this.orderBy = event.active;
    this.orderByDirection = event.direction;
    this.LoadData();
  }
}
