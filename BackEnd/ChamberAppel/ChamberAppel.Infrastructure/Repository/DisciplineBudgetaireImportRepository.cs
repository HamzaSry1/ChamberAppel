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
                query = ApplyPagination(query, pagination);
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
                string orderByProperty = pagination.OrderBy.ToLower();
                if ("numero_dossier" == orderByProperty)
                {
                    query = pagination.OrderByDirection == "desc" ? query.OrderByDescending(e => e.Numero_Dossier) : query.OrderBy(e => e.Numero_Dossier);
                }
            }
            return query;
        }
    }
}
