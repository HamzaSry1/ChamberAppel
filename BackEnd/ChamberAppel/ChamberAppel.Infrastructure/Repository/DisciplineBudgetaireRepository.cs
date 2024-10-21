using ChamberAppel.Domain.DTOs;
using ChamberAppel.Domain.Models;
using ChamberAppel.Domain.Repository;
using ChamberAppel.Infrastructure.Data;
using Microsoft.EntityFrameworkCore;
using System.Diagnostics;

namespace ChamberAppel.Infrastructure.Repository
{
    public class DisciplineBudgetaireRepository
        : BaseRepository<DisciplineBudgetaire>,
        IDisciplineBudgetaireRepository
    {

        private readonly ApplicationDbContext _dbContext;
        public DisciplineBudgetaireRepository
            (ApplicationDbContext dbContext) : base(dbContext)
        {
            _dbContext = dbContext;
        }

        public async Task<DatatableResponse<DtoDisciplineBudgetaire>> GetAllAsync(DtoFiltreDisciplineBudgetaire? filter, DtoPagination? pagination)
        {
            var dbSet = _dbContext.DisciplineBudgetaires
                .Include(table => table.CRC)
                .Where(x => x.IsActive == 1);

            IQueryable<DisciplineBudgetaire> query = dbSet;

            var response = new DatatableResponse<DtoDisciplineBudgetaire>
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

                if (filter.Emis_En_Date_Du != null)
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

                if (!string.IsNullOrEmpty(filter.Conseiller_Rapporteur))
                {
                    query = query.Where(x => x.Conseiller_Rapporteur == filter.Conseiller_Rapporteur);
                }

                if (!string.IsNullOrEmpty(filter.MotsCle))
                {
                    query = query.Where(x =>
                        x.Numero_Dossier.Trim().Contains(filter.MotsCle.Trim())
                        || x.Appelant.Trim().Contains(filter.MotsCle.Trim())
                        || x.Centre_Comptable.Trim().Contains(filter.MotsCle.Trim())
                        || x.CRC.Label.Trim().Contains(filter.MotsCle.Trim())
                        || x.Conseiller_Rapporteur.Trim().Contains(filter.MotsCle.Trim())
                       );
                }
            }

            response.RecordFiltred = query.Count();

            if (pagination != null)
            {
                query = ApplyPagination(query, pagination);
            }

            try
            {
                response.Data = await query.Select(data => new DtoDisciplineBudgetaire
                {
                    Id = data.Id,
                    Numero_Dossier = data.Numero_Dossier ?? "",
                    Appelant = data.Appelant ?? "",
                    Numero_Jugement_Faisant_Objet_De_Appel = data.Numero_Jugement_Faisant_Objet_De_Appel,
                    Emis_En_Date_Du = data.Emis_En_Date_Du.Value.ToString("yyyy/MM/dd"),
                    CRC = data.CRC.Label ?? "",
                    Centre_Comptable = data.Centre_Comptable ?? "",
                    Date_Enregistrement_Requete_Cour_Regionale_Des_Comptes = data.Date_Enregistrement_Requete_Cour_Regionale_Des_Comptes.Value.ToString("yyyy/MM/dd"),
                    Date_Requisition_Ministere_Public = data.Date_Requisition_Ministere_Public.Value.ToString("yyyy/MM/dd"),
                    Numero_Requisition_Ministere_Public = data.Numero_Requisition_Ministere_Public,
                    Date_Ordonnance_Designation_Conseiller_Rapporteur = data.Date_Ordonnance_Designation_Conseiller_Rapporteur.Value.ToString("yyyy/MM/dd"),
                    Numero_Ordonnance_Designation_Conseiller_Rapporteur = data.Numero_Ordonnance_Designation_Conseiller_Rapporteur,
                    Conseiller_Rapporteur = data.Conseiller_Rapporteur,
                    Date_Ordonnance_Designation_Conseiller_Rapporteur_Remplacant = data.Date_Ordonnance_Designation_Conseiller_Rapporteur_Remplacant.Value.ToString("yyyy/MM/dd"),
                    Numero_Ordonnance_Designation_Conseiller_Rapporteur_Remplacant = data.Numero_Ordonnance_Designation_Conseiller_Rapporteur_Remplacant,
                    Conseiller_Rapporteur_Remplacant = data.Conseiller_Rapporteur_Remplacant,
                    Date_Envoi_Requete_Parties = data.Date_Envoi_Requete_Parties.Value.ToString("yyyy/MM/dd"),

                    Parties_Agent_du_Roi_au_CRC = data.Parties_Agent_du_Roi_au_CRC,
                    Parties_Entrepot_Regional = data.Parties_Entrepot_Regional,
                    Parties_Travailleur_du_territoire = data.Parties_Travailleur_du_territoire,
                    Parties_President_de_la_Commune = data.Parties_President_de_la_Commune,
                    Date_de_reception_par_les_parties_Agent_du_Roi_au_CRC = data.Date_de_reception_par_les_parties_Agent_du_Roi_au_CRC.Value.ToString("yyyy/MM/dd"),
                    Date_de_reception_par_les_parties_Entrepot_Regional = data.Date_de_reception_par_les_parties_Entrepot_Regional.Value.ToString("yyyy/MM/dd"),
                    Date_de_reception_par_les_parties_Travailleur_du_territoire = data.Date_de_reception_par_les_parties_Travailleur_du_territoire.Value.ToString("yyyy/MM/dd"),
                    Date_de_reception_par_les_parties_President_de_la_Commune = data.Date_de_reception_par_les_parties_President_de_la_Commune.Value.ToString("yyyy/MM/dd"),
                    Reponse_au_memoire_d_appel_Agent_du_Roi_au_CRC = data.Reponse_au_memoire_d_appel_Agent_du_Roi_au_CRC,
                    Reponse_au_memoire_d_appel_Entrepot_Regional = data.Reponse_au_memoire_d_appel_Entrepot_Regional,
                    Reponse_au_memoire_d_appel_Travailleur_du_territoire = data.Reponse_au_memoire_d_appel_Travailleur_du_territoire,
                    Reponse_au_memoire_d_appel_President_de_la_Commune = data.Reponse_au_memoire_d_appel_President_de_la_Commune,

                    Date_Demande_Documents_Supplementaires = data.Date_Demande_Documents_Supplementaires.Value.ToString("yyyy/MM/dd"),
                    Date_Convocation_Interesse_Audience = data.Date_Convocation_Interesse_Audience.Value.ToString("yyyy/MM/dd"),
                    Date_Enquete_Sur_Le_Terrain = data.Date_Enquete_Sur_Le_Terrain.Value.ToString("yyyy/MM/dd"),
                    Date_Preparation_Rapport = data.Date_Preparation_Rapport.Value.ToString("yyyy/MM/dd"),
                    Date_Transmission_Dossier_Ministere_Public = data.Date_Transmission_Dossier_Ministere_Public.Value.ToString("yyyy/MM/dd"),
                    Date_Conclusions_Ministere_Public = data.Date_Conclusions_Ministere_Public.Value.ToString("yyyy/MM/dd"),
                    Numero_Conclusions_Ministere_Public = data.Numero_Conclusions_Ministere_Public,
                    Date_Reception_Convocation_Interesse_Consultation = data.Date_Reception_Convocation_Interesse_Consultation.Value.ToString("yyyy/MM/dd"),
                    Date_Reception_Convocation_Avocat_Consultation = data.Date_Reception_Convocation_Avocat_Consultation.Value.ToString("yyyy/MM/dd"),
                    Date_Consultation_Interesse = data.Date_Consultation_Interesse.Value.ToString("yyyy/MM/dd"),
                    Date_Consultation_Avocat = data.Date_Consultation_Avocat.Value.ToString("yyyy/MM/dd"),
                    Date_Retour_Dossier_Greffe_Central = data.Date_Retour_Dossier_Greffe_Central.Value.ToString("yyyy/MM/dd"),

                    Convocation_Interesse_Audience_Jugement = data.Convocation_Interesse_Audience_Jugement,
                    Convocation_Avocat_Audience_Jugement = data.Convocation_Avocat_Audience_Jugement,
                    Date_Audience_Jugement = data.Date_Audience_Jugement.Value.ToString("yyyy/MM/dd"),
                    Convocation_Avocat_Prononce_Jugement = data.Convocation_Avocat_Prononce_Jugement,
                    Convocation_Interesse_Prononce_Jugement = data.Convocation_Interesse_Prononce_Jugement,
                    Date_Audience_Prononce_Jugement = data.Date_Audience_Prononce_Jugement.Value.ToString("yyyy/MM/dd"),

                    Dispositif_Decision = data.Dispositif_Decision,
                    Numero_Decision = data.Numero_Decision,
                    Date_Envoi_Decision_Notification_Parties = data.Date_Envoi_Decision_Notification_Parties.Value.ToString("yyyy/MM/dd"),
                    Date_Reception_Comptable_Copie_Decision = data.Date_Reception_Comptable_Copie_Decision.Value.ToString("yyyy/MM/dd"),
                    UpdatedBy = data.UpdatedBy,
                    UpdateTime = data.UpdateTime.Value.ToString("yyyy/MM/dd"),
                    IsActive = data.IsActive

                }).ToListAsync();

            }
            catch (Exception ex)
            {
                Debug.Write(ex.Message);
                throw;
            }

            return response;
        }
        private IQueryable<DisciplineBudgetaire> ApplyPagination(IQueryable<DisciplineBudgetaire> query, DtoPagination pagination)
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
            }
            return query;
        }
    }
}
