import { Component, EventEmitter, Input, OnInit, Output } from '@angular/core';
import { FormControl, FormGroup, Validators } from '@angular/forms';
import { ActivatedRoute } from '@angular/router';
import { Guid } from 'guid-typescript';
import { Const } from 'src/app/Helpers/Const';
import { Validator } from 'src/app/Helpers/custom-validation';
import { AppMessageService } from 'src/app/app-message.service';
import { AuthService } from 'src/app/auth/auth.service';
import { Features } from 'src/app/auth/permissions';
import { HttpStatusCode } from 'src/app/generatedapis/models/HttpStatusCode';
import { PersonnePhysiquesService } from 'src/app/generatedapis/services/PersonnePhysiquesService';

@Component({
  selector: 'app-personne-physique-form',
  templateUrl: './personne-physique-form.component.html',
  styleUrls: ['./personne-physique-form.component.scss'],
})
export class PersonnePhysiqueFormComponent implements OnInit {
  public features = {
    Create: this.authService.checkPermission(Features.PersonnePhysique.Create),
    Edit: this.authService.checkPermission(Features.PersonnePhysique.Update),
    Delete: this.authService.checkPermission(Features.PersonnePhysique.Delete),
  };
  @Input() IsAddOrEdit = false;
  @Input() IsDelete = false;
  @Input() title!: string;
  @Input() titleMobile!: string;
  @Input() IsFormDisable = false;
  @Output() OnSave: EventEmitter<any> = new EventEmitter();
  @Output() OnDelete: EventEmitter<any> = new EventEmitter();

  public personnephysiqueId!: string;
  public validationMessages: any = Const.ValidationMessages;
  public dateMaximale!: string;
  public DefaultSelectName!: string;
  public Cin!: string;
  public CinExiste = true;
  public Sexe = [
    { value: 'H', label: 'Homme' },
    { value: 'F', label: 'Femme' },
  ];
  constructor(
    private _notify: AppMessageService,
    private _activatedRoute: ActivatedRoute,
    private authService: AuthService,
  ) {
    this.personnephysiqueId = _activatedRoute.snapshot.params['id'];
    this.DefaultSelectName = this._notify.DefaultSelectOption;
  }

  ngOnInit(): void {
    const today = new Date();
    const SeptJoursSuivant = new Date(today);
    SeptJoursSuivant.setDate(today.getDate() + 7);
    this.dateMaximale = SeptJoursSuivant.toISOString().split('T')[0];

    if (this.IsFormDisable) this.ReactiveForm.disable();
    if (this.personnephysiqueId != null && this.personnephysiqueId != undefined) this.GetPersonnePhysique(this.personnephysiqueId);
  }

  ReactiveForm = new FormGroup({
    id: new FormControl({
      value: Guid.EMPTY,
      disabled: true,
    }),
    IdTypeSituationFamiliale: new FormControl(),
    nom: new FormControl('', Validators.required),
    prenom: new FormControl('', Validators.required),
    nomArabe: new FormControl(''),
    prenomArabe: new FormControl(''),
    dateNaissance: new FormControl('', [Validator.customDateValidator(), Validators.required]),
    cin: new FormControl('', [Validator.cinValidatorNotRequired(), Validators.minLength(2), Validators.maxLength(50)]),
    sexe: new FormControl(),
    adresse: new FormControl(''),
    email: new FormControl('', [Validators.required, Validators.email]),
    gsm: new FormControl('', Validators.pattern(/^0\d{9}$/)),
    isArchive: new FormControl(false),
    updatedBy: new FormControl(''),
    updateTime: new FormControl(),
  });

  GetPersonnePhysique(Id: string) {
    PersonnePhysiquesService.getApiPersonnePhysiquesGetByIdAsync(Id).then((result) => {
      if (result.statusCode == HttpStatusCode._200) {
        this.ReactiveForm.patchValue({
          id: result.data?.id,
          nom: result.data?.nom ?? '',
          prenom: result.data?.prenom ?? '',
          nomArabe: result.data?.nomArabe ?? '',
          prenomArabe: result.data?.prenomArabe ?? '',
          dateNaissance: result.data?.dateNaissance ?? '',
          cin: result.data?.cin ?? '',
          sexe: result.data?.sexe ?? '',
          adresse: result.data?.adresse ?? '',
          email: result.data?.email ?? '',
          gsm: result.data?.gsm ?? '',
          updateTime: result.data?.updateTime,
        });
      }
    });
  }
  Save() {
    if (this.ReactiveForm.valid) {
      this.OnSave.emit(this.ReactiveForm.getRawValue());
    } else this.ReactiveForm.markAllAsTouched();
  }
  Delete() {
    this.OnDelete.emit(this.ReactiveForm.getRawValue());
  }
}
