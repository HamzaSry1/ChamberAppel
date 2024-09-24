using ChamberAppel.Domain.DTOs;
using ChamberAppel.Domain.Models;
using ChamberAppel.Domain.Repository;
using ChamberAppel.Infrastructure.Data;
using Microsoft.EntityFrameworkCore;

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

        public async Task<DatatableResponse<DisciplineBudgetaire>> GetAllAsync(DtoFiltreMotsCle? filter, DtoPagination? pagination)
        {
            var dbSet = _dbContext.DisciplineBudgetaires;

            IQueryable<DisciplineBudgetaire> query = dbSet;
            var response = new DatatableResponse<DisciplineBudgetaire>
            {
                RecordTotal = await query.CountAsync(),
            };

            if (!string.IsNullOrEmpty(filter.MotsCle))
            {
                query = query.Where(x => x.Numero_de_dossier.Trim().Contains(filter.MotsCle.Trim())
                                         || x.Appelant.Trim().Contains(filter.MotsCle.Trim()));
            }
            response.RecordFiltred = query.Count();

            if (pagination != null)
            {
                //query = ApplyPagination(query, pagination);
            }

            response.Data = query.ToList();

            return response;
        }
    }
}
