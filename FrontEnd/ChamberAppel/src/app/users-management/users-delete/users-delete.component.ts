import { Component, OnInit } from '@angular/core';
import { FormControl, FormGroup, Validators } from '@angular/forms';
import { ActivatedRoute, Router } from '@angular/router';
import { ConfirmBoxEvokeService } from '@costlydeveloper/ngx-awesome-popup';
import { AppMessageService } from 'src/app/app-message.service';
import { UtilisateursService } from '../../generatedapis/services/UtilisateursService';
import { UtilisateurDtoApiResult } from 'src/app/generatedapis/models/UtilisateurDtoApiResult';
import { UtilisateurDto } from 'src/app/generatedapis/models/UtilisateurDto';
import { TypeUtilisateur } from 'src/app/generatedapis/models/TypeUtilisateur';
import { Guid } from 'guid-typescript';
import { NgxSpinnerService } from 'ngx-spinner';
import { AuthService } from 'src/app/auth/auth.service';
import { Features } from 'src/app/auth/permissions';

@Component({
  selector: 'app-users-delete',
  templateUrl: './users-delete.component.html',
  styleUrls: ['./users-delete.component.scss'],
})
export class UsersDeleteComponent implements OnInit {
  public features = {
    Delete: this._authService.checkPermission(Features.Utilisateurs.Delete),
  };
  userId!: string;
  public DefaultSelectName!: string;
  public UtilisateurDto!: UtilisateurDto;
  public TypeUtilisateurs!: TypeUtilisateur[];
  public Sexe = [
    { value: 'H', label: 'Homme' },
    { value: 'F', label: 'Femme' },
  ];
  constructor(
    private _authService: AuthService,
    private _activeRoute: ActivatedRoute,
    private _notify: AppMessageService,
    private _notifyConfirm: ConfirmBoxEvokeService,
    private _loader: NgxSpinnerService,
    private _router: Router,
  ) {}
  ngOnInit(): void {
    this.userId = this._activeRoute.snapshot.params['id'];
    this.GetUser(this.userId);
    this.Reactiveform.disable();
  }

  GetUser(userId: string) {
    this._loader.show();
    UtilisateursService.getApiUtilisateursGetById(userId)
      .then((result: UtilisateurDtoApiResult) => {
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
    typeUtilisateurId: new FormControl(0, Validators.required),
    typeUtilisateurLabel: new FormControl(),
    nom: new FormControl('', Validators.required),
    prenom: new FormControl('', Validators.required),
    nomArabe: new FormControl('', Validators.required),
    prenomArabe: new FormControl('', Validators.required),
    dateNaissance: new FormControl(),
    cin: new FormControl('', Validators.required),
    sexe: new FormControl(),
    adresse: new FormControl(),
    gsm: new FormControl(),
    email: new FormControl('', Validators.compose([Validators.email])),
    login: new FormControl('', Validators.required),
    isArchive: new FormControl(false),
    updatedBy: new FormControl(''),
    updateTime: new FormControl(),
  });

  ConfirmDelete() {
    this._notifyConfirm.danger('Supprimer', 'Souhaitez-vous supprimer ' + this.Reactiveform.getRawValue().login + ' définitivement ?', 'Supprimer', 'Fermer').subscribe((resp) => {
      const ClickedButton = resp.clickedButtonID;
      if (ClickedButton == 'supprimer') {
        this.Delete();
      }
    });
  }

  Delete() {
    UtilisateursService.postApiUtilisateursDelete(this.Reactiveform.getRawValue().id as string)
      .then(() => {
        this._notify.Success(AppMessageService.Delete);
        this._router.navigate(['/utilisateurs']);
      })
      .catch(() => this._notify.Error(AppMessageService.ErrorDelete));
  }
}
