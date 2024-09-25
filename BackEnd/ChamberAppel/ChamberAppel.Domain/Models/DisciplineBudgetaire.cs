using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace ChamberAppel.Domain.Models
{
    public class DisciplineBudgetaire
    {
        [Key]
        public Guid Id { get; set; }
        public string? Numero_de_dossier { get; set; }
        public string? Appelant { get; set; }
        public string? Numero_de_verdict_appelant { get; set; }
        [DataType(DataType.Date)]
        public DateTime? Publie_le { get; set; }
        public Guid? IdCRC { get; set; }
        public string? Centre_comptable { get; set; }
        [DataType(DataType.Date)]
        public DateTime? Date_enregistrement_de_la_requete_aupres_du_CRC { get; set; }

        public string? Date_de_la_requete_du_ministere_public { get; set; }
        public string? Numero_de_la_requete_du_ministere_public { get; set; }

        public string? Date_de_ordre_de_nomination_du_conseiller_programme { get; set; }
        public string? Numero_de_ordre_de_nomination_du_conseiller_programme { get; set; }

        public string? Conseiller_rapporteur { get; set; } = null!; 

        public string? Date_de_arrete_designant_le_rapporteur_successeur { get; set; }
        public string? Numero_de_arrete_designant_le_rapporteur_successeur { get; set; }

        public string? Conseiller_rapporteur_successeur { get; set; } = null!;
        public string? La_date_a_laquelle_la_petition_a_ete_envoyee_aux_parties { get; set; }


        #region les parties

        public string? Parties_Agent_du_Roi_au_CRC { get; set; } 
        public string? Parties_Entrepot_Regional { get; set; } 
        public string? Parties_Travailleur_du_territoire { get; set; } 
        public string? Parties_President_de_la_Commune { get; set; } 

        public DateTime? Date_de_réception_par_les_parties_Agent_du_Roi_au_CRC { get; set; } 
        public DateTime? Date_de_réception_par_les_parties_Entrepot_Regional { get; set; } 
        public DateTime? Date_de_réception_par_les_parties_Travailleur_du_territoire { get; set; } 
        public DateTime? Date_de_réception_par_les_parties_President_de_la_Commune { get; set; } 

        public string? Réponse_au_mémoire_d_appel_Agent_du_Roi_au_CRC { get; set; }
        public string? Réponse_au_mémoire_d_appel_Entrepot_Regional { get; set; }
        public string? Réponse_au_mémoire_d_appel_Travailleur_du_territoire { get; set; }
        public string? Réponse_au_mémoire_d_appel_President_de_la_Commune { get; set; }

        #endregion les parties


        [DataType(DataType.Date)]
        public DateTime? Date_de_demande_de_documents_complementaires { get; set; }
        [DataType(DataType.Date)]
        public DateTime? La_date_a_laquelle_observateur_a_ete_convoque_a_audience { get; set; }
        [DataType(DataType.Date)]
        public DateTime? Date_de_realisation_de_la_recherche_sur_le_terrain { get; set; }
        [DataType(DataType.Date)]
        public DateTime? Date_a_laquelle_le_rapport_a_ete_prepare { get; set; }
        [DataType(DataType.Date)]
        public DateTime? La_date_a_laquelle_le_dossier_a_ete_transmis_au_ministere_public { get; set; }
        public string? Date_des_conclusions_du_ministere_public { get; set; }
        public string? Numero_des_conclusions_du_ministere_public { get; set; }
        public string? Date_des_conclusions_du_parquet { get; set; }
        public string? Numero_des_conclusions_du_parquet { get; set; }
        [DataType(DataType.Date)]
        public DateTime? Date_a_laquelle_le_suiveur_a_reçu_la_convocation_pour_inspection { get; set; }
        [DataType(DataType.Date)]
        public DateTime? Date_a_laquelle_avocat_a_recu_la_convocation_pour_inspection { get; set; }
        [DataType(DataType.Date)]
        public DateTime? Date_a_laquelle_le_suiveur_a_ete_informe { get; set; }
        [DataType(DataType.Date)]
        public DateTime? Date_a_laquelle_avocat_a_ete_informe { get; set; }
        [DataType(DataType.Date)]
        public DateTime? Date_a_laquelle_le_dossier_a_ete_renvoye_par_le_bureau_central_de_contrôle { get; set; }
        public string? Convoquer_observateur_et_avocat_pour_assister_a_audience_de_determination_de_la_peine { get; set; }
        [DataType(DataType.Date)]
        public DateTime? Date_audience_du_jugement { get; set; }
        [DataType(DataType.Date)]
        public DateTime? Date_de_audience_de_determination_de_la_peine { get; set; }
        public string? Operateur_de_decision { get; set; }
        public string? Numero_de_resolution { get; set; }
        [DataType(DataType.Date)]
        public DateTime? La_date_a_laquelle_la_decision_a_ete_envoyee_pour_notification_aux_parties { get; set; }
        [DataType(DataType.Date)]
        public DateTime? La_date_a_laquelle_le_comptable_a_reçu_une_copie_de_la_decision { get; set; }

        [ForeignKey(nameof(IdCRC))]
        public CRC? CRC { get; set; }
    }
}