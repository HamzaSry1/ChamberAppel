import { Component, OnInit } from '@angular/core';
import { FormControl, FormGroup, Validators } from '@angular/forms';
import { ActivatedRoute, Router } from '@angular/router';
import { AppMessageService } from 'src/app/app-message.service';
import { UtilisateursService } from '../../generatedapis/services/UtilisateursService';
import { TypeUtilisateursService } from 'src/app/generatedapis/services/TypeUtilisateursService';
import { TypeUtilisateurListApiResult } from 'src/app/generatedapis/models/TypeUtilisateurListApiResult';
import { UtilisateurDto } from 'src/app/generatedapis/models/UtilisateurDto';
import { TypeUtilisateur } from 'src/app/generatedapis/models/TypeUtilisateur';
import { Const } from 'src/app/Helpers/Const';
import { UtilisateurDtoApiResult } from 'src/app/generatedapis/models/UtilisateurDtoApiResult';
import { Guid } from 'guid-typescript';
import { NgxSpinnerService } from 'ngx-spinner';
import { AuthService } from 'src/app/auth/auth.service';
import { Features } from 'src/app/auth/permissions';
import { Validator } from 'src/app/Helpers/custom-validation';
import { HttpStatusCode } from 'src/app/generatedapis/models/HttpStatusCode';
@Component({
  selector: 'app-users-edit',
  templateUrl: './users-edit.component.html',
  styleUrls: ['./users-edit.component.scss'],
})
export class UsersEditComponent implements OnInit {
  public features = {
    Edit: this._authService.checkPermission(Features.Utilisateurs.Update),
  };

  public DefaultSelectName!: string;
  public UtilisateurDto!: UtilisateurDto;
  public TypeUtilisateurs!: TypeUtilisateur[];
  public dateMaximale!: string;
  public Sexe = [
    { value: 'H', label: 'Homme' },
    { value: 'F', label: 'Femme' },
  ];
  public validationMessages: any = Const.ValidationMessages;
  UserId!: string;
  constructor(
    private _activeRoute: ActivatedRoute,
    private _notify: AppMessageService,
    private _loader: NgxSpinnerService,
    private _authService: AuthService,
    private _router: Router,
  ) {}

  ngOnInit(): void {
    this.UserId = this._activeRoute.snapshot.params['id'];
    this.DefaultSelectName = this._notify.DefaultSelectOption;
    this.GetUser(this.UserId);
    this.LoadTypeUtilisateurs();
    const today = new Date();
    const SeptJoursSuivant = new Date(today);
    SeptJoursSuivant.setDate(today.getDate() + 7);
    this.dateMaximale = SeptJoursSuivant.toISOString().split('T')[0];
  }

  LoadTypeUtilisateurs() {
    TypeUtilisateursService.getApiTypeUtilisateursGetAll().then((result: TypeUtilisateurListApiResult) => {
      this.TypeUtilisateurs = result.data ?? [];
    });
  }

  GetUser(userId: string) {
    this._loader.show();
    UtilisateursService.getApiUtilisateursGetById(userId)
      .then((result: UtilisateurDtoApiResult) => {
        this.Reactiveform.setValue({
          id: result.data?.id ?? '',
          personnePhysiqueId: result.data?.personnePhysiqueId ?? '',
          typeUtilisateurId: result.data?.typeUtilisateurId ?? 0,
          nom: result.data?.nom ?? '',
          prenom: result.data?.prenom ?? '',
          nomArabe: result.data?.nomArabe ?? '',
          prenomArabe: result.data?.prenomArabe ?? '',
          dateNaissance: result.data?.dateNaissance ?? null,
          cin: result.data?.cin ?? '',
          sexe: result.data?.sexe == 'Homme' ? 'H' : 'F',
          adresse: result.data?.adresse,
          gsm: result.data?.gsm ?? '',
          email: result.data?.email ?? '',
          login: result.data?.login ?? '',
          password: result.data?.password ?? '',
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
    nom: new FormControl('', Validators.required),
    prenom: new FormControl('', Validators.required),
    nomArabe: new FormControl(''),
    prenomArabe: new FormControl(''),
    dateNaissance: new FormControl('', Validator.customDateValidator()),
    cin: new FormControl('', [Validators.required, Validator.cinValidator()]),
    sexe: new FormControl(),
    adresse: new FormControl(),
    gsm: new FormControl('', Validators.pattern(/^0\d{9}$/)),
    email: new FormControl('', [Validators.required, Validators.email, Validator.emailIsFh2]),
    login: new FormControl('', Validators.required),
    password: new FormControl(''),
    isArchive: new FormControl(false),
    updatedBy: new FormControl(''),
    updateTime: new FormControl(),
  });

  Save() {
    if (this.Reactiveform.valid) {
      this.UtilisateurDto = {
        id: this.Reactiveform.getRawValue().id as string,
        personnePhysiqueId: this.Reactiveform.getRawValue().personnePhysiqueId as string,
        typeUtilisateurId: this.Reactiveform.getRawValue().typeUtilisateurId as number,
        nom: this.Reactiveform.getRawValue().nom,
        prenom: this.Reactiveform.getRawValue().prenom,
        nomArabe: this.Reactiveform.getRawValue().nomArabe,
        prenomArabe: this.Reactiveform.getRawValue().prenomArabe,
        dateNaissance: this.Reactiveform.getRawValue().dateNaissance == '' ? null : this.Reactiveform.getRawValue().dateNaissance,
        cin: this.Reactiveform.getRawValue().cin,
        sexe: this.Reactiveform.getRawValue().sexe,
        adresse: this.Reactiveform.getRawValue().adresse,
        gsm: this.Reactiveform.getRawValue().gsm,
        email: this.Reactiveform.getRawValue().email,
        login: this.Reactiveform.getRawValue().login,
        password: this.Reactiveform.getRawValue().password,
        isArchive: this.Reactiveform.getRawValue().isArchive,
        updatedBy: this.UserId,
        updateTime: new Date().toISOString(),
      };
      UtilisateursService.postApiUtilisateursUpdate(this.UtilisateurDto)
        .then((result) => {
          if (result.status == HttpStatusCode.OK) {
            this._notify.Success(AppMessageService.Edit);
            this._router.navigate(['/utilisateurs']);
          } else {
            if (result?.status == HttpStatusCode.CONFLICT) {
              this._notify.Error(AppMessageService.ConflitAddEditUtilisateur);
            } else {
              this._notify.Error(AppMessageService.ErrorAddEdit);
            }
          }
        })
        .catch(() => this._notify.Error(AppMessageService.ErrorAddEdit));
    } else this.Reactiveform.markAllAsTouched();
  }
}
