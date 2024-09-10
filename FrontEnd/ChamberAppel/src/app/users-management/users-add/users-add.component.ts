import { VerifyExistanceUtilisateurResponseApiResult } from 'src/app/generatedapis/models/VerifyExistanceUtilisateurResponseApiResult';
import { UtilisateurDto } from 'src/app/generatedapis/models/UtilisateurDto';
import { Router } from '@angular/router';
import { Component, OnInit } from '@angular/core';
import { FormControl, FormGroup, Validators } from '@angular/forms';
import { AppMessageService } from 'src/app/app-message.service';
import { Const } from 'src/app/Helpers/Const';
import { TypeUtilisateur } from 'src/app/generatedapis/models/TypeUtilisateur';
import { TypeUtilisateursService } from 'src/app/generatedapis/services/TypeUtilisateursService';
import { Guid } from 'guid-typescript';
import { AuthService } from 'src/app/auth/auth.service';
import { UtilisateursService } from 'src/app/generatedapis/services/UtilisateursService';
import { PersonnePhysiqueApiResult } from 'src/app/generatedapis/models/PersonnePhysiqueApiResult';
import { PersonnePhysiquesService } from 'src/app/generatedapis/services/PersonnePhysiquesService';
import { TypeUtilisateurListApiResult } from 'src/app/generatedapis/models/TypeUtilisateurListApiResult';
import { Validator } from 'src/app/Helpers/custom-validation';
import { Features } from 'src/app/auth/permissions';
import { NgxSpinnerService } from 'ngx-spinner';
import { UtilisateurDtoApiResult } from 'src/app/generatedapis/models/UtilisateurDtoApiResult';
import { HttpStatusCode } from 'src/app/generatedapis/models/HttpStatusCode';
@Component({
  selector: 'app-users-add',
  templateUrl: './users-add.component.html',
  styleUrls: ['./users-add.component.scss'],
})
export class UsersAddComponent implements OnInit {
  public features = {
    Create: this._authService.checkPermission(Features.Utilisateurs.Add),
  };
  UserId: string;
  public DefaultSelectName!: string;
  public UtilisateurDto!: UtilisateurDto;
  public TypeUtilisateurs!: TypeUtilisateur[];
  public validationMessages: any = Const.ValidationMessages;
  public verifierCinExiste = true;
  pageStatus: 'loading' | 'loaded' | 'error' | 'noData' = 'loaded';
  public Sexe = [
    { value: 'H', label: 'Homme' },
    { value: 'F', label: 'Femme' },
  ];
  public CinExiste = true;
  public Cin!: string;
  PersonnePhysiqueId!: string;
  public dateMaximale!: string;

