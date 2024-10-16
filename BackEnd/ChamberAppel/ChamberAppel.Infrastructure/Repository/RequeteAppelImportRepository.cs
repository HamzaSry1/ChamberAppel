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
                //query = ApplyPagination(query, pagination);
            }

            /*
              TODO : 
                display the neccessry without rowNumber , rowError
             */

            response.Data = query.ToList();

            return response;
        }
    }
}
