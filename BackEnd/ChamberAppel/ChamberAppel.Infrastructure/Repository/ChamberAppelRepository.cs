using ChamberAppel.Domain.DTOs;
using ChamberAppel.Domain.Models;
using ChamberAppel.Domain.Repository;
using ChamberAppel.Infrastructure.Data;
using Microsoft.EntityFrameworkCore;
using System.Diagnostics;

namespace ChamberAppel.Infrastructure.Repository
{
    internal class ChamberAppelRepository : BaseRepository<ChamberAppele>, IChamberAppelRepository
    {
        private readonly ApplicationDbContext _dbContext;
        public ChamberAppelRepository(ApplicationDbContext dbContext) : base(dbContext)
        {
            _dbContext = dbContext;
        }

        public async Task<DatatableResponse<ChamberAppele>> GetAllAsync(DtoFiltreChamberAppele? filter, DtoPagination? pagination)
        {
            var dbSet = _dbContext.ChamberAppeles
                  .Include(table => table.CRC)
                  .Where(x => x.IsActive == 1);

            IQueryable<ChamberAppele> query = dbSet;

            var response = new DatatableResponse<ChamberAppele>
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
                        || x.Centre_Comptable.Trim().Contains(filter.MotsCle.Trim())
                        || x.CRC.Label.Trim().Contains(filter.MotsCle.Trim())
                        || x.Numero_Jugement_Faisant_Objet_De_Appel.Trim().Contains(filter.Numero_Jugement_Faisant_Objet_De_Appel.Trim())
                        || x.Exercice_fiscal == filter.Exercice_fiscal
                        || x.Emis_En_Date_Du == filter.Emis_En_Date_Du
                        || x.Conseiller_Rapporteur.Trim().Contains(filter.MotsCle.Trim())
                       );
                }
            }

            response.RecordFiltred = query.Count();

            if (pagination != null)
            {
                query = ApplyPagination(query, pagination);
            }

            response.Data = query.ToList();

            return response;
        }
        private IQueryable<ChamberAppele> ApplyPagination(IQueryable<ChamberAppele> query, DtoPagination pagination)
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
