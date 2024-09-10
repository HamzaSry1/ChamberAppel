import { Component, OnInit } from '@angular/core';
import { FormControl, FormGroup } from '@angular/forms';
import { ConfirmBoxEvokeService } from '@costlydeveloper/ngx-awesome-popup';
import { fadeInOnEnterAnimation, fadeOutOnLeaveAnimation } from 'angular-animations';
import { NgxSpinnerService } from 'ngx-spinner';
import { environment } from 'src/environments/environment';
/* custom services */
import { AuthService } from 'src/app/auth/auth.service';
import { AppMessageService } from 'src/app/app-message.service';
/* Swagger services */
import { UtilisateursService } from 'src/app/generatedapis/services/UtilisateursService';
import { BooleanApiResult } from 'src/app/generatedapis/models/BooleanApiResult';
import { HttpStatusCode } from 'src/app/generatedapis/models/HttpStatusCode';
import { UtilisateurDto } from 'src/app/generatedapis/models/UtilisateurDto';
import { TypeUtilisateur } from 'src/app/generatedapis/models/TypeUtilisateur';
import { TypeUtilisateursService } from 'src/app/generatedapis/services/TypeUtilisateursService';
import { TypeUtilisateurListApiResult } from 'src/app/generatedapis/models/TypeUtilisateurListApiResult';
import { UtilisateurFiltreDatatableRequest } from 'src/app/generatedapis/models/UtilisateurFiltreDatatableRequest';
import { UtilisateurDtoDatatableResponse } from 'src/app/generatedapis/models/UtilisateurDtoDatatableResponse';
import { GenerateExcelFileService } from 'src/app/Helpers/generate-excel-file.service';
import { Const } from 'src/app/Helpers/Const';
import { HttpClient, HttpHeaders } from '@angular/common/http';
import { FilterSaver } from 'src/app/Helpers/FilterSaver';
import { Features } from 'src/app/auth/permissions';
import { UtilisateurMailComponent } from 'src/app/retraites-management/utilisateur-mail/utilisateur-mail.component';
import { MatDialog } from '@angular/material/dialog';

@Component({
  selector: 'app-users-list',
  templateUrl: './users-list.component.html',
  styleUrls: ['./users-list.component.scss'],
  animations: [fadeInOnEnterAnimation(), fadeOutOnLeaveAnimation()],
})
export class UsersListComponent implements OnInit {
  public features = {
    Show: this.authService.checkPermission(Features.Utilisateurs.GetById),
    Edit: this.authService.checkPermission(Features.Utilisateurs.Update),
    Create: this.authService.checkPermission(Features.Utilisateurs.Add),
    Delete: this.authService.checkPermission(Features.Utilisateurs.Delete),
    Exporter: this.authService.checkPermission(Features.Utilisateurs.Exporter),
    Roles: this.authService.checkPermission(Features.Utilisateurs.GetRoles),
    Permissions: this.authService.checkPermission(Features.Utilisateurs.GetPermissions),
    ResetPassword: this.authService.checkPermission(Features.Utilisateurs.ChangePassword),
    Email: this.authService.checkPermission(Features.Utilisateurs.GenerateApercu),
  };

  pageStatus: 'loading' | 'loaded' | 'error' | 'noData' = 'loading';
  selectionPageSize: boolean = false;
  Users!: UtilisateurDto[];
  public DefaultSelectName!: string;
  public TypeUtilisateurs!: TypeUtilisateur[];
  DataTableRequest!: UtilisateurFiltreDatatableRequest;
  pageNumber = 1;
  pageSize = environment.pageSize;
  orderBy = 'UpdateTime';
  orderByDirection = 'desc';
  RecordTotal = 0;
  RecordFiltred = 0;
  showDetailsState: string = 'hidden';
  filterSaver!: FilterSaver;
  showDetails: boolean = false;
  FilterForm = new FormGroup({
    nomComplete: new FormControl(),
    cin: new FormControl(),
    email: new FormControl(),
    typeUtilisateurId: new FormControl(),
    motsCle: new FormControl(),
  });

