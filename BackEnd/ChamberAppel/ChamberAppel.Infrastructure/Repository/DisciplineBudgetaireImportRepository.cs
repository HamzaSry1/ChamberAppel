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
        public async Task<bool> Fusionner(string updatedBy)
        {
            // TODO : this function used to marge between
            // the valide list data in DisciplineBudgetaireTemp and the DisciplineBudgetaire

            /*
                - first : 

                    get all valide data in DisciplineBudgetaireTemp where the error message null or empty 

                - second : 
                
                    *** Create model or mapper to get only the filed used in DisciplineBudgetaire

                    add this list into the DisciplineBudgetaire using AddRange 
             */

            return true;
        }

        public async Task<bool> Valider()
        {
            // TODO : this function used to validate the list existe in DisciplineBudgetaireTemp by some rule 

            /*
                if the fileds respect the rule then return the list 
                else return the list contains the rowNumber / rowError
             
             */

            //var list = await _context.DisciplineBudgetaireTemp
            //    .ToListAsync();

            //foreach (var item in list)
            //{
            //call stored procedure
            //}

            try
            {
                await _context.Database.ExecuteSqlRawAsync("BEGIN SP_DisciplineBudgetaireTemp_Validate; END;");
            }
            catch (Exception ex)
            {
                Debug.Write(ex.Message);
                return false;
                throw;
            }

            return true;
        }

        public async Task<DatatableResponse<DisciplineBudgetaireTemp>> GetAllErrorsData(DtoPagination pagination)
        {
            var dbSet = _context.DisciplineBudgetaireTemp
                .Where(x => x.RowError != string.Empty);

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

            /*
              TODO : 
                display only rowNumber , rowError
             */

            response.Data = query.ToList();

            return response;
        }

        public async Task<DatatableResponse<DisciplineBudgetaireTemp>> GetAllValideData(DtoPagination pagination)
        {
            var dbSet = _context.DisciplineBudgetaireTemp
                .Where(x => x.RowError == string.Empty);

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

            /*
              TODO : 
                display the neccessry without rowNumber , rowError
             */

            response.Data = query.ToList();

            return response;
        }
    }
}
