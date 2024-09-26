import { Component, EventEmitter, Input, Output } from '@angular/core';
import { FormControl, FormGroup, Validators } from '@angular/forms';
import { ActivatedRoute } from '@angular/router';
import { NgxSpinnerService } from 'ngx-spinner';
import { AppMessageService } from 'src/app/app-message.service';
import { DisciplineBudgetaireApiResponse } from 'src/app/generatedapis/models/DisciplineBudgetaireApiResponse';
import { DisciplineBudgetairesService } from 'src/app/generatedapis/services/DisciplineBudgetairesService';
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
    numero_Dossier: new FormControl(),
    appelant: new FormControl(),
    numero_Jugement_Faisant_Objet_De_Appel: new FormControl(),
    emis_En_Date_Du: new FormControl(),
    idCRC: new FormControl(),
    centre_Comptable: new FormControl(),
    date_Enregistrement_Requete_Cour_Regionale_Des_Comptes: new FormControl(),
    date_Requisition_Ministere_Public: new FormControl(),
    numero_Requisition_Ministere_Public: new FormControl(),

    date_Ordonnance_Designation_Conseiller_Rapporteur: new FormControl(),
    numero_Ordonnance_Designation_Conseiller_Rapporteur: new FormControl(),
    conseiller_Rapporteur: new FormControl(),
    date_Ordonnance_Designation_Conseiller_Rapporteur_Remplacant:new FormControl(),
    numero_Ordonnance_Designation_Conseiller_Rapporteur_Remplacant:new FormControl(),
    conseiller_Rapporteur_Remplacant: new FormControl(),
    date_Envoi_Requete_Parties: new FormControl(),

    //region Parties
    parties_Agent_du_Roi_au_CRC: new FormControl(),
    parties_Entrepot_Regional: new FormControl(),
    parties_Travailleur_du_territoire: new FormControl(),
    parties_President_de_la_Commune: new FormControl(),
    
    date_de_reception_par_les_parties_Agent_du_Roi_au_CRC: new FormControl(),
    date_de_reception_par_les_parties_Entrepot_Regional: new FormControl(),
    date_de_reception_par_les_parties_Travailleur_du_territoire: new FormControl(),
    date_de_reception_par_les_parties_President_de_la_Commune:new FormControl(),
   
    reponse_au_memoire_d_appel_Agent_du_Roi_au_CRC: new FormControl(),
    reponse_au_memoire_d_appel_Entrepot_Regional: new FormControl(),
    reponse_au_memoire_d_appel_Travailleur_du_territoire: new FormControl(),
    reponse_au_memoire_d_appel_President_de_la_Commune: new FormControl(),
    //endregion Parties
    
    date_Demande_Documents_Supplementaires: new FormControl(),
    date_Convocation_Interesse_Audience: new FormControl(),
    date_Enquete_Sur_Le_Terrain: new FormControl(),
    date_Preparation_Rapport: new FormControl(),
    date_Transmission_Dossier_Ministere_Public: new FormControl(),
    date_Conclusions_Ministere_Public: new FormControl(),
    numero_Conclusions_Ministere_Public: new FormControl(),
    date_Reception_Convocation_Interesse_Consultation: new FormControl(),
    date_Reception_Convocation_Avocat_Consultation: new FormControl(),
    date_Consultation_Interesse: new FormControl(),
    date_Consultation_Avocat: new FormControl(),
    date_Retour_Dossier_Greffe_Central: new FormControl(),
    convocation_Interesse_Audience_Jugement: new FormControl(),
    convocation_Avocat_Audience_Jugement: new FormControl(),
    date_Audience_Jugement: new FormControl(),
    convocation_Avocat_Prononce_Jugement: new FormControl(),
    convocation_Interesse_Prononce_Jugement: new FormControl(),
    date_Audience_Prononce_Jugement: new FormControl(),
    dispositif_Decision: new FormControl(),
    numero_Decision: new FormControl(),
    date_Envoi_Decision_Notification_Parties: new FormControl(),
    date_Reception_Comptable_Copie_Decision: new FormControl(),
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

  GetDataById(Id: string) {
    this._loader.show();
    DisciplineBudgetairesService.getApiDisciplineBudgetairesGetByIdAsync(Id)
      .then((res: DisciplineBudgetaireApiResponse) => {
        if (res && res.data) {
          this.ReactiveForm.patchValue({
            id: res.data.id,
            numero_Dossier: res.data.numero_Decision,
            appelant: res.data.appelant,
            numero_Jugement_Faisant_Objet_De_Appel:
              res.data.numero_Jugement_Faisant_Objet_De_Appel,
            emis_En_Date_Du: res.data.emis_En_Date_Du,
            idCRC: res.data.idCRC,
            centre_Comptable: res.data.centre_Comptable,
            date_Enregistrement_Requete_Cour_Regionale_Des_Comptes:
              res.data.date_Enregistrement_Requete_Cour_Regionale_Des_Comptes,
            date_Requisition_Ministere_Public:
              res.data.date_Requisition_Ministere_Public,
            numero_Requisition_Ministere_Public:
              res.data.numero_Requisition_Ministere_Public,
            date_Ordonnance_Designation_Conseiller_Rapporteur:
              res.data.date_Ordonnance_Designation_Conseiller_Rapporteur,
            numero_Ordonnance_Designation_Conseiller_Rapporteur:
              res.data.numero_Ordonnance_Designation_Conseiller_Rapporteur,
            conseiller_Rapporteur: res.data.conseiller_Rapporteur,
            date_Ordonnance_Designation_Conseiller_Rapporteur_Remplacant:
              res.data
                .date_Ordonnance_Designation_Conseiller_Rapporteur_Remplacant,
            numero_Ordonnance_Designation_Conseiller_Rapporteur_Remplacant:
              res.data
                .numero_Ordonnance_Designation_Conseiller_Rapporteur_Remplacant,
            conseiller_Rapporteur_Remplacant:
              res.data.conseiller_Rapporteur_Remplacant,
            date_Envoi_Requete_Parties: res.data.date_Envoi_Requete_Parties,

            // Parties
            parties_Agent_du_Roi_au_CRC: res.data.parties_Agent_du_Roi_au_CRC,
            parties_Entrepot_Regional: res.data.parties_Entrepot_Regional,
            parties_Travailleur_du_territoire:
              res.data.parties_Travailleur_du_territoire,
            parties_President_de_la_Commune:
              res.data.parties_President_de_la_Commune,

            // Reception dates for parties
            date_de_reception_par_les_parties_Agent_du_Roi_au_CRC:
              res.data.date_de_reception_par_les_parties_Agent_du_Roi_au_CRC,
            date_de_reception_par_les_parties_Entrepot_Regional:
              res.data.date_de_reception_par_les_parties_Entrepot_Regional,
            date_de_reception_par_les_parties_Travailleur_du_territoire:
              res.data
                .date_de_reception_par_les_parties_Travailleur_du_territoire,
            date_de_reception_par_les_parties_President_de_la_Commune:
              res.data
                .date_de_reception_par_les_parties_President_de_la_Commune,

            // Response to memo
            reponse_au_memoire_d_appel_Agent_du_Roi_au_CRC:
              res.data.reponse_au_memoire_d_appel_Agent_du_Roi_au_CRC,
            reponse_au_memoire_d_appel_Entrepot_Regional:
              res.data.reponse_au_memoire_d_appel_Entrepot_Regional,
            reponse_au_memoire_d_appel_Travailleur_du_territoire:
              res.data.reponse_au_memoire_d_appel_Travailleur_du_territoire,
            reponse_au_memoire_d_appel_President_de_la_Commune:
              res.data.reponse_au_memoire_d_appel_President_de_la_Commune,

            // Other fields
            date_Demande_Documents_Supplementaires:
              res.data.date_Demande_Documents_Supplementaires,
            date_Convocation_Interesse_Audience:
              res.data.date_Convocation_Interesse_Audience,
            date_Enquete_Sur_Le_Terrain: res.data.date_Enquete_Sur_Le_Terrain,
            date_Preparation_Rapport: res.data.date_Preparation_Rapport,
            date_Transmission_Dossier_Ministere_Public:
              res.data.date_Transmission_Dossier_Ministere_Public,
            date_Conclusions_Ministere_Public:
              res.data.date_Conclusions_Ministere_Public,
            numero_Conclusions_Ministere_Public:
              res.data.numero_Conclusions_Ministere_Public,
            date_Reception_Convocation_Interesse_Consultation:
              res.data.date_Reception_Convocation_Interesse_Consultation,
            date_Reception_Convocation_Avocat_Consultation:
              res.data.date_Reception_Convocation_Avocat_Consultation,
            date_Consultation_Interesse: res.data.date_Consultation_Interesse,
            date_Consultation_Avocat: res.data.date_Consultation_Avocat,
            date_Retour_Dossier_Greffe_Central:
              res.data.date_Retour_Dossier_Greffe_Central,
            convocation_Interesse_Audience_Jugement:
              res.data.convocation_Interesse_Audience_Jugement,
            convocation_Avocat_Audience_Jugement:
              res.data.convocation_Avocat_Audience_Jugement,
            date_Audience_Jugement: res.data.date_Audience_Jugement,
            convocation_Avocat_Prononce_Jugement:
              res.data.convocation_Avocat_Prononce_Jugement,
            convocation_Interesse_Prononce_Jugement:
              res.data.convocation_Interesse_Prononce_Jugement,
            date_Audience_Prononce_Jugement:
              res.data.date_Audience_Prononce_Jugement,
            dispositif_Decision: res.data.dispositif_Decision,
            numero_Decision: res.data.numero_Decision,
            date_Envoi_Decision_Notification_Parties:
              res.data.date_Envoi_Decision_Notification_Parties,
            date_Reception_Comptable_Copie_Decision:
              res.data.date_Reception_Comptable_Copie_Decision,
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
