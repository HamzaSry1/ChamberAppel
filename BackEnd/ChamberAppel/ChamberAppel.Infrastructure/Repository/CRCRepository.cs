using ChamberAppel.Domain.DTOs;
using ChamberAppel.Domain.Models;
using ChamberAppel.Domain.Repository;
using ChamberAppel.Infrastructure.Data;
using Microsoft.EntityFrameworkCore;

namespace ChamberAppel.Infrastructure.Repository
{
    public class CRCRepository : BaseRepository<CRC>, ICRCRepository
    {
        private readonly ApplicationDbContext _dbContext;
        public CRCRepository(ApplicationDbContext dbContext) : base(dbContext)
        {
            _dbContext = dbContext;
        }
        public async Task<DatatableResponse<CRC>> GetAllFiltredAsync(DtoFiltreMotsCle? filter, DtoPagination? pagination)
        {
            var dbSet = _dbContext.CRCs;

            IQueryable<CRC> query = dbSet;
            var response = new DatatableResponse<CRC>
            {
                RecordTotal = await query.CountAsync(),
            };

            if (!string.IsNullOrEmpty(filter.MotsCle))
            {
                query = query.Where(x => x.Code.Trim().Contains(filter.MotsCle.Trim())
                                         || x.Label.Trim().Contains(filter.MotsCle.Trim()));
            }
            response.RecordFiltred = query.Count();

            if (pagination != null)
            {
                query = ApplyPagination(query, pagination);
            }

            response.Data = query.ToList();

            return response;
        }
        private IQueryable<CRC> ApplyPagination(IQueryable<CRC> query, DtoPagination pagination)
        {
            // Apply pagination
            query = query.Skip(((pagination?.PageNumber ?? 1) - 1) * (pagination?.PageSize ?? 5)).Take(pagination?.PageSize ?? 5);

            // Apply ordering
            if (!string.IsNullOrEmpty(pagination?.OrderBy))
            {
                string orderByProperty = pagination.OrderBy.ToLower();
                if ("label" == orderByProperty)
                {
                    query = pagination.OrderByDirection == "desc" ? query.OrderByDescending(e => e.Label) : query.OrderBy(e => e.Label);
                }
                if ("code" == orderByProperty)
                {
                    query = pagination.OrderByDirection == "desc" ? query.OrderByDescending(e => e.Code) : query.OrderBy(e => e.Code);
                }
            }
            return query;
        }
    }
}
