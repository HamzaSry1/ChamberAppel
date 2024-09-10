import { Component, OnInit } from '@angular/core';
import { FormControl, FormGroup, Validators } from '@angular/forms';
import { ActivatedRoute } from '@angular/router';
import { UtilisateursService } from '../../generatedapis/services/UtilisateursService';
import { UtilisateurDtoApiResult } from 'src/app/generatedapis/models/UtilisateurDtoApiResult';
import { Const } from 'src/app/Helpers/Const';
import { TypeUtilisateur } from 'src/app/generatedapis/models/TypeUtilisateur';
import { Guid } from 'guid-typescript';
import { AppMessageService } from 'src/app/app-message.service';
import { NgxSpinnerService } from 'ngx-spinner';

@Component({
  selector: 'app-users-details',
  templateUrl: './users-details.component.html',
  styleUrls: ['./users-details.component.scss'],
})
export class UsersDetailsComponent implements OnInit {
  userId!: string;
  public Sexe = [
    { value: 'H', label: 'Homme' },
    { value: 'F', label: 'Femme' },
  ];
  public DefaultSelectName!: string;
  public TypeUtilisateurs!: TypeUtilisateur[];
  pageStatus: 'loading' | 'loaded' | 'error' | 'noData' = 'loading';

  constructor(
    private _activeRoute: ActivatedRoute,
    private _loader: NgxSpinnerService,
    private _notify: AppMessageService,
  ) {}

  ngOnInit(): void {
    this.userId = this._activeRoute.snapshot.params['id'];
    this.GetUser(this.userId);
    this.Reactiveform.disable();
  }

  GetUser(userId: string) {
    this._loader.show();
    this.pageStatus = 'loading';
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
        this.pageStatus = 'loaded';
      })
      .catch((error) => {
        // notify error
        this._notify.Error(AppMessageService.ErrorLoadingListe);
        this.pageStatus = 'error';
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
}
