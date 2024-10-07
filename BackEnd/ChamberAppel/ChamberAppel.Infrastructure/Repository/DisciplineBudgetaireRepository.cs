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

        public async Task<DatatableResponse<DisciplineBudgetaire>> GetAllAsync(DtoFiltreDisciplineBudgetaire? filter, DtoPagination? pagination)
        {
            var dbSet = _dbContext.DisciplineBudgetaires;

            IQueryable<DisciplineBudgetaire> query = dbSet;
            var response = new DatatableResponse<DisciplineBudgetaire>
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
                    query = query.Where(x => x.Emis_En_Date_Du == filter.Emis_En_Date_Du);
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
                        || x.Conseiller_Rapporteur.Trim().Contains(filter.MotsCle.Trim())
                       );
                }
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
