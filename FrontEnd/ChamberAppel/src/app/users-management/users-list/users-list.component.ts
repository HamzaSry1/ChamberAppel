import { Component, OnInit } from '@angular/core';
import { FormControl, FormGroup } from '@angular/forms';
import { NgxSpinnerService } from 'ngx-spinner';
import { environment } from 'src/environments/environment';
/* custom services */
import { AuthService } from 'src/app/auth/auth.service';
import { AppMessageService } from 'src/app/app-message.service';
/* Swagger services */
import { UtilisateursService } from 'src/app/generatedapis/services/UtilisateursService';
import { GenerateExcelFileService } from 'src/app/Helpers/generate-excel-file.service';
import { Const } from 'src/app/Helpers/Const';
import { HttpClient, HttpHeaders } from '@angular/common/http';
import { FilterSaver } from 'src/app/Helpers/FilterSaver';
import { Access } from 'src/app/auth/Access';
import { DtoUtilisateur } from 'src/app/generatedapis/models/DtoUtilisateur';
import { DtoFiltreUtilisateurDatatableRequest } from 'src/app/generatedapis/models/DtoFiltreUtilisateurDatatableRequest';
import { DtoUtilisateurDatatableResponse } from 'src/app/generatedapis/models/DtoUtilisateurDatatableResponse';
import { fadeInOnEnterAnimation, fadeOutOnLeaveAnimation } from 'angular-animations';
import { ButtonStyle } from 'src/app/shared/button-style';

@Component({
  selector: 'app-users-list',
  templateUrl: './users-list.component.html',
  styleUrls: ['./users-list.component.scss'],
  animations: [fadeInOnEnterAnimation(), fadeOutOnLeaveAnimation()],
})
export class UsersListComponent implements OnInit {
  public Access = {
    Show: this.authService.checkPermission(Access.Utilisateurs.GetById),
    Edit: this.authService.checkPermission(Access.Utilisateurs.Update),
    Create: this.authService.checkPermission(Access.Utilisateurs.Create),
    Delete: this.authService.checkPermission(Access.Utilisateurs.Delete),
    Exporter: this.authService.checkPermission(Access.Utilisateurs.Exporter),
    Roles: this.authService.checkPermission(Access.Utilisateurs.GetRoles),
    Permissions: this.authService.checkPermission(
      Access.Utilisateurs.GetPermissions
    ),
    ResetPassword: this.authService.checkPermission(
      Access.Utilisateurs.ChangePassword
    ),
  };

  public CreateButtonStyle = ButtonStyle.primary;
  public DetailButtonStyle = ButtonStyle.secondary;
  public DeleteButtonStyle = ButtonStyle.danger;
  public UpdateButtonStyle = ButtonStyle.success;
  public ExporterButtonStyle = ButtonStyle.secondary;
  public SearchButtonStyle = ButtonStyle.primary_block;
  public DefaultButtnStyle = ButtonStyle.info;

  public pageStatus: 'loading' | 'loaded' | 'error' | 'noData' = 'loading';
  public selectionPageSize: boolean = false;
  public Users!: DtoUtilisateur[];
  public DefaultSelectName!: string;
  public DataTableRequest!: DtoFiltreUtilisateurDatatableRequest;
  public pageNumber = 1;
  public pageSize = environment.pageSize;
  public orderBy = 'UpdateTime';
  public orderByDirection = 'desc';
  public RecordTotal = 0;
  public RecordFiltred = 0;
  public showDetailsState: string = 'hidden';
  public filterSaver!: FilterSaver;
  public showDetails: boolean = false;


  FilterForm = new FormGroup({
    nomComplete: new FormControl(),
    email: new FormControl(),
    motsCle: new FormControl(),
  });

  /* Initialization handlers */
  constructor(
    private _notify: AppMessageService,
    private _loader: NgxSpinnerService,
    private http: HttpClient,
    private authService: AuthService
  ) {
    this.DefaultSelectName = this._notify.DefaultSelectOption;
  }

  ngOnInit(): void {
    this.filterSaver = new FilterSaver(
      this.FilterForm,
      'utilisateurs-list-filters'
    );
    this.filterSaver.saveFilters();
    this.LoadData();
    if (localStorage.getItem('utilisateurs-list-details') == 'true') {
      this.showDetails = true;
    } else {
      this.showDetails = false;
    }
    this.showDetailsState = this.showDetails ? 'visible' : 'hidden';
  }

  resetPagination() {
    this.pageNumber = 1;
    this.pageSize = environment.pageSize;
    this.orderBy = 'UpdateTime';
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

  /* Table sort and pagination events handlers */
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

  Exporter() {
    if (this.Users.length !== 0) {
      const headers = new HttpHeaders().set(
        'Authorization',
        'Bearer ' + localStorage.getItem('token')
      );
      this.http
        .post(
          environment.apiUrl + '/api/Utilisateurs/Exporter',
          (this.DataTableRequest.filtre = {
            motsCle: this.FilterForm.getRawValue().motsCle,
            email: this.FilterForm.getRawValue().email,
            nomComplete: this.FilterForm.getRawValue().nomComplete,
          }),
          {
            headers: headers,
            responseType: 'blob' as 'json',
          }
        )
        .subscribe((result: any) => {
          GenerateExcelFileService.GenerateExcel(
            result,
            Const.List_Utilisateurs
          );
        });
    }
  }

  toggleShowDetails() {
    this.showDetails = !this.showDetails;
    this.showDetailsState = this.showDetails ? 'visible' : 'hidden';
    localStorage.setItem(
      'utilisateurs-list-details',
      this.showDetails.toString()
    );
  }

  LoadData() {
    this.pageStatus = 'loading';
    this._loader.show();
    this.DataTableRequest = {
      filtre: {
        motsCle: this.FilterForm.getRawValue().motsCle,
        nomComplete: this.FilterForm.getRawValue().nomComplete,
        email: this.FilterForm.getRawValue().email,
      },
      pagination: {
        pageNumber: this.pageNumber,
        pageSize: this.pageSize,
        orderBy: this.orderBy,
        orderByDirection: this.orderByDirection,
      },
    };

    UtilisateursService.postApiUtilisateursGetAllAsync(this.DataTableRequest)
      .then((result: DtoUtilisateurDatatableResponse) => {
        this.Users = result.data ?? [];
        this.RecordTotal = result.recordTotal ?? 0;
        this.RecordFiltred = result.recordFiltred ?? 0;
        /* set page status */
        this.pageStatus = this.Users.length > 0 ? 'loaded' : 'noData';
      })
      .catch(() => {
        this._notify.Error(AppMessageService.ErrorLoadingListe);
        this.pageStatus = 'error';
      })
      .finally(() => {
        this._loader.hide();
      });
  }
}
