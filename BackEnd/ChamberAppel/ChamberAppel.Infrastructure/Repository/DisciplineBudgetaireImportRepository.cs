using ChamberAppel.Domain.DTOs;
using ChamberAppel.Domain.Models;
using ChamberAppel.Domain.Repository;
using ChamberAppel.Infrastructure.Data;
using Microsoft.EntityFrameworkCore;
using System.Diagnostics;

namespace ChamberAppel.Infrastructure.Repository
{
    public class DisciplineBudgetaireImportRepository : IDisciplineBudgetaireImportRepository
    {
        private readonly ApplicationDbContext _context;

        public DisciplineBudgetaireImportRepository(ApplicationDbContext context)
        {
            _context = context;
        }

        public async Task<bool> Delete()
        {
            try
            {
                var toDelete = await _context.DisciplineBudgetaireTemp
                    .ToListAsync();

                _context.DisciplineBudgetaireTemp.RemoveRange(toDelete);
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
        public async Task<bool> Insert(List<DisciplineBudgetaireTemp> list)
        {
            try
            {
                //delete the old list if existe
                await Delete();

                // insert the new list
                await _context.DisciplineBudgetaireTemp.AddRangeAsync(list);
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
                await _context.Database.ExecuteSqlRawAsync("BEGIN SP_DISCIPLINEBUDGETAIRETEMP_CONFIRME; END;");
                //Delete the temporary table after the insert
            }
            catch (Exception ex)
            {
                Debug.Write(ex.Message);
                return false;
            }
            return true;
        }
        public async Task<bool> Valider()
        {
            try
            {
                await _context.Database.ExecuteSqlRawAsync("BEGIN SP_DISCIPLINEBUDGETAIRETEMP_VALIDATE; END;");
            }
            catch (Exception ex)
            {
                Debug.Write(ex.Message);
                return false;
            }

            return true;
        }
        public async Task<DatatableResponse<DisciplineBudgetaireTemp>> GetAllErrorsData(DtoPagination pagination)
        {
            var dbSet = _context.DisciplineBudgetaireTemp
                .Where(x => x.RowError != null);

            IQueryable<DisciplineBudgetaireTemp> query = dbSet;

            var response = new DatatableResponse<DisciplineBudgetaireTemp>
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
        public async Task<DatatableResponse<DisciplineBudgetaireTemp>> GetAllValideData(DtoPagination pagination)
        {
            var dbSet = _context.DisciplineBudgetaireTemp
                .Where(x => x.RowError == null);

            IQueryable<DisciplineBudgetaireTemp> query = dbSet;

            var response = new DatatableResponse<DisciplineBudgetaireTemp>
            {
                RecordTotal = await query.CountAsync(),
            };

            response.RecordFiltred = query.Count();

            if (pagination != null)
            {
                try
                {
                    query = ApplyPagination(query, pagination);
                }
                catch (Exception ex)
                {
                    Debug.WriteLine(ex);
                    throw;
                }
            }

            response.Data = query.ToList();

            return response;
        }

        private IQueryable<DisciplineBudgetaireTemp> ApplyPagination(IQueryable<DisciplineBudgetaireTemp> query, DtoPagination pagination)
        {
            // Apply pagination
            query = query.Skip(((pagination?.PageNumber ?? 1) - 1) * (pagination?.PageSize ?? 5)).Take(pagination?.PageSize ?? 5);

            // Apply ordering
            if (!string.IsNullOrEmpty(pagination?.OrderBy))
            {
                if ("Numero_Dossier" == pagination.OrderBy)
                {
                    query = pagination.OrderByDirection == "desc"
                        ? query.OrderByDescending(e => e.Numero_Dossier)
                        : query.OrderBy(e => e.Numero_Dossier);
                }
                else if ("Appelant" == pagination.OrderBy)
                {
                    query = pagination.OrderByDirection == "desc"
                        ? query.OrderByDescending(e => e.Appelant)
                        : query.OrderBy(e => e.Appelant);
                }
                else if ("Numero_Jugement_Faisant_Objet_De_Appel" == pagination.OrderBy)
                {
                    query = pagination.OrderByDirection == "desc"
                        ? query.OrderByDescending(e => e.Numero_Jugement_Faisant_Objet_De_Appel)
                        : query.OrderBy(e => e.Numero_Jugement_Faisant_Objet_De_Appel);
                }
                else if ("Emis_En_Date_Du" == pagination.OrderBy)
                {
                    query = pagination.OrderByDirection == "desc"
                        ? query.OrderByDescending(e => e.Emis_En_Date_Du)
                        : query.OrderBy(e => e.Emis_En_Date_Du);
                }
                else if ("CRC" == pagination.OrderBy)
                {
                    query = pagination.OrderByDirection == "desc"
                        ? query.OrderByDescending(e => e.CRC)
                        : query.OrderBy(e => e.CRC);
                }
                else if ("Centre_Comptable" == pagination.OrderBy)
                {
                    query = pagination.OrderByDirection == "desc"
                        ? query.OrderByDescending(e => e.Centre_Comptable)
                        : query.OrderBy(e => e.Centre_Comptable);
                }
                else if ("Date_Enregistrement_Requete_Cour_Regionale_Des_Comptes" == pagination.OrderBy)
                {
                    query = pagination.OrderByDirection == "desc"
                        ? query.OrderByDescending(e => e.Date_Enregistrement_Requete_Cour_Regionale_Des_Comptes)
                        : query.OrderBy(e => e.Date_Enregistrement_Requete_Cour_Regionale_Des_Comptes);
                }
                else if ("Date_Requisition_Ministere_Public" == pagination.OrderBy)
                {
                    query = pagination.OrderByDirection == "desc"
                        ? query.OrderByDescending(e => e.Date_Requisition_Ministere_Public)
                        : query.OrderBy(e => e.Date_Requisition_Ministere_Public);
                }
                else if ("Numero_Requisition_Ministere_Public" == pagination.OrderBy)
                {
                    query = pagination.OrderByDirection == "desc"
                        ? query.OrderByDescending(e => e.Numero_Requisition_Ministere_Public)
                        : query.OrderBy(e => e.Numero_Requisition_Ministere_Public);
                }
                else if ("Date_Ordonnance_Designation_Conseiller_Rapporteur" == pagination.OrderBy)
                {
                    query = pagination.OrderByDirection == "desc"
                        ? query.OrderByDescending(e => e.Date_Ordonnance_Designation_Conseiller_Rapporteur)
                        : query.OrderBy(e => e.Date_Ordonnance_Designation_Conseiller_Rapporteur);
                }
                else if ("Numero_Ordonnance_Designation_Conseiller_Rapporteur" == pagination.OrderBy)
                {
                    query = pagination.OrderByDirection == "desc"
                        ? query.OrderByDescending(e => e.Numero_Ordonnance_Designation_Conseiller_Rapporteur)
                        : query.OrderBy(e => e.Numero_Ordonnance_Designation_Conseiller_Rapporteur);
                }
                else if ("Conseiller_Rapporteur" == pagination.OrderBy)
                {
                    query = pagination.OrderByDirection == "desc"
                        ? query.OrderByDescending(e => e.Conseiller_Rapporteur)
                        : query.OrderBy(e => e.Conseiller_Rapporteur);
                }
                else if ("Date_Ordonnance_Designation_Conseiller_Rapporteur_Remplacant" == pagination.OrderBy)
                {
                    query = pagination.OrderByDirection == "desc"
                        ? query.OrderByDescending(e => e.Date_Ordonnance_Designation_Conseiller_Rapporteur_Remplacant)
                        : query.OrderBy(e => e.Date_Ordonnance_Designation_Conseiller_Rapporteur_Remplacant);
                }
                else if ("Numero_Ordonnance_Designation_Conseiller_Rapporteur_Remplacant" == pagination.OrderBy)
                {
                    query = pagination.OrderByDirection == "desc"
                        ? query.OrderByDescending(e => e.Numero_Ordonnance_Designation_Conseiller_Rapporteur_Remplacant)
                        : query.OrderBy(e => e.Numero_Ordonnance_Designation_Conseiller_Rapporteur_Remplacant);
                }
                else if ("Conseiller_Rapporteur_Remplacant" == pagination.OrderBy)
                {
                    query = pagination.OrderByDirection == "desc"
                        ? query.OrderByDescending(e => e.Conseiller_Rapporteur_Remplacant)
                        : query.OrderBy(e => e.Conseiller_Rapporteur_Remplacant);
                }
                else if ("Date_Envoi_Requete_Parties" == pagination.OrderBy)
                {
                    query = pagination.OrderByDirection == "desc"
                        ? query.OrderByDescending(e => e.Date_Envoi_Requete_Parties)
                        : query.OrderBy(e => e.Date_Envoi_Requete_Parties);
                }
                else if ("Parties_Agent_du_Roi_au_CRC" == pagination.OrderBy)
                {
                    query = pagination.OrderByDirection == "desc"
                        ? query.OrderByDescending(e => e.Parties_Agent_du_Roi_au_CRC)
                        : query.OrderBy(e => e.Parties_Agent_du_Roi_au_CRC);
                }
                else if ("Parties_Entrepot_Regional" == pagination.OrderBy)
                {
                    query = pagination.OrderByDirection == "desc"
                        ? query.OrderByDescending(e => e.Parties_Entrepot_Regional)
                        : query.OrderBy(e => e.Parties_Entrepot_Regional);
                }
                else if ("Parties_Travailleur_du_territoire" == pagination.OrderBy)
                {
                    query = pagination.OrderByDirection == "desc"
                        ? query.OrderByDescending(e => e.Parties_Travailleur_du_territoire)
                        : query.OrderBy(e => e.Parties_Travailleur_du_territoire);
                }
                else if ("Parties_President_de_la_Commune" == pagination.OrderBy)
                {
                    query = pagination.OrderByDirection == "desc"
                        ? query.OrderByDescending(e => e.Parties_President_de_la_Commune)
                        : query.OrderBy(e => e.Parties_President_de_la_Commune);
                }
                else if ("Date_de_reception_par_les_parties_Agent_du_Roi_au_CRC" == pagination.OrderBy)
                {
                    query = pagination.OrderByDirection == "desc"
                        ? query.OrderByDescending(e => e.Date_de_reception_par_les_parties_Agent_du_Roi_au_CRC)
                        : query.OrderBy(e => e.Date_de_reception_par_les_parties_Agent_du_Roi_au_CRC);
                }
                else if ("Date_de_reception_par_les_parties_Entrepot_Regional" == pagination.OrderBy)
                {
                    query = pagination.OrderByDirection == "desc"
                        ? query.OrderByDescending(e => e.Date_de_reception_par_les_parties_Entrepot_Regional)
                        : query.OrderBy(e => e.Date_de_reception_par_les_parties_Entrepot_Regional);
                }
                else if ("Date_de_reception_par_les_parties_Travailleur_du_territoire" == pagination.OrderBy)
                {
                    query = pagination.OrderByDirection == "desc"
                        ? query.OrderByDescending(e => e.Date_de_reception_par_les_parties_Travailleur_du_territoire)
                        : query.OrderBy(e => e.Date_de_reception_par_les_parties_Travailleur_du_territoire);
                }
                else if ("Date_de_reception_par_les_parties_President_de_la_Commune" == pagination.OrderBy)
                {
                    query = pagination.OrderByDirection == "desc"
                        ? query.OrderByDescending(e => e.Date_de_reception_par_les_parties_President_de_la_Commune)
                        : query.OrderBy(e => e.Date_de_reception_par_les_parties_President_de_la_Commune);
                }
                else if ("Reponse_au_memoire_d_appel_Agent_du_Roi_au_CRC" == pagination.OrderBy)
                {
                    query = pagination.OrderByDirection == "desc"
                        ? query.OrderByDescending(e => e.Reponse_au_memoire_d_appel_Agent_du_Roi_au_CRC)
                        : query.OrderBy(e => e.Reponse_au_memoire_d_appel_Agent_du_Roi_au_CRC);
                }
                else if ("Reponse_au_memoire_d_appel_Entrepot_Regional" == pagination.OrderBy)
                {
                    query = pagination.OrderByDirection == "desc"
                        ? query.OrderByDescending(e => e.Reponse_au_memoire_d_appel_Entrepot_Regional)
                        : query.OrderBy(e => e.Reponse_au_memoire_d_appel_Entrepot_Regional);
                }
                else if ("Reponse_au_memoire_d_appel_Travailleur_du_territoire" == pagination.OrderBy)
                {
                    query = pagination.OrderByDirection == "desc"
                        ? query.OrderByDescending(e => e.Reponse_au_memoire_d_appel_Travailleur_du_territoire)
                        : query.OrderBy(e => e.Reponse_au_memoire_d_appel_Travailleur_du_territoire);
                }
                else if ("Reponse_au_memoire_d_appel_President_de_la_Commune" == pagination.OrderBy)
                {
                    query = pagination.OrderByDirection == "desc"
                        ? query.OrderByDescending(e => e.Reponse_au_memoire_d_appel_President_de_la_Commune)
                        : query.OrderBy(e => e.Reponse_au_memoire_d_appel_President_de_la_Commune);
                }
                else if ("Date_Demande_Documents_Supplementaires" == pagination.OrderBy)
                {
                    query = pagination.OrderByDirection == "desc"
                        ? query.OrderByDescending(e => e.Date_Demande_Documents_Supplementaires)
                        : query.OrderBy(e => e.Date_Demande_Documents_Supplementaires);
                }
                else if ("Date_Convocation_Interesse_Audience" == pagination.OrderBy)
                {
                    query = pagination.OrderByDirection == "desc"
                        ? query.OrderByDescending(e => e.Date_Convocation_Interesse_Audience)
                        : query.OrderBy(e => e.Date_Convocation_Interesse_Audience);
                }
                else if ("Date_Enquete_Sur_Le_Terrain" == pagination.OrderBy)
                {
                    query = pagination.OrderByDirection == "desc"
                        ? query.OrderByDescending(e => e.Date_Enquete_Sur_Le_Terrain)
                        : query.OrderBy(e => e.Date_Enquete_Sur_Le_Terrain);
                }
                else if ("Date_Preparation_Rapport" == pagination.OrderBy)
                {
                    query = pagination.OrderByDirection == "desc"
                        ? query.OrderByDescending(e => e.Date_Preparation_Rapport)
                        : query.OrderBy(e => e.Date_Preparation_Rapport);
                }
                else if ("Date_Transmission_Dossier_Ministere_Public" == pagination.OrderBy)
                {
                    query = pagination.OrderByDirection == "desc"
                        ? query.OrderByDescending(e => e.Date_Transmission_Dossier_Ministere_Public)
                        : query.OrderBy(e => e.Date_Transmission_Dossier_Ministere_Public);
                }
                else if ("Date_Conclusions_Ministere_Public" == pagination.OrderBy)
                {
                    query = pagination.OrderByDirection == "desc"
                        ? query.OrderByDescending(e => e.Date_Conclusions_Ministere_Public)
                        : query.OrderBy(e => e.Date_Conclusions_Ministere_Public);
                }
                else if ("Numero_Conclusions_Ministere_Public" == pagination.OrderBy)
                {
                    query = pagination.OrderByDirection == "desc"
                        ? query.OrderByDescending(e => e.Numero_Conclusions_Ministere_Public)
                        : query.OrderBy(e => e.Numero_Conclusions_Ministere_Public);
                }
                else if ("Date_Reception_Convocation_Interesse_Consultation" == pagination.OrderBy)
                {
                    query = pagination.OrderByDirection == "desc"
                        ? query.OrderByDescending(e => e.Date_Reception_Convocation_Interesse_Consultation)
                        : query.OrderBy(e => e.Date_Reception_Convocation_Interesse_Consultation);
                }
                else if ("Date_Reception_Convocation_Avocat_Consultation" == pagination.OrderBy)
                {
                    query = pagination.OrderByDirection == "desc"
                        ? query.OrderByDescending(e => e.Date_Reception_Convocation_Avocat_Consultation)
                        : query.OrderBy(e => e.Date_Reception_Convocation_Avocat_Consultation);
                }
                else if ("Date_Consultation_Interesse" == pagination.OrderBy)
                {
                    query = pagination.OrderByDirection == "desc"
                        ? query.OrderByDescending(e => e.Date_Consultation_Interesse)
                        : query.OrderBy(e => e.Date_Consultation_Interesse);
                }
                else if ("Date_Consultation_Avocat" == pagination.OrderBy)
                {
                    query = pagination.OrderByDirection == "desc"
                        ? query.OrderByDescending(e => e.Date_Consultation_Avocat)
                        : query.OrderBy(e => e.Date_Consultation_Avocat);
                }
                else if ("Date_Retour_Dossier_Greffe_Central" == pagination.OrderBy)
                {
                    query = pagination.OrderByDirection == "desc"
                        ? query.OrderByDescending(e => e.Date_Retour_Dossier_Greffe_Central)
                        : query.OrderBy(e => e.Date_Retour_Dossier_Greffe_Central);
                }
                else if ("Convocation_Interesse_Audience_Jugement" == pagination.OrderBy)
                {
                    query = pagination.OrderByDirection == "desc"
                        ? query.OrderByDescending(e => e.Convocation_Interesse_Audience_Jugement)
                        : query.OrderBy(e => e.Convocation_Interesse_Audience_Jugement);
                }
                else if ("Convocation_Avocat_Audience_Jugement" == pagination.OrderBy)
                {
                    query = pagination.OrderByDirection == "desc"
                        ? query.OrderByDescending(e => e.Convocation_Avocat_Audience_Jugement)
                        : query.OrderBy(e => e.Convocation_Avocat_Audience_Jugement);
                }
                else if ("Date_Audience_Jugement" == pagination.OrderBy)
                {
                    query = pagination.OrderByDirection == "desc"
                        ? query.OrderByDescending(e => e.Date_Audience_Jugement)
                        : query.OrderBy(e => e.Date_Audience_Jugement);
                }
                else if ("Convocation_Avocat_Prononce_Jugement" == pagination.OrderBy)
                {
                    query = pagination.OrderByDirection == "desc"
                        ? query.OrderByDescending(e => e.Convocation_Avocat_Prononce_Jugement)
                        : query.OrderBy(e => e.Convocation_Avocat_Prononce_Jugement);
                }
                else if ("Convocation_Interesse_Prononce_Jugement" == pagination.OrderBy)
                {
                    query = pagination.OrderByDirection == "desc"
                        ? query.OrderByDescending(e => e.Convocation_Interesse_Prononce_Jugement)
                        : query.OrderBy(e => e.Convocation_Interesse_Prononce_Jugement);
                }
                else if ("Date_Audience_Prononce_Jugement" == pagination.OrderBy)
                {
                    query = pagination.OrderByDirection == "desc"
                        ? query.OrderByDescending(e => e.Date_Audience_Prononce_Jugement)
                        : query.OrderBy(e => e.Date_Audience_Prononce_Jugement);
                }
                else if ("Dispositif_Decision" == pagination.OrderBy)
                {
                    query = pagination.OrderByDirection == "desc"
                        ? query.OrderByDescending(e => e.Dispositif_Decision)
                        : query.OrderBy(e => e.Dispositif_Decision);
                }
                else if ("Numero_Decision" == pagination.OrderBy)
                {
                    query = pagination.OrderByDirection == "desc"
                        ? query.OrderByDescending(e => e.Numero_Decision)
                        : query.OrderBy(e => e.Numero_Decision);
                }
                else if ("Date_Envoi_Decision_Notification_Parties" == pagination.OrderBy)
                {
                    query = pagination.OrderByDirection == "desc"
                        ? query.OrderByDescending(e => e.Date_Envoi_Decision_Notification_Parties)
                        : query.OrderBy(e => e.Date_Envoi_Decision_Notification_Parties);
                }
                else if ("Date_Reception_Comptable_Copie_Decision" == pagination.OrderBy)
                {
                    query = pagination.OrderByDirection == "desc"
                        ? query.OrderByDescending(e => e.Date_Reception_Comptable_Copie_Decision)
                        : query.OrderBy(e => e.Date_Reception_Comptable_Copie_Decision);
                }
            }

            return query;
        }

    }
}
