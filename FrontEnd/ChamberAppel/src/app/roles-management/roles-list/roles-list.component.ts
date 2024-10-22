import { Component } from '@angular/core';
import { Role } from '../../generatedapis/models/Role';
import { AuthService } from 'src/app/auth/auth.service';
import { NgxSpinnerService } from 'ngx-spinner';
import { FormControl, FormGroup } from '@angular/forms';
import { RolesService } from 'src/app/generatedapis/services/RolesService';
import { RoleDatatableResponse } from 'src/app/generatedapis/models/RoleDatatableResponse';
import { environment } from 'src/environments/environment';
import { AppMessageService } from 'src/app/app-message.service';
import { Const } from 'src/app/Helpers/Const';
import { GenerateExcelFileService } from 'src/app/Helpers/generate-excel-file.service';
import { HttpClient, HttpHeaders } from '@angular/common/http';
import { FilterSaver } from 'src/app/Helpers/FilterSaver';
import { Access } from 'src/app/auth/Access';
import { DtoFiltreMotsCleDatatableRequest } from 'src/app/generatedapis/models/DtoFiltreMotsCleDatatableRequest';
import { ButtonStyle } from 'src/app/shared/button-style';

@Component({
  selector: 'app-roles-list',
  templateUrl: './roles-list.component.html',
  styleUrls: ['./roles-list.component.scss'],
})
export class RolesListComponent {
  public features = {
    Edit: this.authService.checkPermission(Access.Roles.Update),
    Delete: this.authService.checkPermission(Access.Roles.Delete),
    Show: this.authService.checkPermission(Access.Roles.GetById),
    Permissions: this.authService.checkPermission(Access.Roles.GetPermissions),
    Create: this.authService.checkPermission(Access.Roles.Create),
    Exporter: this.authService.checkPermission(Access.Roles.Exporter),
  };

  public CreateButtonStyle = ButtonStyle.primary;
  public DetailButtonStyle = ButtonStyle.secondary;
  public DeleteButtonStyle = ButtonStyle.danger;
  public UpdateButtonStyle = ButtonStyle.success;
  public ExporterButtonStyle = ButtonStyle.secondary;
  public SearchButtonStyle = ButtonStyle.primary_block;
  public DefaultButtnStyle = ButtonStyle.info;

  public Data!: Role[];
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
    private http: HttpClient,
    private _notify: AppMessageService,
  ) { }

  ngOnInit(): void {
    this.filterSaver = new FilterSaver(this.FilterForm, 'Roles-list-filters');
    this.filterSaver.saveFilters();
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
    RolesService.postApiRolesGetAllFiltredAsync(this.DataTableRequest)
      .then((result: RoleDatatableResponse) => {
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
      const headers = new HttpHeaders().set('Authorization', 'Bearer ' + localStorage.getItem('token'));
      this.http
        .post(
          environment.apiUrl + '/api/Roles/Exporter',
          (this.DataTableRequest.filtre = {
            motsCle: this.FilterForm.getRawValue().motsCle,
          }),
          {
            headers: headers,
            responseType: 'blob' as 'json',
          },
        )
        .subscribe((result: any) => {
          GenerateExcelFileService.GenerateExcel(result, Const.List_Roles);
        });
    }
  }

  OnPageNumberChange(event: number) {
    this.pageNumber = event;
    this.LoadData();
  }

  OnPageSizeChange(event: number) {
    this.pageSize = event;
    this.LoadData();
  }

  OnSortChange(event: any) {
    this.orderBy = event.active;
    this.orderByDirection = event.direction;
    this.LoadData();
  }
}
