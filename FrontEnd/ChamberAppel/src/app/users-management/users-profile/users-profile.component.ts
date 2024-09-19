import { Component } from '@angular/core';
import { FormControl, FormGroup } from '@angular/forms';
import { Guid } from 'guid-typescript';
import { NgxSpinnerService } from 'ngx-spinner';
import { AuthService } from 'src/app/auth/auth.service';
import { Features } from 'src/app/auth/permissions';
import { DtoUtilisateurApiResponse } from 'src/app/generatedapis/models/DtoUtilisateurApiResponse';
import { UtilisateursService } from 'src/app/generatedapis/services/UtilisateursService';

@Component({
  selector: 'app-users-profile',
  templateUrl: './users-profile.component.html',
  styleUrls: ['./users-profile.component.scss'],
})
export class UsersProfileComponent {
  public features = {
    ResetPassword: this._authService.checkPermission(
      Features.Utilisateurs.ChangePassword
    ),
  };

  UserName!: string;

  constructor(
    private _authService: AuthService,
    private _loader: NgxSpinnerService
  ) {
    this.GetUser(this._authService.geCurrentUserId());
    this.Reactiveform.disable();
  }

  GetUser(userId: string) {
    this._loader.show();
    UtilisateursService.getApiUtilisateursGetByIdAsync(userId)
      .then((result: DtoUtilisateurApiResponse) => {
        this.UserName = result.data?.nom + '\t' + result.data?.prenom;
        this.Reactiveform.patchValue({
          id: result.data?.id ?? '',
          personnePhysiqueId: result.data?.personnePhysiqueId ?? '',
          nom: result.data?.nom ?? '',
          prenom: result.data?.prenom ?? '',
          nomArabe: result.data?.nomArabe ?? '',
          prenomArabe: result.data?.prenomArabe ?? '',
          email: result.data?.email ?? '',
          login: result.data?.login ?? '',
          isActive: result.data?.isActive ?? 0,
          updatedBy: result.data?.updatedBy ?? '',
          updateTime: result.data?.updateTime,
        });
      })
      .finally(() => this._loader.hide());
  }

  Reactiveform = new FormGroup({
    id: new FormControl({
      value: Guid.EMPTY,
      disabled: true,
    }),
    personnePhysiqueId: new FormControl({
      value: Guid.EMPTY,
      disabled: true,
    }),
    nom: new FormControl(''),
    prenom: new FormControl(''),
    nomArabe: new FormControl(''),
    prenomArabe: new FormControl(''),
    email: new FormControl(''),
    login: new FormControl(''),
    isActive: new FormControl(1),
    updatedBy: new FormControl(''),
    updateTime: new FormControl(),
  });
}
