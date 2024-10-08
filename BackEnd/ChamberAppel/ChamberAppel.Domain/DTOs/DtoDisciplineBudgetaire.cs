using System.ComponentModel.DataAnnotations;

namespace ChamberAppel.Domain.DTOs
{
    public class DtoDisciplineBudgetaire
    {
        public Guid Id { get; set; }

        [Display(Name = "Numero Dossier")]
        public string? Numero_Dossier { get; set; }

        [Display(Name = "Appelant")]
        public string? Appelant { get; set; }

        [Display(Name = "Numero Jugement Faisant Objet De Appel")]
        public string? Numero_Jugement_Faisant_Objet_De_Appel { get; set; }

        [Display(Name = "Emis En Date Du")]
        public string? Emis_En_Date_Du { get; set; }

        [Display(Name = "CRC")]
        public string? CRC { get; set; }

        [Display(Name = "Centre Comptable")]
        public string? Centre_Comptable { get; set; }

        [Display(Name = "Date Enregistrement Requete Cour Regionale Des Comptes")]
        public string? Date_Enregistrement_Requete_Cour_Regionale_Des_Comptes { get; set; }

        [Display(Name = "Date Requisition Ministere Public")]
        public string? Date_Requisition_Ministere_Public { get; set; }

        [Display(Name = "Numero Requisition Ministere Public")]
        public string? Numero_Requisition_Ministere_Public { get; set; }

        [Display(Name = "Date Ordonnance Designation Conseiller Rapporteur")]
        public string? Date_Ordonnance_Designation_Conseiller_Rapporteur { get; set; }

        [Display(Name = "Numero Ordonnance Designation Conseiller Rapporteur")]
        public string? Numero_Ordonnance_Designation_Conseiller_Rapporteur { get; set; }

        [Display(Name = "Conseiller Rapporteur")]
        public string? Conseiller_Rapporteur { get; set; }

        [Display(Name = "Date Ordonnance Designation Conseiller Rapporteur Remplacant")]
        public string? Date_Ordonnance_Designation_Conseiller_Rapporteur_Remplacant { get; set; }

        [Display(Name = "Numero Ordonnance Designation Conseiller Rapporteur Remplacant")]
        public string? Numero_Ordonnance_Designation_Conseiller_Rapporteur_Remplacant { get; set; }

        [Display(Name = "Conseiller Rapporteur Remplacant")]
        public string? Conseiller_Rapporteur_Remplacant { get; set; }

        [Display(Name = "Date Envoi Requete Parties")]
        public string? Date_Envoi_Requete_Parties { get; set; }

        [Display(Name = "Parties Agent du Roi au CRC")]
        public string? Parties_Agent_du_Roi_au_CRC { get; set; }

        [Display(Name = "Parties Entrepot Regional")]
        public string? Parties_Entrepot_Regional { get; set; }

        [Display(Name = "Parties Travailleur du Territoire")]
        public string? Parties_Travailleur_du_territoire { get; set; }

        [Display(Name = "Parties President de la Commune")]
        public string? Parties_President_de_la_Commune { get; set; }

        [Display(Name = "Date de Reception par les Parties Agent du Roi au CRC")]
        public string? Date_de_reception_par_les_parties_Agent_du_Roi_au_CRC { get; set; }

        [Display(Name = "Date de Reception par les Parties Entrepot Regional")]
        public string? Date_de_reception_par_les_parties_Entrepot_Regional { get; set; }

        [Display(Name = "Date de Reception par les Parties Travailleur du Territoire")]
        public string? Date_de_reception_par_les_parties_Travailleur_du_territoire { get; set; }

        [Display(Name = "Date de Reception par les Parties President de la Commune")]
        public string? Date_de_reception_par_les_parties_President_de_la_Commune { get; set; }

        [Display(Name = "Reponse au Memoire d'Appel Agent du Roi au CRC")]
        public string? Reponse_au_memoire_d_appel_Agent_du_Roi_au_CRC { get; set; }

        [Display(Name = "Reponse au Memoire d'Appel Entrepot Regional")]
        public string? Reponse_au_memoire_d_appel_Entrepot_Regional { get; set; }

        [Display(Name = "Reponse au Memoire d'Appel Travailleur du Territoire")]
        public string? Reponse_au_memoire_d_appel_Travailleur_du_territoire { get; set; }

        [Display(Name = "Reponse au Memoire d'Appel President de la Commune")]
        public string? Reponse_au_memoire_d_appel_President_de_la_Commune { get; set; }

        [Display(Name = "Date Demande Documents Supplementaires")]
        public string? Date_Demande_Documents_Supplementaires { get; set; }

        [Display(Name = "Date Convocation Interesse Audience")]
        public string? Date_Convocation_Interesse_Audience { get; set; }

        [Display(Name = "Date Enquete Sur Le Terrain")]
        public string? Date_Enquete_Sur_Le_Terrain { get; set; }

        [Display(Name = "Date Preparation Rapport")]
        public string? Date_Preparation_Rapport { get; set; }

        [Display(Name = "Date Transmission Dossier Ministere Public")]
        public string? Date_Transmission_Dossier_Ministere_Public { get; set; }

        [Display(Name = "Date Conclusions Ministere Public")]
        public string? Date_Conclusions_Ministere_Public { get; set; }

        [Display(Name = "Numero Conclusions Ministere Public")]
        public string? Numero_Conclusions_Ministere_Public { get; set; }

        [Display(Name = "Date Reception Convocation Interesse Consultation")]
        public string? Date_Reception_Convocation_Interesse_Consultation { get; set; }

        [Display(Name = "Date Reception Convocation Avocat Consultation")]
        public string? Date_Reception_Convocation_Avocat_Consultation { get; set; }

        [Display(Name = "Date Consultation Interesse")]
        public string? Date_Consultation_Interesse { get; set; }

        [Display(Name = "Date Consultation Avocat")]
        public string? Date_Consultation_Avocat { get; set; }

        [Display(Name = "Date Retour Dossier Greffe Central")]
        public string? Date_Retour_Dossier_Greffe_Central { get; set; }

        [Display(Name = "Convocation Interesse Audience Jugement")]
        public string? Convocation_Interesse_Audience_Jugement { get; set; }

        [Display(Name = "Convocation Avocat Audience Jugement")]
        public string? Convocation_Avocat_Audience_Jugement { get; set; }

        [Display(Name = "Date Audience Jugement")]
        public string? Date_Audience_Jugement { get; set; }

        [Display(Name = "Convocation Avocat Prononce Jugement")]
        public string? Convocation_Avocat_Prononce_Jugement { get; set; }

        [Display(Name = "Convocation Interesse Prononce Jugement")]
        public string? Convocation_Interesse_Prononce_Jugement { get; set; }

        [Display(Name = "Date Audience Prononce Jugement")]
        public string? Date_Audience_Prononce_Jugement { get; set; }

        [Display(Name = "Dispositif Decision")]
        public string? Dispositif_Decision { get; set; }

        [Display(Name = "Numero Decision")]
        public string? Numero_Decision { get; set; }

        [Display(Name = "Date Envoi Decision Notification Parties")]
        public string? Date_Envoi_Decision_Notification_Parties { get; set; }

        [Display(Name = "Date Reception Comptable Copie Decision")]
        public string? Date_Reception_Comptable_Copie_Decision { get; set; }

        public string? UpdatedBy { get; set; }

        public string? UpdateTime { get; set; }

        public int IsActive { get; set; }
    }
}
