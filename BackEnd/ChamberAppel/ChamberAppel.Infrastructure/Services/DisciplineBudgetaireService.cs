using ChamberAppel.Domain.DTOs;
using ChamberAppel.Domain.Models;
using ChamberAppel.Domain.Repository;
using ChamberAppel.Domain.Services;

namespace ChamberAppel.Infrastructure.Services
{
    public class DisciplineBudgetaireService : BaseService<DisciplineBudgetaire>, IDisciplineBudgetaireService
    {
        private readonly IDisciplineBudgetaireRepository _repository;
        public DisciplineBudgetaireService(IDisciplineBudgetaireRepository repository) : base(repository)
        {
            _repository = repository;
        }

        public async Task<List<DtoExportDisciplineBudgetaire>> ExporterAsync(DtoFiltreDisciplineBudgetaire? filter, DtoPagination? pagination)
        {
            var res = await _repository.GetAllAsync(filter, pagination);

            return res.Data.Select(x => new DtoExportDisciplineBudgetaire
            {
                Numero_Dossier = x.Numero_Dossier ?? "",
                Appelant = x.Appelant ?? "",
                Numero_Jugement_Faisant_Objet_De_Appel = x.Numero_Jugement_Faisant_Objet_De_Appel,
                Emis_En_Date_Du = x.Emis_En_Date_Du,
                CRC = x.CRC,
                Centre_Comptable = x.Centre_Comptable ?? "",
                Date_Enregistrement_Requete_Cour_Regionale_Des_Comptes = x.Date_Enregistrement_Requete_Cour_Regionale_Des_Comptes,
                Date_Requisition_Ministere_Public = x.Date_Requisition_Ministere_Public,
                Numero_Requisition_Ministere_Public = x.Numero_Requisition_Ministere_Public,
                Date_Ordonnance_Designation_Conseiller_Rapporteur = x.Date_Ordonnance_Designation_Conseiller_Rapporteur,
                Numero_Ordonnance_Designation_Conseiller_Rapporteur = x.Numero_Ordonnance_Designation_Conseiller_Rapporteur,
                Conseiller_Rapporteur = x.Conseiller_Rapporteur,
                Date_Ordonnance_Designation_Conseiller_Rapporteur_Remplacant = x.Date_Ordonnance_Designation_Conseiller_Rapporteur_Remplacant,
                Numero_Ordonnance_Designation_Conseiller_Rapporteur_Remplacant = x.Numero_Ordonnance_Designation_Conseiller_Rapporteur_Remplacant,
                Conseiller_Rapporteur_Remplacant = x.Conseiller_Rapporteur_Remplacant,
                Date_Envoi_Requete_Parties = x.Date_Envoi_Requete_Parties,

                Parties_Agent_du_Roi_au_CRC = x.Parties_Agent_du_Roi_au_CRC,
                Parties_Entrepot_Regional = x.Parties_Entrepot_Regional,
                Parties_Travailleur_du_territoire = x.Parties_Travailleur_du_territoire,
                Parties_President_de_la_Commune = x.Parties_President_de_la_Commune,
                Date_de_reception_par_les_parties_Agent_du_Roi_au_CRC = x.Date_de_reception_par_les_parties_Agent_du_Roi_au_CRC,
                Date_de_reception_par_les_parties_Entrepot_Regional = x.Date_de_reception_par_les_parties_Entrepot_Regional,
                Date_de_reception_par_les_parties_Travailleur_du_territoire = x.Date_de_reception_par_les_parties_Travailleur_du_territoire,
                Date_de_reception_par_les_parties_President_de_la_Commune = x.Date_de_reception_par_les_parties_President_de_la_Commune,
                Reponse_au_memoire_d_appel_Agent_du_Roi_au_CRC = x.Reponse_au_memoire_d_appel_Agent_du_Roi_au_CRC,
                Reponse_au_memoire_d_appel_Entrepot_Regional = x.Reponse_au_memoire_d_appel_Entrepot_Regional,
                Reponse_au_memoire_d_appel_Travailleur_du_territoire = x.Reponse_au_memoire_d_appel_Travailleur_du_territoire,
                Reponse_au_memoire_d_appel_President_de_la_Commune = x.Reponse_au_memoire_d_appel_President_de_la_Commune,

                Date_Demande_Documents_Supplementaires = x.Date_Demande_Documents_Supplementaires,
                Date_Convocation_Interesse_Audience = x.Date_Convocation_Interesse_Audience,
                Date_Enquete_Sur_Le_Terrain = x.Date_Enquete_Sur_Le_Terrain,
                Date_Preparation_Rapport = x.Date_Preparation_Rapport,
                Date_Transmission_Dossier_Ministere_Public = x.Date_Transmission_Dossier_Ministere_Public,
                Date_Conclusions_Ministere_Public = x.Date_Conclusions_Ministere_Public,
                Numero_Conclusions_Ministere_Public = x.Numero_Conclusions_Ministere_Public,
                Date_Reception_Convocation_Interesse_Consultation = x.Date_Reception_Convocation_Interesse_Consultation,
                Date_Reception_Convocation_Avocat_Consultation = x.Date_Reception_Convocation_Avocat_Consultation,
                Date_Consultation_Interesse = x.Date_Consultation_Interesse,
                Date_Consultation_Avocat = x.Date_Consultation_Avocat,
                Date_Retour_Dossier_Greffe_Central = x.Date_Retour_Dossier_Greffe_Central,

                Convocation_Interesse_Audience_Jugement = x.Convocation_Interesse_Audience_Jugement,
                Convocation_Avocat_Audience_Jugement = x.Convocation_Avocat_Audience_Jugement,
                Date_Audience_Jugement = x.Date_Audience_Jugement,
                Convocation_Avocat_Prononce_Jugement = x.Convocation_Avocat_Prononce_Jugement,
                Convocation_Interesse_Prononce_Jugement = x.Convocation_Interesse_Prononce_Jugement,
                Date_Audience_Prononce_Jugement = x.Date_Audience_Prononce_Jugement,

                Dispositif_Decision = x.Dispositif_Decision,
                Numero_Decision = x.Numero_Decision,
                Date_Envoi_Decision_Notification_Parties = x.Date_Envoi_Decision_Notification_Parties,
                Date_Reception_Comptable_Copie_Decision = x.Date_Reception_Comptable_Copie_Decision

            })
                .OrderBy(x => x.Numero_Dossier)
                .ToList();
        }

        public async Task<DatatableResponse<DtoDisciplineBudgetaire>> GetAllAsync(DtoFiltreDisciplineBudgetaire? filter, DtoPagination? pagination)
        {
            return await _repository.GetAllAsync(filter, pagination);
        }
    }
}
