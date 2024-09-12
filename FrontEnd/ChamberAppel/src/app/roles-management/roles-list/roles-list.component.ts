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
import { Features } from 'src/app/auth/permissions';
import { DtoFiltreMotsCleDatatableRequest } from 'src/app/generatedapis/models/DtoFiltreMotsCleDatatableRequest';

@Component({
  selector: 'app-roles-list',
  templateUrl: './roles-list.component.html',
  styleUrls: ['./roles-list.component.scss'],
})
export class RolesListComponent {
  public features = {
    Edit: this.authService.checkPermission(Features.Roles.Update),
    Delete: this.authService.checkPermission(Features.Roles.Delete),
    Show: this.authService.checkPermission(Features.Roles.GetById),
    Permissions: this.authService.checkPermission(Features.Roles.GetPermissions),
    Create: this.authService.checkPermission(Features.Roles.Add),
    Exporter: this.authService.checkPermission(Features.Roles.Exporter),
  };

  Data!: Role[];
  pageNumber = 1;
  orderBy = 'label';
  orderByDirection = 'desc';
  RecordTotal = 0;
  RecordFiltred = 0;
  DataTableRequest!: DtoFiltreMotsCleDatatableRequest;
  filterSaver!: FilterSaver;
  pageStatus: 'loading' | 'loaded' | 'error' | 'noData' = 'loading';
  pageSize = environment.pageSize;
  selectionPageSize: boolean = false;

  constructor(
    private authService: AuthService,
    private _loader: NgxSpinnerService,
    private http: HttpClient,
    private _notify: AppMessageService,
  ) {}

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
          GenerateExcelFileService.GenerateExcel(result, Const.List_roles);
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
