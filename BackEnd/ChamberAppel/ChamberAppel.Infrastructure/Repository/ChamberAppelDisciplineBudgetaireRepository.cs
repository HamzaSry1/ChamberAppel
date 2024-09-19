using ChamberAppel.Domain.DTOs;
using ChamberAppel.Domain.Models;
using ChamberAppel.Domain.Repository;
using ChamberAppel.Infrastructure.Data;
using Microsoft.EntityFrameworkCore;

namespace ChamberAppel.Infrastructure.Repository
{
    public class ChamberAppelDisciplineBudgetaireRepository
        : BaseRepository<ChamberAppelDisciplineBudgetaire>,
        IChamberAppelDisciplineBudgetaireRepository
    {

        private readonly ApplicationDbContext _dbContext;
        public ChamberAppelDisciplineBudgetaireRepository
            (ApplicationDbContext dbContext) : base(dbContext)
        {
            _dbContext = dbContext;
        }

        public async Task<DatatableResponse<ChamberAppelDisciplineBudgetaire>> GetAllAsync(DtoFiltreMotsCle? filter, DtoPagination? pagination)
        {
            var dbSet = _dbContext.ChamberAppelDisciplineBudgetaires;

            IQueryable<ChamberAppelDisciplineBudgetaire> query = dbSet;
            var response = new DatatableResponse<ChamberAppelDisciplineBudgetaire>
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
