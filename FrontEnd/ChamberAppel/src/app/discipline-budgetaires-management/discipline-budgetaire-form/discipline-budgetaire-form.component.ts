import { Component, EventEmitter, Input, Output } from '@angular/core';
import { FormControl, FormGroup, Validators } from '@angular/forms';
import { ActivatedRoute } from '@angular/router';
import { NgxSpinnerService } from 'ngx-spinner';
import { AppMessageService } from 'src/app/app-message.service';
import { Const } from 'src/app/Helpers/Const';
import { ButtonStyle } from 'src/app/shared/button-style';

@Component({
  selector: 'app-discipline-budgetaire-form',
  templateUrl: './discipline-budgetaire-form.component.html',
  styleUrls: ['./discipline-budgetaire-form.component.scss'],
})
export class DisciplineBudgetaireFormComponent {
  public Id!: string;
  public validationMessages = Const.ValidationMessages;
  public AddOrEditButtonStyle!: string;
  public DeleteButtonStyle = ButtonStyle.danger;
  public ReturnButtonStyle = ButtonStyle.secondary;
  @Input() title!: string;
  @Input() titleMobile!: string;
  @Input() formIsDisabled!: boolean;
  @Input() IsCreateOrUpdate!: boolean;
  @Input() IsDelete!: boolean;
  @Output() Save: EventEmitter<any> = new EventEmitter();
  @Output() Delete: EventEmitter<any> = new EventEmitter();

  constructor(
    private _notify: AppMessageService,
    private _loader: NgxSpinnerService,
    private _activatedRouter: ActivatedRoute
  ) {
    this.Id = this._activatedRouter.snapshot.params['id'];
  }

  ReactiveForm = new FormGroup({
    id: new FormControl({ value: '', disabled: true }),
    numero_de_dossier: new FormControl('', Validators.required),
    appelant: new FormControl('', Validators.required),
    numero_de_verdict_appelant: new FormControl(''),
    publie_le: new FormControl('', Validators.required),
    a_propos_du_CRC_de_la_region: new FormControl(''),
    centre_comptable: new FormControl(''),
    date_enregistrement_de_la_requete_aupres_du_CRC: new FormControl(''),
    date_et_numero_de_la_requete_du_ministere_public: new FormControl(''),
    date_et_numero_de_ordre_de_nomination_du_conseiller_programme:
      new FormControl(''),
    conseiller_rapporteur: new FormControl('', Validators.required),
    date_et_numero_de_arrete_designant_le_rapporteur_successeur:
      new FormControl(''),
    conseiller_rapporteur_successeur: new FormControl('', Validators.required),
    la_date_a_laquelle_la_petition_a_ete_envoyee_aux_parties: new FormControl(
      ''
    ),
    parties: new FormControl('', Validators.required),
    date_de_demande_de_documents_complementaires: new FormControl(''),
    la_date_a_laquelle_observateur_a_ete_convoque_a_audience: new FormControl(
      ''
    ),
    date_de_realisation_de_la_recherche_sur_le_terrain: new FormControl(''),
    date_a_laquelle_le_rapport_a_ete_prepare: new FormControl(''),
    la_date_a_laquelle_le_dossier_a_ete_transmis_au_ministere_public:
      new FormControl(''),
    date_et_numero_des_conclusions_du_ministere_public: new FormControl(''),
    date_et_numero_des_conclusions_du_parquet: new FormControl(''),
    date_a_laquelle_le_suiveur_a_reçu_la_convocation_pour_inspection:
      new FormControl(''),
    date_a_laquelle_avocat_a_recu_la_convocation_pour_inspection:
      new FormControl(''),
    date_a_laquelle_le_suiveur_a_ete_informe: new FormControl(''),
    date_a_laquelle_avocat_a_ete_informe: new FormControl(''),
    date_a_laquelle_le_dossier_a_ete_renvoye_par_le_bureau_central_de_controle:
      new FormControl(''),
    convoquer_observateur_et_avocat_pour_assister_a_audience_de_determination_de_la_peine:
      new FormControl(''),
    date_audience_du_jugement: new FormControl(''),
    date_de_audience_de_determination_de_la_peine: new FormControl(''),
    operateur_de_decision: new FormControl(''),
    numero_de_resolution: new FormControl(''),
    la_date_a_laquelle_la_decision_a_ete_envoyee_pour_notification_aux_parties:
      new FormControl(''),
    la_date_a_laquelle_le_comptable_a_reçu_une_copie_de_la_decision:
      new FormControl(''),
  });

  ngOnInit(): void {
    if (this.Id != null && this.Id != undefined) {
      this.GetDataById(this.Id);
    }
    // Create
    if (this.IsCreateOrUpdate == true && this.Id == null) {
      this.AddOrEditButtonStyle = ButtonStyle.primary;
    } else {
      this.AddOrEditButtonStyle = ButtonStyle.success;
    }
    if (this.formIsDisabled) {
      this.ReactiveForm.disable();
    }
  }

  GetDataById(Id: string) {}

  OnSave() {
    if (this.ReactiveForm.valid) {
      this.Save.emit(this.ReactiveForm.getRawValue());
    } else this.ReactiveForm.markAllAsTouched();
  }

  OnDelete() {
    this.Delete.emit(this.ReactiveForm.getRawValue());
  }
}
