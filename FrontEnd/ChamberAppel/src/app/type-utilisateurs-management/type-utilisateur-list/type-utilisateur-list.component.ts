import { HttpClient, HttpHeaders } from '@angular/common/http';
import { Component, OnInit } from '@angular/core';
import { FormControl, FormGroup } from '@angular/forms';
import { NgxSpinnerService } from 'ngx-spinner';
import { AppMessageService } from 'src/app/app-message.service';
import { DtoFiltreMotsCleDatatableRequest } from 'src/app/generatedapis/models/DtoFiltreMotsCleDatatableRequest';
import { TypeUtilisateur } from 'src/app/generatedapis/models/TypeUtilisateur';
import { TypeUtilisateurDatatableResponse } from 'src/app/generatedapis/models/TypeUtilisateurDatatableResponse';
import { TypeUtilisateursService } from 'src/app/generatedapis/services/TypeUtilisateursService';
import { Const } from 'src/app/Helpers/Const';
import { FilterSaver } from 'src/app/Helpers/FilterSaver';
import { GenerateExcelFileService } from 'src/app/Helpers/generate-excel-file.service';
import { ButtonStyle } from 'src/app/shared/button-style';
import { environment } from 'src/environments/environment';

@Component({
  selector: 'app-type-utilisateur-list',
  templateUrl: './type-utilisateur-list.component.html',
  styleUrls: ['./type-utilisateur-list.component.scss']
})
export class TypeUtilisateurListComponent implements OnInit {
  public CreateButtonStyle = ButtonStyle.primary;
  public DetailButtonStyle = ButtonStyle.secondary;
  public DeleteButtonStyle = ButtonStyle.danger;
  public UpdateButtonStyle = ButtonStyle.success;
  public ExporterButtonStyle = ButtonStyle.secondary;
  public SearchButtonStyle = ButtonStyle.primary_block;

  public Data!: TypeUtilisateur[];
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
    private _loader: NgxSpinnerService,
    private _notify: AppMessageService,
    private http: HttpClient
  ) { }

  ngOnInit(): void {
    this.filterSaver = new FilterSaver(
      this.FilterForm,
      'typeUtilisateurs-list-filters'
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
    TypeUtilisateursService.postApiTypeUtilisateursGetAllFiltredAsync(
      this.DataTableRequest
    )
      .then((result: TypeUtilisateurDatatableResponse) => {
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
          environment.apiUrl + '/api/TypeUtilisateurs/Exporter',
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
            Const.List_Type_Utilisateurs
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
