import { DatePipe } from '@angular/common';
import { Component, EventEmitter, Input, OnInit, Output } from '@angular/core';
import { FormControl, FormGroup, Validators } from '@angular/forms';
import { ActivatedRoute } from '@angular/router';
import { Guid } from 'guid-typescript';
import { NgxSpinnerService } from 'ngx-spinner';
import { AppMessageService } from 'src/app/app-message.service';
import { CRC } from 'src/app/generatedapis/models/CRC';
import { CRCListApiResponse } from 'src/app/generatedapis/models/CRCListApiResponse';
import { RequeteAppelApiResponse } from 'src/app/generatedapis/models/RequeteAppelApiResponse';
import { CrCsService } from 'src/app/generatedapis/services/CrCsService';
import { RequetesAppelService } from 'src/app/generatedapis/services/RequetesAppelService';
import { Const } from 'src/app/Helpers/Const';
import { ButtonStyle } from 'src/app/shared/button-style';

@Component({
  selector: 'app-chamber-appel-form',
  templateUrl: './chamber-appel-form.component.html',
  styleUrls: ['./chamber-appel-form.component.scss']
})
export class ChamberAppelFormComponent implements OnInit {
  public Id!: string;
  public validationMessages = Const.ValidationMessages;
  public AddOrEditButtonStyle!: string;
  public DeleteButtonStyle = ButtonStyle.danger;
  public ReturnButtonStyle = ButtonStyle.secondary;

