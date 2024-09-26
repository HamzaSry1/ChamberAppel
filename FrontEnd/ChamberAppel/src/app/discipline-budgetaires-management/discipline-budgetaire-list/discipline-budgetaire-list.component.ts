import { HttpClient, HttpHeaders } from '@angular/common/http';
import { Component } from '@angular/core';
import { FormControl, FormGroup } from '@angular/forms';
import { NgxSpinnerService } from 'ngx-spinner';
import { AppMessageService } from 'src/app/app-message.service';
import { AuthService } from 'src/app/auth/auth.service';
import { DisciplineBudgetaire } from 'src/app/generatedapis/models/DisciplineBudgetaire';
import { DisciplineBudgetaireDatatableResponse } from 'src/app/generatedapis/models/DisciplineBudgetaireDatatableResponse';
import { DtoFiltreMotsCleDatatableRequest } from 'src/app/generatedapis/models/DtoFiltreMotsCleDatatableRequest';
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
  public DataTableRequest!: DtoFiltreMotsCleDatatableRequest;
  public filterSaver!: FilterSaver;
  public pageStatus: 'loading' | 'loaded' | 'error' | 'noData' = 'loading';
  public pageSize = environment.pageSize;
  public selectionPageSize: boolean = false;

  constructor(
    private authService: AuthService,
    private _loader: NgxSpinnerService,
    private _notify: AppMessageService,
    private http: HttpClient
  ) {}

  ngOnInit(): void {
    this.filterSaver = new FilterSaver(
      this.FilterForm,
      'DisciplineBudgetaires-list-filters'
    );
    this.filterSaver.loadSavedFilters();
    this.LoadData();
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

  FilterForm = new FormGroup({
    motsCle: new FormControl(),
  });

  LoadData() {
    this.pageStatus = 'loading';
    this._loader.show();
    this.DataTableRequest = {
      filtre: {
        motsCle: this.FilterForm.getRawValue().motsCle,
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
