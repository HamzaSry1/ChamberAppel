import { Router } from '@angular/router';
import { Component, OnInit } from '@angular/core';
import { FormControl, FormGroup, Validators } from '@angular/forms';
import { AppMessageService } from 'src/app/app-message.service';
import { Const } from 'src/app/Helpers/Const';
import { Guid } from 'guid-typescript';
import { AuthService } from 'src/app/auth/auth.service';
import { UtilisateursService } from 'src/app/generatedapis/services/UtilisateursService';
import { PersonnePhysiquesService } from 'src/app/generatedapis/services/PersonnePhysiquesService';
import { Validator } from 'src/app/Helpers/custom-validation';
import { Features } from 'src/app/auth/permissions';
import { NgxSpinnerService } from 'ngx-spinner';
import { HttpStatusCode } from 'src/app/generatedapis/models/HttpStatusCode';
import { PersonnePhysiqueApiResponse } from 'src/app/generatedapis/models/PersonnePhysiqueApiResponse';
import { DtoUtilisateurApiResponse } from 'src/app/generatedapis/models/DtoUtilisateurApiResponse';
import { DtoUtilisateur } from 'src/app/generatedapis/models/DtoUtilisateur';
@Component({
  selector: 'app-users-add',
  templateUrl: './users-add.component.html',
  styleUrls: ['./users-add.component.scss'],
})
export class UsersAddComponent implements OnInit {
  public features = {
    Create: this._authService.checkPermission(Features.Utilisateurs.Add),
  };
  public UserId: string;
  public DefaultSelectName!: string;
  public UtilisateurDto!: DtoUtilisateur;
  public validationMessages: any = Const.ValidationMessages;
  public pageStatus: 'loading' | 'loaded' | 'error' | 'noData' = 'loaded';
  public Sexe = [
    { value: 'H', label: 'Homme' },
    { value: 'F', label: 'Femme' },
  ];
  public PersonnePhysiqueId!: string;

  constructor(
    private _notify: AppMessageService,
    private _router: Router,
    private _authService: AuthService
  ) {
    this.DefaultSelectName = this._notify.DefaultSelectOption;
    this.UserId = this._authService.geCurrentUserId();
  }
  ngOnInit(): void {
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
    typeUtilisateurId: new FormControl(null, Validators.required),
    nom: new FormControl('', Validators.required),
    prenom: new FormControl('', Validators.required),
    nomArabe: new FormControl(''),
    prenomArabe: new FormControl(''),
    dateNaissance: new FormControl('', Validator.customDateValidator()),
    cin: new FormControl('', [
      Validators.required,
      Validator.cinValidator(),
      Validators.minLength(2),
      Validators.maxLength(50),
    ]),
    sexe: new FormControl(),
    adresse: new FormControl(''),
    gsm: new FormControl('', Validators.pattern(/^0\d{9}$/)),
    email: new FormControl('', [
      Validators.required,
      Validators.email,
      Validator.emailIsCdc,
    ]),
    login: new FormControl('', Validators.required),
    password: new FormControl('', [
      Validators.required,
      Validator.passwordValidator,
    ]),
    isActive: new FormControl(1),
    updatedBy: new FormControl(''),
    updateTime: new FormControl(),
  });

  reloadPage() {
    window.location.reload();
  }

  GetPersonnePhysique(id: any) {
    PersonnePhysiquesService.getApiPersonnePhysiquesGetByIdAsync(id).then(
      (result: PersonnePhysiqueApiResponse) => {
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
          isActive: 0,
          updatedBy: result.data?.updatedBy ?? '',
          updateTime: result.data?.updateTime,
        });
        this.PersonnePhysiqueId = result.data?.id ?? '';
      }
    );
  }

  Save() {
    if (this.Reactiveform.valid) {
      this.UtilisateurDto = {
        id: Guid.create().toString(),
        personnePhysiqueId:
          this.PersonnePhysiqueId == undefined
            ? Guid.EMPTY
            : this.PersonnePhysiqueId,
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
        isActive: this.Reactiveform.getRawValue().isActive,
        updatedBy: this.UserId,
        updateTime: new Date().toISOString(),
      };
      UtilisateursService.postApiUtilisateursCreateAsync(
        this.UtilisateurDto
      ).then((result: DtoUtilisateurApiResponse) => {
        if (result.statusCode == HttpStatusCode._200) {
          this._notify.Success(AppMessageService.Add);
          this._router.navigate(['/utilisateurs']);
        }
      });
    } else this.Reactiveform.markAllAsTouched();
  }
}
