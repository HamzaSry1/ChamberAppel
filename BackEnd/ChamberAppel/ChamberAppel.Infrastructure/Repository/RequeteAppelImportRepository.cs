using ChamberAppel.Domain.DTOs;
using ChamberAppel.Domain.Models;
using ChamberAppel.Domain.Repository;
using ChamberAppel.Infrastructure.Data;
using Microsoft.EntityFrameworkCore;
using System.Diagnostics;

namespace ChamberAppel.Infrastructure.Repository
{
    public class RequeteAppelImportRepository : IRequeteAppelImportRepository
    {
        private readonly ApplicationDbContext _context;
        public RequeteAppelImportRepository(ApplicationDbContext context)
        {
            _context = context;
        }

        public async Task<bool> Delete()
        {
            try
            {
                var toDelete = await _context.RequetesAppelTemp
                    .ToListAsync();

                _context.RequetesAppelTemp.RemoveRange(toDelete);
                await _context.SaveChangesAsync();
            }
            catch (Exception)
            {
                // TODO : log the execpetion

                return false;
                throw;
            }

            return true;
        }
        public async Task<bool> Fusionner()
        {
            try
            {
                await _context.Database.ExecuteSqlRawAsync("BEGIN SP_REQUETESAPPELTEMP_CONFIRME; END;");
            }
            catch (Exception ex)
            {
                Debug.Write(ex.Message);
                return false;
            }
            return true;
        }
        public async Task<bool> Insert(List<RequeteAppelTemp> list)
        {
            try
            {
                //delete the old list if existe
                await Delete();

                // insert the new list
                await _context.RequetesAppelTemp.AddRangeAsync(list);
                await _context.SaveChangesAsync();
            }
            catch (Exception)
            {
                // TODO : log the execpetion

                return false;
                throw;
            }

            return true;
        }
        public async Task<bool> Valider()
        {
            try
            {
                await _context.Database.ExecuteSqlRawAsync("BEGIN SP_REQUETESAPPELTEMP_VALIDATE; END;");
            }
            catch (Exception ex)
            {
                Debug.Write(ex.Message);
                return false;
            }

            return true;
        }
        public async Task<DatatableResponse<RequeteAppelTemp>> GetAllErrorsData(DtoPagination pagination)
        {
            var dbSet = _context.RequetesAppelTemp
               .Where(x => x.RowError != null);

            IQueryable<RequeteAppelTemp> query = dbSet;

            var response = new DatatableResponse<RequeteAppelTemp>
            {
                RecordTotal = await query.CountAsync(),
            };

            response.RecordFiltred = query.Count();

            if (pagination != null)
            {
                //query = ApplyPagination(query, pagination);
            }

            response.Data = query.OrderBy(x => x.RowNumber).ToList();

            return response;
        }
        public async Task<DatatableResponse<RequeteAppelTemp>> GetAllValideData(DtoPagination pagination)
        {
            var dbSet = _context.RequetesAppelTemp
                .Where(x => x.RowError == null);

            IQueryable<RequeteAppelTemp> query = dbSet;

            var response = new DatatableResponse<RequeteAppelTemp>
            {
                RecordTotal = await query.CountAsync(),
            };

            response.RecordFiltred = query.Count();

            if (pagination != null)
            {
                query = ApplyPagination(query, pagination);
            }

            response.Data = query.ToList();

            return response;
        }

