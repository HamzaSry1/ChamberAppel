import { Component } from '@angular/core';
import { FormControl, FormGroup } from '@angular/forms';
import { Guid } from 'guid-typescript';
import { NgxSpinnerService } from 'ngx-spinner';
import { AuthService } from 'src/app/auth/auth.service';
import { Features } from 'src/app/auth/permissions';
import { UtilisateurDtoApiResult } from 'src/app/generatedapis/models/UtilisateurDtoApiResult';
import { UtilisateursService } from 'src/app/generatedapis/services/UtilisateursService';

@Component({
  selector: 'app-users-profile',
  templateUrl: './users-profile.component.html',
  styleUrls: ['./users-profile.component.scss'],
})
export class UsersProfileComponent {
  public features = {
    ResetPassword: this._authService.checkPermission(Features.Utilisateurs.ChangePassword),
  };

  UserName!: string;

  constructor(
    private _authService: AuthService,
    private _loader: NgxSpinnerService,
  ) {
    this.GetUser(this._authService.geCurrentUserId());
    this.Reactiveform.disable();
  }

  GetUser(userId: string) {
    this._loader.show();
    UtilisateursService.getApiUtilisateursGetById(userId)
      .then((result: UtilisateurDtoApiResult) => {
        this.UserName = result.data?.nom + '\t' + result.data?.prenom;
        this.Reactiveform.setValue({
          id: result.data?.id ?? '',
          personnePhysiqueId: result.data?.personnePhysiqueId ?? '',
          typeUtilisateurId: result.data?.typeUtilisateurId ?? 0,
          typeUtilisateurLabel: result.data?.typeUtilisateurLabel ?? '',
          nom: result.data?.nom ?? '',
          prenom: result.data?.prenom ?? '',
          nomArabe: result.data?.nomArabe ?? '',
          prenomArabe: result.data?.prenomArabe ?? '',
          dateNaissance: result.data?.dateNaissance,
          cin: result.data?.cin ?? '',
          sexe: result.data?.sexe,
          adresse: result.data?.adresse,
          gsm: result.data?.gsm,
          email: result.data?.email ?? '',
          login: result.data?.login ?? '',
          isArchive: result.data?.isArchive ?? false,
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
    typeUtilisateurId: new FormControl(),
    typeUtilisateurLabel: new FormControl(),
    nom: new FormControl(''),
    prenom: new FormControl(''),
    nomArabe: new FormControl(''),
    prenomArabe: new FormControl(''),
    dateNaissance: new FormControl(),
    cin: new FormControl(''),
    sexe: new FormControl(),
    adresse: new FormControl(),
    gsm: new FormControl(),
    email: new FormControl(''),
    login: new FormControl(''),
    isArchive: new FormControl(false),
    updatedBy: new FormControl(''),
    updateTime: new FormControl(),
  });
}