  constructor(
    private _notify: AppMessageService,
    private _router: Router,
    private _loader: NgxSpinnerService,
    private _authService: AuthService,
  ) {
    this.DefaultSelectName = this._notify.DefaultSelectOption;
    this.UserId = this._authService.geCurrentUserId();
  }
  ngOnInit(): void {
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

  Reactiveform = new FormGroup({
    id: new FormControl({
      value: '00000000-0000-0000-0000-000000000000',
      disabled: true,
    }),
    personnePhysiqueId: new FormControl({
      value: '00000000-0000-0000-0000-000000000000',
      disabled: true,
    }),
    typeUtilisateurId: new FormControl(null, Validators.required),
    nom: new FormControl('', Validators.required),
    prenom: new FormControl('', Validators.required),
    nomArabe: new FormControl(''),
    prenomArabe: new FormControl(''),
    dateNaissance: new FormControl('', Validator.customDateValidator()),
    cin: new FormControl('', [Validators.required, Validator.cinValidator(), Validators.minLength(2), Validators.maxLength(50)]),
    sexe: new FormControl(),
    adresse: new FormControl(''),
    gsm: new FormControl('', Validators.pattern(/^0\d{9}$/)),
    email: new FormControl('', [Validators.required, Validators.email, Validator.emailIsFh2]),
    login: new FormControl('', Validators.required),
    password: new FormControl('', [Validators.required, Validator.passwordValidator]),
    isArchive: new FormControl(false),
    updatedBy: new FormControl(''),
    updateTime: new FormControl(),
  });
  SearchCinForm = new FormGroup({
    cin: new FormControl('', [Validators.required, Validator.cinValidator(), Validators.minLength(2), Validators.maxLength(50)]),
  });
  SearchCin() {
    if (this.SearchCinForm.valid) {
      this.pageStatus = 'loading';
      this._loader.show();
      UtilisateursService.getApiUtilisateursGetByCin(encodeURIComponent(this.SearchCinForm.getRawValue().cin as string))
        .then((result: VerifyExistanceUtilisateurResponseApiResult) => {
          this.pageStatus = 'loaded';
          this._loader.hide();
          if (result.data?.isExisted == true) {
            this._router.navigate(['/utilisateurs/modifier/' + result.data.utilisateurId]);
          } else if (result.data?.isExisted == false && result.data.personnePhysiqueId != Guid.EMPTY) {
            this.GetPersonnePhysique(result.data.personnePhysiqueId);
            this._router.navigate(['/utilisateurs/ajouter']);
          }
          this.verifierCinExiste = false;
          this.Cin = this.SearchCinForm.getRawValue().cin as string;
        })
        .catch(() => {
          this.pageStatus = 'error';
          this._notify.Error(AppMessageService.ErrorLoadingListe);
        })
        .finally(() => {
          this._loader.hide();
        });
    } else this.SearchCinForm.markAsDirty();
  }
  GetPersonnePhysique(id: any) {
    PersonnePhysiquesService.getApiPersonnePhysiquesGetById(id).then((result: PersonnePhysiqueApiResult) => {
      this.Reactiveform.setValue({
        id: null,
        typeUtilisateurId: null,
        personnePhysiqueId: result.data?.id ?? '',
        nom: result.data?.nom ?? '',
        prenom: result.data?.prenom ?? '',
        nomArabe: result.data?.nomArabe ?? '',
        prenomArabe: result.data?.prenomArabe ?? '',
        dateNaissance: result.data?.dateNaissance ?? '',
        cin: result.data?.cin ?? '',
        sexe: result.data?.sexe ?? null,
        adresse: result.data?.adresse ?? '',
        gsm: result.data?.gsm ?? '',
        email: result.data?.email ?? '',
        login: null,
        password: null,
        isArchive: false,
        updatedBy: result.data?.updatedBy ?? '',
        updateTime: result.data?.updateTime,
      });
      this.PersonnePhysiqueId = result.data?.id ?? '';
    });
  }
  reloadPage() {
    window.location.reload();
  }
  Save() {
    if (this.Reactiveform.valid) {
      this.UtilisateurDto = {
        id: Guid.create().toString(),
        personnePhysiqueId: this.PersonnePhysiqueId == undefined ? Guid.EMPTY : this.PersonnePhysiqueId,
        typeUtilisateurId: this.Reactiveform.getRawValue().typeUtilisateurId ?? 0,
        nom: this.Reactiveform.getRawValue().nom ?? '',
        prenom: this.Reactiveform.getRawValue().prenom ?? '',
        nomArabe: this.Reactiveform.getRawValue().nomArabe ?? '',
        prenomArabe: this.Reactiveform.getRawValue().prenomArabe ?? '',
        dateNaissance: this.Reactiveform.getRawValue().dateNaissance ?? null,
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
      UtilisateursService.postApiUtilisateursCreate(this.UtilisateurDto).then((result: UtilisateurDtoApiResult) => {
        if (result.status == HttpStatusCode.OK) {
          this._notify.Success(AppMessageService.Add);
          this._router.navigate(['/utilisateurs']);
        } else {
          if (result?.status == HttpStatusCode.CONFLICT) {
            this._notify.Error(AppMessageService.ConflitAddEditUtilisateur);
          } else {
            this._notify.Error(AppMessageService.ErrorAddEdit);
          }
        }
      });
    } else this.Reactiveform.markAllAsTouched();
  }
}
