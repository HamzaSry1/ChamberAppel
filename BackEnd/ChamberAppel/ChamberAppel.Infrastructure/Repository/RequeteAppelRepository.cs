using ChamberAppel.Domain.DTOs;
using ChamberAppel.Domain.Models;
using ChamberAppel.Domain.Repository;
using ChamberAppel.Infrastructure.Data;
using Microsoft.EntityFrameworkCore;

namespace ChamberAppel.Infrastructure.Repository
{
    internal class RequeteAppelRepository : BaseRepository<RequeteAppel>, IRequeteAppelRepository
    {
        private readonly ApplicationDbContext _dbContext;
        public RequeteAppelRepository(ApplicationDbContext dbContext) : base(dbContext)
        {
            _dbContext = dbContext;
        }

        public async Task<DatatableResponse<DtoRequeteAppel>> GetAllAsync(DtoFiltreRequeteAppele? filter, DtoPagination? pagination)
        {
            var dbSet = _dbContext.RequetesAppel
                  .Include(table => table.CRC)
                  .Where(x => x.IsActive == 1);

            IQueryable<RequeteAppel> query = dbSet;

            var response = new DatatableResponse<DtoRequeteAppel>
            {
                RecordTotal = await query.CountAsync(),
            };

            if (filter != null)
            {

                if (!string.IsNullOrEmpty(filter.Numero_Dossier))
                {
                    query = query.Where(x => x.Numero_Dossier == filter.Numero_Dossier);
                }

                if (!string.IsNullOrEmpty(filter.Appelant))
                {
                    query = query.Where(x => x.Appelant == filter.Appelant);
                }

                if (filter.Emis_En_Date_Du.HasValue)
                {
                    query = query.Where(x => x.Emis_En_Date_Du.Value.Date == filter.Emis_En_Date_Du.Value.Date);
                }

                if (filter.IdCRC != null)
                {
                    query = query.Where(x => x.IdCRC == filter.IdCRC);
                }

                if (!string.IsNullOrEmpty(filter.Centre_Comptable))
                {
                    query = query.Where(x => x.Centre_Comptable == filter.Centre_Comptable);
                }

                if (filter.Exercice_fiscal.HasValue)
                {
                    query = query.Where(x => x.Exercice_fiscal == filter.Exercice_fiscal.Value.Date);
                }

                if (!string.IsNullOrEmpty(filter.Numero_Jugement_Faisant_Objet_De_Appel))
                {
                    query = query.Where(x => x.Numero_Jugement_Faisant_Objet_De_Appel == filter.Numero_Jugement_Faisant_Objet_De_Appel);
                }

                if (!string.IsNullOrEmpty(filter.MotsCle))
                {
                    query = query.Where(x =>
                           x.Numero_Dossier.Trim().Contains(filter.MotsCle.Trim())
                        || x.Appelant.Trim().Contains(filter.MotsCle.Trim())
                        || x.Numero_Jugement_Faisant_Objet_De_Appel.Trim().Contains(filter.MotsCle.Trim())
                        || x.Centre_Comptable.Trim().Contains(filter.MotsCle.Trim())
                        || x.CRC.Label.Trim().Contains(filter.MotsCle.Trim())
                       );
                }
            }

            response.RecordFiltred = query.Count();

            if (pagination != null)
            {
                query = ApplyPagination(query, pagination);
            }

            response.Data = await query.Select(x => new DtoRequeteAppel
            {
                Id = x.Id,
                Numero_Dossier = x.Numero_Dossier,
                Appelant = x.Appelant,
                Numero_Jugement_Faisant_Objet_De_Appel = x.Numero_Jugement_Faisant_Objet_De_Appel,
                Emis_En_Date_Du = x.Emis_En_Date_Du.Value.ToString("yyyy/MM/dd"),
                CRC = x.CRC.Label,
                Centre_Comptable = x.Centre_Comptable,
                Exercice_fiscal = x.Exercice_fiscal.Value.ToString("yyyy/MM/dd"),
                Date_Enregistrement_Requete_Cour_Regionale_Des_Comptes = x.Date_Enregistrement_Requete_Cour_Regionale_Des_Comptes.Value.ToString("yyyy/MM/dd"),
                Conseiller_Rapporteur = x.Conseiller_Rapporteur,
                Date_Ordonnance_Designation_Conseiller_Rapporteur = x.Date_Ordonnance_Designation_Conseiller_Rapporteur.Value.ToString("yyyy/MM/dd"),
                Conseiller_Rapporteur_Remplacant = x.Conseiller_Rapporteur_Remplacant,
                Date_Ordonnance_Designation_Conseiller_Rapporteur_Remplacant = x.Date_Ordonnance_Designation_Conseiller_Rapporteur_Remplacant.Value.ToString("yyyy/MM/dd"),
                Date_Demande_Documents_Supplementaires = x.Date_Demande_Documents_Supplementaires.Value.ToString("yyyy/MM/dd"),
                Date_Envoi_Requete_Parties = x.Date_Envoi_Requete_Parties.Value.ToString("yyyy/MM/dd"),
                Parties_Agent_du_Roi_au_CRC = x.Parties_Agent_du_Roi_au_CRC,
                Parties_Entrepot_Regional = x.Parties_Entrepot_Regional,
                Parties_Travailleur_du_territoire = x.Parties_Travailleur_du_territoire,
                Parties_President_de_la_Commune = x.Parties_President_de_la_Commune,
                Date_de_reception_par_les_parties_Agent_du_Roi_au_CRC = x.Date_de_reception_par_les_parties_Agent_du_Roi_au_CRC.Value.ToString("yyyy/MM/dd"),
                Date_de_reception_par_les_parties_Entrepot_Regional = x.Date_de_reception_par_les_parties_Entrepot_Regional.Value.ToString("yyyy/MM/dd"),
                Date_de_reception_par_les_parties_Travailleur_du_territoire = x.Date_de_reception_par_les_parties_Travailleur_du_territoire.Value.ToString("yyyy/MM/dd"),
                Date_de_reception_par_les_parties_President_de_la_Commune = x.Date_de_reception_par_les_parties_President_de_la_Commune.Value.ToString("yyyy/MM/dd"),
                Reponse_au_memoire_d_appel_Agent_du_Roi_au_CRC = x.Reponse_au_memoire_d_appel_Agent_du_Roi_au_CRC,
                Reponse_au_memoire_d_appel_Entrepot_Regional = x.Reponse_au_memoire_d_appel_Entrepot_Regional,
                Reponse_au_memoire_d_appel_Travailleur_du_territoire = x.Reponse_au_memoire_d_appel_Travailleur_du_territoire,
                Reponse_au_memoire_d_appel_President_de_la_Commune = x.Reponse_au_memoire_d_appel_President_de_la_Commune,
                Date_Preparation_Rapport = x.Date_Preparation_Rapport.Value.ToString("yyyy/MM/dd"),
                Designation_du_Conseiller_Reviseur = x.Designation_du_Conseiller_Reviseur,
                Date_Designation_du_Conseiller_Reviseur = x.Date_Designation_du_Conseiller_Reviseur.Value.ToString("yyyy/MM/dd"),
                Designation_du_Conseiller_Reviseur_Remplacant = x.Designation_du_Conseiller_Reviseur_Remplacant,
                Date_Designation_du_Conseiller_Reviseur_Remplacant = x.Date_Designation_du_Conseiller_Reviseur_Remplacant.Value.ToString("yyyy/MM/dd"),
                Date_de_preparation_de_l_avis_de_l_examinateur = x.Date_de_preparation_de_l_avis_de_l_examinateur.Value.ToString("yyyy/MM/dd"),
                Date_Transmission_Dossier_Ministere_Public = x.Date_Transmission_Dossier_Ministere_Public.Value.ToString("yyyy/MM/dd"),
                Date_Retour_Dossier_Ministere_Public = x.Date_Retour_Dossier_Ministere_Public.Value.ToString("yyyy/MM/dd"),
                Date_Conclusions_Ministere_Public = x.Date_Conclusions_Ministere_Public.Value.ToString("yyyy/MM/dd"),
                Numero_Conclusions_Ministere_Public = x.Numero_Conclusions_Ministere_Public,
                Date_de_la_session = x.Date_de_la_session.Value.ToString("yyyy/MM/dd"),
                Dispositif_Decision = x.Dispositif_Decision,
                Numero_Decision = x.Numero_Decision,
                Date_d_envoi_de_la_decision_pour_notifier_les_parties = x.Date_d_envoi_de_la_decision_pour_notifier_les_parties.Value.ToString("yyyy/MM/dd"),
                Date_de_reception_par_le_comptable_d_une_copie_de_la_decision = x.Date_de_reception_par_le_comptable_d_une_copie_de_la_decision.Value.ToString("yyyy/MM/dd"),
                UpdatedBy = x.UpdatedBy,
                UpdateTime = x.UpdateTime.Value.ToString("yyyy/MM/dd"),
                IsActive = x.IsActive
            }).ToListAsync();

            return response;
        }
        private IQueryable<RequeteAppel> ApplyPagination(IQueryable<RequeteAppel> query, DtoPagination pagination)
        {
            // Apply pagination
            query = query.Skip(((pagination?.PageNumber ?? 1) - 1) * (pagination?.PageSize ?? 5)).Take(pagination?.PageSize ?? 5);

            // Apply ordering
            if (!string.IsNullOrEmpty(pagination?.OrderBy))
            {
                if ("Numero_Dossier" == pagination.OrderBy)
                {
                    query = pagination.OrderByDirection == "desc" ?
                        query.OrderByDescending(e => e.Numero_Dossier) : query.OrderBy(e => e.Numero_Dossier);
                }
                if ("Appelant" == pagination.OrderBy)
                {
                    query = pagination.OrderByDirection == "desc" ?
                        query.OrderByDescending(e => e.Appelant) : query.OrderBy(e => e.Appelant);
                }
                if ("Numero_Jugement_Faisant_Objet_De_Appel" == pagination.OrderBy)
                {
                    query = pagination.OrderByDirection == "desc" ?
                        query.OrderByDescending(e => e.Numero_Jugement_Faisant_Objet_De_Appel) : query.OrderBy(e => e.Numero_Jugement_Faisant_Objet_De_Appel);
                }
                if ("Emis_en_date_du" == pagination.OrderBy)
                {
                    query = pagination.OrderByDirection == "desc" ?
                        query.OrderByDescending(e => e.Emis_En_Date_Du) : query.OrderBy(e => e.Emis_En_Date_Du);
                }
                if ("CRC" == pagination.OrderBy)
                {
                    query = pagination.OrderByDirection == "desc" ?
                        query.OrderByDescending(e => e.CRC) : query.OrderBy(e => e.CRC);
                }
                if ("Centre_comptable" == pagination.OrderBy)
                {
                    query = pagination.OrderByDirection == "desc" ? query.OrderByDescending(e => e.Centre_Comptable) : query.OrderBy(e => e.Centre_Comptable);
                }
                if ("Exercice_fiscal" == pagination.OrderBy)
                {
                    query = pagination.OrderByDirection == "desc" ? query.OrderByDescending(e => e.Exercice_fiscal) : query.OrderBy(e => e.Exercice_fiscal);
                }
            }
            return query;
        }
    }
}