  public CRCs!: CRC[];
  public DefaultSelectOption!: string;

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
    private _datePipe: DatePipe,
    private _activatedRouter: ActivatedRoute
  ) {
    this.Id = this._activatedRouter.snapshot.params['id'];
  }

  ReactiveForm = new FormGroup({
    id: new FormControl({ value: Guid.EMPTY, disabled: true }),
    numero_Dossier: new FormControl('', [Validators.required]),
    appelant: new FormControl('', [Validators.required]),
    numero_Jugement_Faisant_Objet_De_Appel: new FormControl('', [Validators.required]),
    emis_En_Date_Du: new FormControl('', [Validators.required]),
    idCRC: new FormControl('', [Validators.required]),
    centre_Comptable: new FormControl('', [Validators.required]),
    exercice_fiscal: new FormControl('', [Validators.required]),
    date_Enregistrement_Requete_Cour_Regionale_Des_Comptes: new FormControl('', [Validators.required]),
    date_Ordonnance_Designation_Conseiller_Rapporteur: new FormControl(),
    conseiller_Rapporteur: new FormControl(),
    date_Ordonnance_Designation_Conseiller_Rapporteur_Remplacant: new FormControl(),
    conseiller_Rapporteur_Remplacant: new FormControl(),
    date_Demande_Documents_Supplementaires: new FormControl(),
    date_Envoi_Requete_Parties: new FormControl(),

    //region Parties
    parties_Agent_du_Roi_au_CRC: new FormControl(),
    parties_Entrepot_Regional: new FormControl(),
    parties_Travailleur_du_territoire: new FormControl(),
    parties_President_de_la_Commune: new FormControl(),

    date_de_reception_par_les_parties_Agent_du_Roi_au_CRC: new FormControl(),
    date_de_reception_par_les_parties_Entrepot_Regional: new FormControl(),
    date_de_reception_par_les_parties_Travailleur_du_territoire: new FormControl(),
    date_de_reception_par_les_parties_President_de_la_Commune: new FormControl(),

    reponse_au_memoire_d_appel_Agent_du_Roi_au_CRC: new FormControl(),
    reponse_au_memoire_d_appel_Entrepot_Regional: new FormControl(),
    reponse_au_memoire_d_appel_Travailleur_du_territoire: new FormControl(),
    reponse_au_memoire_d_appel_President_de_la_Commune: new FormControl(),
    //endregion Parties

    date_Preparation_Rapport: new FormControl(),
    designation_du_Conseiller_Reviseur: new FormControl(),
    date_Designation_du_Conseiller_Reviseur: new FormControl(),
    designation_du_Conseiller_Reviseur_Remplacant: new FormControl(),
    date_Designation_du_Conseiller_Reviseur_Remplacant: new FormControl(),
    date_de_preparation_de_l_avis_de_l_examinateur: new FormControl(),
    date_Transmission_Dossier_Ministere_Public: new FormControl(),
    date_Retour_Dossier_Ministere_Public: new FormControl(),
    date_Conclusions_Ministere_Public: new FormControl(),
    numero_Conclusions_Ministere_Public: new FormControl(),
    date_de_la_session: new FormControl(),
    dispositif_Decision: new FormControl(),
    numero_Decision: new FormControl(),
    date_d_envoi_de_la_decision_pour_notifier_les_parties: new FormControl(),
    date_de_reception_par_le_comptable_d_une_copie_de_la_decision: new FormControl(),
    updatedBy: new FormControl(),
    updateTime: new FormControl(),
    isActive: new FormControl(),
  });

  ngOnInit(): void {
    this.DefaultSelectOption = this._notify.DefaultSelectOption;
    this.LoadCRC();

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

  LoadCRC() {
    CrCsService.getApiCrCsGetAllAsync().then((res: CRCListApiResponse) => {
      this.CRCs = res.data ?? [];
    });
  }

  GetDataById(Id: string) {
    this._loader.show();
    RequetesAppelService.getApiRequetesAppelGetByIdAsync(Id)
      .then((res: RequeteAppelApiResponse) => {
        if (res && res.data) {
          this.ReactiveForm.patchValue({
            id: res.data.id,
            numero_Dossier: res.data.numero_Dossier,
            appelant: res.data.appelant,
            numero_Jugement_Faisant_Objet_De_Appel: res.data.numero_Jugement_Faisant_Objet_De_Appel,
            emis_En_Date_Du: this._datePipe.transform(res.data.emis_En_Date_Du, 'yyyy-MM-dd'),
            idCRC: res.data.idCRC,
            centre_Comptable: res.data.centre_Comptable,
            exercice_fiscal: this._datePipe.transform(res.data.exercice_fiscal, 'yyyy-MM-dd'),
            date_Enregistrement_Requete_Cour_Regionale_Des_Comptes: this._datePipe.transform(res.data.date_Enregistrement_Requete_Cour_Regionale_Des_Comptes, 'yyyy-MM-dd'),
            date_Ordonnance_Designation_Conseiller_Rapporteur: this._datePipe.transform(res.data.date_Ordonnance_Designation_Conseiller_Rapporteur, 'yyyy-MM-dd'),
            conseiller_Rapporteur: res.data.conseiller_Rapporteur,
            date_Ordonnance_Designation_Conseiller_Rapporteur_Remplacant: this._datePipe.transform(res.data.date_Ordonnance_Designation_Conseiller_Rapporteur_Remplacant, 'yyyy-MM-dd'),
            conseiller_Rapporteur_Remplacant: res.data.conseiller_Rapporteur_Remplacant,
            date_Demande_Documents_Supplementaires: this._datePipe.transform(res.data.date_Demande_Documents_Supplementaires, 'yyyy-MM-dd'),
            date_Envoi_Requete_Parties: this._datePipe.transform(res.data.date_Envoi_Requete_Parties, 'yyyy-MM-dd'),

            // Parties
            parties_Agent_du_Roi_au_CRC: res.data.parties_Agent_du_Roi_au_CRC,
            parties_Entrepot_Regional: res.data.parties_Entrepot_Regional,
            parties_Travailleur_du_territoire: res.data.parties_Travailleur_du_territoire,
            parties_President_de_la_Commune: res.data.parties_President_de_la_Commune,

            // Reception dates for parties
            date_de_reception_par_les_parties_Agent_du_Roi_au_CRC: this._datePipe.transform(res.data.date_de_reception_par_les_parties_Agent_du_Roi_au_CRC, 'yyyy-MM-dd'),
            date_de_reception_par_les_parties_Entrepot_Regional: this._datePipe.transform(res.data.date_de_reception_par_les_parties_Entrepot_Regional, 'yyyy-MM-dd'),
            date_de_reception_par_les_parties_Travailleur_du_territoire: this._datePipe.transform(res.data.date_de_reception_par_les_parties_Travailleur_du_territoire, 'yyyy-MM-dd'),
            date_de_reception_par_les_parties_President_de_la_Commune: this._datePipe.transform(res.data.date_de_reception_par_les_parties_President_de_la_Commune, 'yyyy-MM-dd'),

            // Response to memo
            reponse_au_memoire_d_appel_Agent_du_Roi_au_CRC: res.data.reponse_au_memoire_d_appel_Agent_du_Roi_au_CRC,
            reponse_au_memoire_d_appel_Entrepot_Regional: res.data.reponse_au_memoire_d_appel_Entrepot_Regional,
            reponse_au_memoire_d_appel_Travailleur_du_territoire: res.data.reponse_au_memoire_d_appel_Travailleur_du_territoire,
            reponse_au_memoire_d_appel_President_de_la_Commune: res.data.reponse_au_memoire_d_appel_President_de_la_Commune,

            // Other fields
            date_Preparation_Rapport: this._datePipe.transform(res.data.date_Preparation_Rapport, 'yyyy-MM-dd'),
            designation_du_Conseiller_Reviseur: res.data.designation_du_Conseiller_Reviseur,
            date_Designation_du_Conseiller_Reviseur: this._datePipe.transform(res.data.date_Designation_du_Conseiller_Reviseur, 'yyyy-MM-dd'),
            designation_du_Conseiller_Reviseur_Remplacant: res.data.designation_du_Conseiller_Reviseur_Remplacant,
            date_Designation_du_Conseiller_Reviseur_Remplacant: this._datePipe.transform(res.data.date_Designation_du_Conseiller_Reviseur_Remplacant, 'yyyy-MM-dd'),
            date_de_preparation_de_l_avis_de_l_examinateur: this._datePipe.transform(res.data.date_de_preparation_de_l_avis_de_l_examinateur, 'yyyy-MM-dd'),
            date_Transmission_Dossier_Ministere_Public: this._datePipe.transform(res.data.date_Transmission_Dossier_Ministere_Public, 'yyyy-MM-dd'),
            date_Retour_Dossier_Ministere_Public: this._datePipe.transform(res.data.date_Retour_Dossier_Ministere_Public, 'yyyy-MM-dd'),
            date_Conclusions_Ministere_Public: this._datePipe.transform(res.data.date_Conclusions_Ministere_Public, 'yyyy-MM-dd'),
            numero_Conclusions_Ministere_Public: res.data.numero_Conclusions_Ministere_Public,
            date_de_la_session: this._datePipe.transform(res.data.date_de_la_session, 'yyyy-MM-dd'),
            dispositif_Decision: res.data.dispositif_Decision,
            numero_Decision: res.data.numero_Decision,
            date_d_envoi_de_la_decision_pour_notifier_les_parties: this._datePipe.transform(res.data.date_d_envoi_de_la_decision_pour_notifier_les_parties, 'yyyy-MM-dd'),
            date_de_reception_par_le_comptable_d_une_copie_de_la_decision: this._datePipe.transform(res.data.date_de_reception_par_le_comptable_d_une_copie_de_la_decision, 'yyyy-MM-dd'),

            updatedBy: res.data.updatedBy,
            updateTime: this._datePipe.transform(res.data.updateTime, 'yyyy-MM-dd'),
            isActive: res.data.isActive
          });
        }
      })
      .catch(() => {
        this._notify.Error(AppMessageService.ServerError);
      })
      .finally(() => this._loader.hide());
  }

  OnSave() {
    if (this.ReactiveForm.valid) {
      this.Save.emit(this.ReactiveForm.getRawValue());
    } else this.ReactiveForm.markAllAsTouched();
  }

  OnDelete() {
    this.Delete.emit(this.ReactiveForm.getRawValue());
  }
}