  /* Initialization handlers */
  constructor(
    private _notify: AppMessageService,
    private _loader: NgxSpinnerService,
    private http: HttpClient,
    private _dialog: MatDialog,
    private _notifyConfirm: ConfirmBoxEvokeService,
    private authService: AuthService,
  ) {
    this.DefaultSelectName = this._notify.DefaultSelectOption;
  }

  ngOnInit(): void {
    this.filterSaver = new FilterSaver(this.FilterForm, 'utilisateurs-list-filters');
    this.LoadTypeUtilisateurs();
    this.filterSaver.saveFilters();
    this.LoadData();
    if (localStorage.getItem('users-list-details') == 'true') {
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
      const headers = new HttpHeaders().set('Authorization', 'Bearer ' + localStorage.getItem('token'));
      this.http
        .post(
          environment.apiUrl + '/api/Utilisateurs/Exporter',
          (this.DataTableRequest.filtre = {
            motsCle: this.FilterForm.getRawValue().motsCle,
            cin: this.FilterForm.getRawValue().cin,
            email: this.FilterForm.getRawValue().email,
            nomComplete: this.FilterForm.getRawValue().nomComplete,
            typeUtilisateurId: this.FilterForm.getRawValue().typeUtilisateurId,
          }),
          {
            headers: headers,
            responseType: 'blob' as 'json',
          },
        )
        .subscribe((result: any) => {
          GenerateExcelFileService.GenerateExcel(result, Const.List_Utilisateurs);
        });
    }
  }

  toggleShowDetails() {
    this.showDetails = !this.showDetails;
    this.showDetailsState = this.showDetails ? 'visible' : 'hidden';
    localStorage.setItem('users-list-details', this.showDetails.toString());
  }

  LoadTypeUtilisateurs() {
    TypeUtilisateursService.getApiTypeUtilisateursGetAll().then((result: TypeUtilisateurListApiResult) => {
      this.TypeUtilisateurs = result.data ?? [];
    });
  }

  LoadData() {
    this.pageStatus = 'loading';
    this._loader.show();
    this.DataTableRequest = {
      filtre: {
        motsCle: this.FilterForm.getRawValue().motsCle,
        nomComplete: this.FilterForm.getRawValue().nomComplete,
        cin: this.FilterForm.getRawValue().cin,
        email: this.FilterForm.getRawValue().email,
        typeUtilisateurId: this.FilterForm.getRawValue().typeUtilisateurId == 'null' ? null : this.FilterForm.getRawValue().typeUtilisateurId,
      },
      pagination: {
        pageNumber: this.pageNumber,
        pageSize: this.pageSize,
        orderBy: this.orderBy,
        orderByDirection: this.orderByDirection,
      },
    };
    UtilisateursService.postApiUtilisateursGetAllUtilisateurDto(this.DataTableRequest)
      .then((result: UtilisateurDtoDatatableResponse) => {
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

  /* Send email confirmation */
  ResetPassword(user: UtilisateurDto) {
    this._notifyConfirm.info('Réinitialiser mot de passe ', 'Souhaitez-vous réinitialiser le mot de passe  de ' + user.nom + ' ?', 'Réinitialiser', 'Fermer').subscribe((resp) => {
      const ClickedButton = resp.clickedButtonID;
      if (ClickedButton == 'réinitialiser') {
        this.SendMailConfirmationToken(user.id);
      }
    });
  }

  SendMailConfirmationToken(userId?: string) {
    UtilisateursService.postApiUtilisateursSendMailConfirmationToken(userId)
      .then((result: BooleanApiResult) => {
        if (result.status == HttpStatusCode.OK) {
          this._notify.Success(AppMessageService.SendEmailConfirmation);
        }
      })
      .catch(() => {
        this._notify.Error(AppMessageService.ErrorSendingEmailConfirmation);
      });
  }

  Email() {
    this._dialog.open(UtilisateurMailComponent, {
      data: {
        IsResetPassword: false,
        NomComplete: this.FilterForm.getRawValue().nomComplete,
        Cin: this.FilterForm.getRawValue().cin,
        Email: this.FilterForm.getRawValue().email,
        TypeUtilisateurId: this.FilterForm.getRawValue().typeUtilisateurId,
        NomberUtilisateurs: this.RecordFiltred,
        callback: () => {},
      },
    });
  }
}