        private IQueryable<RequeteAppelTemp> ApplyPagination(IQueryable<RequeteAppelTemp> query, DtoPagination pagination)
        {
            // Apply pagination
            query = query.Skip(((pagination?.PageNumber ?? 1) - 1) * (pagination?.PageSize ?? 5))
                          .Take(pagination?.PageSize ?? 5);

            // Apply ordering
            if (!string.IsNullOrEmpty(pagination?.OrderBy))
            {
                string OrderString = pagination.OrderBy.ToLower();

                if ("numero_dossier" == OrderString)
                {
                    query = pagination.OrderByDirection == "desc"
                        ? query.OrderByDescending(e => e.Numero_Dossier)
                        : query.OrderBy(e => e.Numero_Dossier);
                }
                else if ("appelant" == OrderString)
                {
                    query = pagination.OrderByDirection == "desc"
                        ? query.OrderByDescending(e => e.Appelant)
                        : query.OrderBy(e => e.Appelant);
                }
                else if ("numero_jugement_faisant_objet_de_appel" == OrderString)
                {
                    query = pagination.OrderByDirection == "desc"
                        ? query.OrderByDescending(e => e.Numero_Jugement_Faisant_Objet_De_Appel)
                        : query.OrderBy(e => e.Numero_Jugement_Faisant_Objet_De_Appel);
                }
                else if ("emis_en_date_du" == OrderString)
                {
                    query = pagination.OrderByDirection == "desc"
                        ? query.OrderByDescending(e => e.Emis_En_Date_Du)
                        : query.OrderBy(e => e.Emis_En_Date_Du);
                }
                else if ("crc" == OrderString)
                {
                    query = pagination.OrderByDirection == "desc"
                        ? query.OrderByDescending(e => e.CRC)
                        : query.OrderBy(e => e.CRC);
                }
                else if ("centre_comptable" == OrderString)
                {
                    query = pagination.OrderByDirection == "desc"
                        ? query.OrderByDescending(e => e.Centre_Comptable)
                        : query.OrderBy(e => e.Centre_Comptable);
                }
                else if ("exercice_fiscal" == OrderString)
                {
                    query = pagination.OrderByDirection == "desc"
                        ? query.OrderByDescending(e => e.Exercice_fiscal)
                        : query.OrderBy(e => e.Exercice_fiscal);
                }
                else if ("date_enregistrement_requete_cour_regionale_des_comptes" == OrderString)
                {
                    query = pagination.OrderByDirection == "desc"
                        ? query.OrderByDescending(e => e.Date_Enregistrement_Requete_Cour_Regionale_Des_Comptes)
                        : query.OrderBy(e => e.Date_Enregistrement_Requete_Cour_Regionale_Des_Comptes);
                }
                else if ("conseiller_rapporteur" == OrderString)
                {
                    query = pagination.OrderByDirection == "desc"
                        ? query.OrderByDescending(e => e.Conseiller_Rapporteur)
                        : query.OrderBy(e => e.Conseiller_Rapporteur);
                }
                else if ("date_ordonnance_designation_conseiller_rapporteur" == OrderString)
                {
                    query = pagination.OrderByDirection == "desc"
                        ? query.OrderByDescending(e => e.Date_Ordonnance_Designation_Conseiller_Rapporteur)
                        : query.OrderBy(e => e.Date_Ordonnance_Designation_Conseiller_Rapporteur);
                }
                else if ("conseiller_rapporteur_remplacant" == OrderString)
                {
                    query = pagination.OrderByDirection == "desc"
                        ? query.OrderByDescending(e => e.Conseiller_Rapporteur_Remplacant)
                        : query.OrderBy(e => e.Conseiller_Rapporteur_Remplacant);
                }
                else if ("date_ordonnance_designation_conseiller_rapporteur_remplacant" == OrderString)
                {
                    query = pagination.OrderByDirection == "desc"
                        ? query.OrderByDescending(e => e.Date_Ordonnance_Designation_Conseiller_Rapporteur_Remplacant)
                        : query.OrderBy(e => e.Date_Ordonnance_Designation_Conseiller_Rapporteur_Remplacant);
                }
                else if ("date_demande_documents_supplementaires" == OrderString)
                {
                    query = pagination.OrderByDirection == "desc"
                        ? query.OrderByDescending(e => e.Date_Demande_Documents_Supplementaires)
                        : query.OrderBy(e => e.Date_Demande_Documents_Supplementaires);
                }
                else if ("date_envoi_requete_parties" == OrderString)
                {
                    query = pagination.OrderByDirection == "desc"
                        ? query.OrderByDescending(e => e.Date_Envoi_Requete_Parties)
                        : query.OrderBy(e => e.Date_Envoi_Requete_Parties);
                }
                else if ("parties_agent_du_roi_au_crc" == OrderString)
                {
                    query = pagination.OrderByDirection == "desc"
                        ? query.OrderByDescending(e => e.Parties_Agent_du_Roi_au_CRC)
                        : query.OrderBy(e => e.Parties_Agent_du_Roi_au_CRC);
                }
                else if ("parties_entrepot_regional" == OrderString)
                {
                    query = pagination.OrderByDirection == "desc"
                        ? query.OrderByDescending(e => e.Parties_Entrepot_Regional)
                        : query.OrderBy(e => e.Parties_Entrepot_Regional);
                }
                else if ("parties_travailleur_du_territoire" == OrderString)
                {
                    query = pagination.OrderByDirection == "desc"
                        ? query.OrderByDescending(e => e.Parties_Travailleur_du_territoire)
                        : query.OrderBy(e => e.Parties_Travailleur_du_territoire);
                }
                else if ("parties_president_de_la_commune" == OrderString)
                {
                    query = pagination.OrderByDirection == "desc"
                        ? query.OrderByDescending(e => e.Parties_President_de_la_Commune)
                        : query.OrderBy(e => e.Parties_President_de_la_Commune);
                }
                else if ("date_de_reception_par_les_parties_agent_du_roi_au_crc" == OrderString)
                {
                    query = pagination.OrderByDirection == "desc"
                        ? query.OrderByDescending(e => e.Date_de_reception_par_les_parties_Agent_du_Roi_au_CRC)
                        : query.OrderBy(e => e.Date_de_reception_par_les_parties_Agent_du_Roi_au_CRC);
                }
                else if ("date_de_reception_par_les_parties_entrepot_regional" == OrderString)
                {
                    query = pagination.OrderByDirection == "desc"
                        ? query.OrderByDescending(e => e.Date_de_reception_par_les_parties_Entrepot_Regional)
                        : query.OrderBy(e => e.Date_de_reception_par_les_parties_Entrepot_Regional);
                }
                else if ("date_de_reception_par_les_parties_travailleur_du_territoire" == OrderString)
                {
                    query = pagination.OrderByDirection == "desc"
                        ? query.OrderByDescending(e => e.Date_de_reception_par_les_parties_Travailleur_du_territoire)
                        : query.OrderBy(e => e.Date_de_reception_par_les_parties_Travailleur_du_territoire);
                }
                else if ("date_de_reception_par_les_parties_president_de_la_commune" == OrderString)
                {
                    query = pagination.OrderByDirection == "desc"
                        ? query.OrderByDescending(e => e.Date_de_reception_par_les_parties_President_de_la_Commune)
                        : query.OrderBy(e => e.Date_de_reception_par_les_parties_President_de_la_Commune);
                }
                else if ("reponse_au_memoire_d_appel_agent_du_roi_au_crc" == OrderString)
                {
                    query = pagination.OrderByDirection == "desc"
                        ? query.OrderByDescending(e => e.Reponse_au_memoire_d_appel_Agent_du_Roi_au_CRC)
                        : query.OrderBy(e => e.Reponse_au_memoire_d_appel_Agent_du_Roi_au_CRC);
                }
                else if ("reponse_au_memoire_d_appel_entrepot_regional" == OrderString)
                {
                    query = pagination.OrderByDirection == "desc"
                        ? query.OrderByDescending(e => e.Reponse_au_memoire_d_appel_Entrepot_Regional)
                        : query.OrderBy(e => e.Reponse_au_memoire_d_appel_Entrepot_Regional);
                }
                else if ("reponse_au_memoire_d_appel_travailleur_du_territoire" == OrderString)
                {
                    query = pagination.OrderByDirection == "desc"
                        ? query.OrderByDescending(e => e.Reponse_au_memoire_d_appel_Travailleur_du_territoire)
                        : query.OrderBy(e => e.Reponse_au_memoire_d_appel_Travailleur_du_territoire);
                }
                else if ("reponse_au_memoire_d_appel_president_de_la_commune" == OrderString)
                {
                    query = pagination.OrderByDirection == "desc"
                        ? query.OrderByDescending(e => e.Reponse_au_memoire_d_appel_President_de_la_Commune)
                        : query.OrderBy(e => e.Reponse_au_memoire_d_appel_President_de_la_Commune);
                }
                else if ("date_preparation_rapport" == OrderString)
                {
                    query = pagination.OrderByDirection == "desc"
                        ? query.OrderByDescending(e => e.Date_Preparation_Rapport)
                        : query.OrderBy(e => e.Date_Preparation_Rapport);
                }
                else if ("designation_du_conseiller_reviseur" == OrderString)
                {
                    query = pagination.OrderByDirection == "desc"
                        ? query.OrderByDescending(e => e.Designation_du_Conseiller_Reviseur)
                        : query.OrderBy(e => e.Designation_du_Conseiller_Reviseur);
                }
                else if ("date_designation_du_conseiller_reviseur" == OrderString)
                {
                    query = pagination.OrderByDirection == "desc"
                        ? query.OrderByDescending(e => e.Date_Designation_du_Conseiller_Reviseur)
                        : query.OrderBy(e => e.Date_Designation_du_Conseiller_Reviseur);
                }
                else if ("designation_du_conseiller_reviseur_remplacant" == OrderString)
                {
                    query = pagination.OrderByDirection == "desc"
                        ? query.OrderByDescending(e => e.Designation_du_Conseiller_Reviseur_Remplacant)
                        : query.OrderBy(e => e.Designation_du_Conseiller_Reviseur_Remplacant);
                }
                else if ("date_designation_du_conseiller_reviseur_remplacant" == OrderString)
                {
                    query = pagination.OrderByDirection == "desc"
                        ? query.OrderByDescending(e => e.Date_Designation_du_Conseiller_Reviseur_Remplacant)
                        : query.OrderBy(e => e.Date_Designation_du_Conseiller_Reviseur_Remplacant);
                }
                else if ("date_de_preparation_de_l_avis_de_l_examinateur" == OrderString)
                {
                    query = pagination.OrderByDirection == "desc"
                        ? query.OrderByDescending(e => e.Date_de_preparation_de_l_avis_de_l_examinateur)
                        : query.OrderBy(e => e.Date_de_preparation_de_l_avis_de_l_examinateur);
                }
                else if ("date_transmission_dossier_ministere_public" == OrderString)
                {
                    query = pagination.OrderByDirection == "desc"
                        ? query.OrderByDescending(e => e.Date_Transmission_Dossier_Ministere_Public)
                        : query.OrderBy(e => e.Date_Transmission_Dossier_Ministere_Public);
                }
                else if ("date_retour_dossier_ministere_public" == OrderString)
                {
                    query = pagination.OrderByDirection == "desc"
                        ? query.OrderByDescending(e => e.Date_Retour_Dossier_Ministere_Public)
                        : query.OrderBy(e => e.Date_Retour_Dossier_Ministere_Public);
                }
                else if ("date_conclusions_ministere_public" == OrderString)
                {
                    query = pagination.OrderByDirection == "desc"
                        ? query.OrderByDescending(e => e.Date_Conclusions_Ministere_Public)
                        : query.OrderBy(e => e.Date_Conclusions_Ministere_Public);
                }
                else if ("numero_conclusions_ministere_public" == OrderString)
                {
                    query = pagination.OrderByDirection == "desc"
                        ? query.OrderByDescending(e => e.Numero_Conclusions_Ministere_Public)
                        : query.OrderBy(e => e.Numero_Conclusions_Ministere_Public);
                }
                else if ("date_de_la_session" == OrderString)
                {
                    query = pagination.OrderByDirection == "desc"
                        ? query.OrderByDescending(e => e.Date_de_la_session)
                        : query.OrderBy(e => e.Date_de_la_session);
                }
                else if ("dispositif_decision" == OrderString)
                {
                    query = pagination.OrderByDirection == "desc"
                        ? query.OrderByDescending(e => e.Dispositif_Decision)
                        : query.OrderBy(e => e.Dispositif_Decision);
                }
                else if ("numero_decision" == OrderString)
                {
                    query = pagination.OrderByDirection == "desc"
                        ? query.OrderByDescending(e => e.Numero_Decision)
                        : query.OrderBy(e => e.Numero_Decision);
                }
                else if ("date_d_envoi_de_la_decision_pour_notifier_les_parties" == OrderString)
                {
                    query = pagination.OrderByDirection == "desc"
                        ? query.OrderByDescending(e => e.Date_d_envoi_de_la_decision_pour_notifier_les_parties)
                        : query.OrderBy(e => e.Date_d_envoi_de_la_decision_pour_notifier_les_parties);
                }
                else if ("date_de_reception_par_le_comptable_d_une_copie_de_la_decision" == OrderString)
                {
                    query = pagination.OrderByDirection == "desc"
                        ? query.OrderByDescending(e => e.Date_de_reception_par_le_comptable_d_une_copie_de_la_decision)
                        : query.OrderBy(e => e.Date_de_reception_par_le_comptable_d_une_copie_de_la_decision);
                }
            }

            return query;
        }
    }
}
