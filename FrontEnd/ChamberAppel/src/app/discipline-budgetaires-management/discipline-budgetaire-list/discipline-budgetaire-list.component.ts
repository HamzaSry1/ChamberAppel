import { CrCsService } from './../../generatedapis/services/CrCsService';
import { HttpClient, HttpHeaders } from '@angular/common/http';
import { Component } from '@angular/core';
import { FormControl, FormGroup } from '@angular/forms';
import { fadeInOnEnterAnimation, fadeOutOnLeaveAnimation } from 'angular-animations';
import { NgxSpinnerService } from 'ngx-spinner';
import { AppMessageService } from 'src/app/app-message.service';
import { AuthService } from 'src/app/auth/auth.service';
import { CRC } from 'src/app/generatedapis/models/CRC';
import { CRCListApiResponse } from 'src/app/generatedapis/models/CRCListApiResponse';
import { DisciplineBudgetaire } from 'src/app/generatedapis/models/DisciplineBudgetaire';
import { DisciplineBudgetaireDatatableResponse } from 'src/app/generatedapis/models/DisciplineBudgetaireDatatableResponse';
import { DtoFiltreDisciplineBudgetaireDatatableRequest } from 'src/app/generatedapis/models/DtoFiltreDisciplineBudgetaireDatatableRequest';
import { DisciplineBudgetairesService } from 'src/app/generatedapis/services/DisciplineBudgetairesService';
import { Const } from 'src/app/Helpers/Const';
import { FilterSaver } from 'src/app/Helpers/FilterSaver';
import { GenerateExcelFileService } from 'src/app/Helpers/generate-excel-file.service';
import { ButtonStyle } from 'src/app/shared/button-style';
import { environment } from 'src/environments/environment';

@Component({
  selector: 'app-discipline-budgetaire-list',
  templateUrl: './discipline-budgetaire-list.component.html',
  styleUrls: ['./discipline-budgetaire-list.component.scss'],
  animations: [fadeInOnEnterAnimation(), fadeOutOnLeaveAnimation()],
})
export class DisciplineBudgetaireListComponent {
  public CreateButtonStyle = ButtonStyle.primary;
  public DetailButtonStyle = ButtonStyle.secondary;
  public DeleteButtonStyle = ButtonStyle.danger;
  public UpdateButtonStyle = ButtonStyle.success;
  public ExporterButtonStyle = ButtonStyle.secondary;
  public SearchButtonStyle = ButtonStyle.primary_block;

  public Data!: DisciplineBudgetaire[];
  public pageNumber = 1;
  public orderBy = 'label';
  public orderByDirection = 'desc';
  public RecordTotal = 0;
  public RecordFiltred = 0;
  public DataTableRequest!: DtoFiltreDisciplineBudgetaireDatatableRequest;
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
      'DisciplineBudgetaires-list-filters'
    );
    this.filterSaver.saveFilters();
    this.LoadCRC();
    this.LoadData();
    if (localStorage.getItem('DisciplineBudgetaires-list-details') == 'true') {
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
    this.orderBy = 'label';
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
    conseiller_Rapporteur: new FormControl(),
    emis_En_Date_Du: new FormControl(),
    idCRC: new FormControl(),
    numero_Dossier: new FormControl(),
  });

  LoadData() {
    this.pageStatus = 'loading';
    this._loader.show();
    this.DataTableRequest = {
      filtre: {
        motsCle: this.FilterForm.getRawValue().motsCle,
        appelant: this.FilterForm.getRawValue().appelant,
        centre_Comptable: this.FilterForm.getRawValue().centre_Comptable,
        conseiller_Rapporteur:
          this.FilterForm.getRawValue().conseiller_Rapporteur,
        emis_En_Date_Du: this.FilterForm.getRawValue().emis_En_Date_Du,
        idCRC: this.FilterForm.getRawValue().idCRC,
        numero_Dossier: this.FilterForm.getRawValue().numero_Dossier,
      },
      pagination: {
        pageNumber: this.pageNumber,
        pageSize: this.pageSize,
        orderBy: this.orderBy,
        orderByDirection: this.orderByDirection,
      },
    };
    DisciplineBudgetairesService.postApiDisciplineBudgetairesGetAllFiltredAsync(
      this.DataTableRequest
    )
      .then((result: DisciplineBudgetaireDatatableResponse) => {
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
    if (this.Data.length !== 0) {
      const headers = new HttpHeaders().set(
        'Authorization',
        'Bearer ' + localStorage.getItem('token')
      );
      this.http
        .post(
          environment.apiUrl + '/api/DisciplineBudgetaires/Exporter',
          (this.DataTableRequest.filtre = {
            motsCle: this.FilterForm.getRawValue().motsCle,
          }),
          {
            headers: headers,
            responseType: 'blob' as 'json',
          }
        )
        .subscribe((result: any) => {
          GenerateExcelFileService.GenerateExcel(
            result,
            Const.List_discipline_budgetaires
          );
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
