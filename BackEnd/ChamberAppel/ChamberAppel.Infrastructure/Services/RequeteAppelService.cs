using ChamberAppel.Domain.DTOs;
using ChamberAppel.Domain.Models;
using ChamberAppel.Domain.Repository;
using ChamberAppel.Domain.Services;

namespace ChamberAppel.Infrastructure.Services
{
    public class RequeteAppelService : BaseService<RequeteAppel>, IRequeteAppelService
    {
        private readonly IRequeteAppelRepository _repository;
        public RequeteAppelService(IRequeteAppelRepository repository) : base(repository)
        {
            _repository = repository;
        }

        public async Task<List<DtoExportRequeteAppel>> ExportAsync(DtoFiltreRequeteAppele? filter, DtoPagination? pagination)
        {
            var res = await _repository.GetAllAsync(filter, null);

            return res.Data.Select(x => new DtoExportRequeteAppel
            {
                Numero_Dossier = x.Numero_Dossier,
                Appelant = x.Appelant,
                Numero_Jugement_Faisant_Objet_De_Appel = x.Numero_Jugement_Faisant_Objet_De_Appel,
                Emis_En_Date_Du = x.Emis_En_Date_Du,
                CRC = x.CRC,
                Centre_Comptable = x.Centre_Comptable,
                Exercice_fiscal = x.Exercice_fiscal,
                Date_Enregistrement_Requete_Cour_Regionale_Des_Comptes = x.Date_Enregistrement_Requete_Cour_Regionale_Des_Comptes,
                Conseiller_Rapporteur = x.Conseiller_Rapporteur,
                Date_Ordonnance_Designation_Conseiller_Rapporteur = x.Date_Ordonnance_Designation_Conseiller_Rapporteur,
                Conseiller_Rapporteur_Remplacant = x.Conseiller_Rapporteur_Remplacant,
                Date_Ordonnance_Designation_Conseiller_Rapporteur_Remplacant = x.Date_Ordonnance_Designation_Conseiller_Rapporteur_Remplacant,
                Date_Demande_Documents_Supplementaires = x.Date_Demande_Documents_Supplementaires,
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
                Date_Preparation_Rapport = x.Date_Preparation_Rapport,
                Designation_du_Conseiller_Reviseur = x.Designation_du_Conseiller_Reviseur,
                Date_Designation_du_Conseiller_Reviseur = x.Date_Designation_du_Conseiller_Reviseur,
                Designation_du_Conseiller_Reviseur_Remplacant = x.Designation_du_Conseiller_Reviseur_Remplacant,
                Date_Designation_du_Conseiller_Reviseur_Remplacant = x.Date_Designation_du_Conseiller_Reviseur_Remplacant,
                Date_de_preparation_de_l_avis_de_l_examinateur = x.Date_de_preparation_de_l_avis_de_l_examinateur,
                Date_Transmission_Dossier_Ministere_Public = x.Date_Transmission_Dossier_Ministere_Public,
                Date_Retour_Dossier_Ministere_Public = x.Date_Retour_Dossier_Ministere_Public,
                Date_Conclusions_Ministere_Public = x.Date_Conclusions_Ministere_Public,
                Numero_Conclusions_Ministere_Public = x.Numero_Conclusions_Ministere_Public,
                Date_de_la_session = x.Date_de_la_session,
                Dispositif_Decision = x.Dispositif_Decision,
                Numero_Decision = x.Numero_Decision,
                Date_d_envoi_de_la_decision_pour_notifier_les_parties = x.Date_d_envoi_de_la_decision_pour_notifier_les_parties,
                Date_de_reception_par_le_comptable_d_une_copie_de_la_decision = x.Date_de_reception_par_le_comptable_d_une_copie_de_la_decision,
            }).OrderBy(x => x.Numero_Dossier)
                .ToList();
        }

        public async Task<DatatableResponse<DtoRequeteAppel>> GetAllAsync(DtoFiltreRequeteAppele? filter, DtoPagination? pagination)
        {
            return await _repository.GetAllAsync(filter, pagination);
        }
    }
}
