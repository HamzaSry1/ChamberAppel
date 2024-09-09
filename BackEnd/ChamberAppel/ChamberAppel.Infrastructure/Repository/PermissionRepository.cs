using ChamberAppel.Domain.DTOs;
using ChamberAppel.Domain.Models;
using ChamberAppel.Domain.Repository;
using ChamberAppel.Infrastructure.Data;
using Microsoft.EntityFrameworkCore;
using System.Text.RegularExpressions;

namespace ChamberAppel.Infrastructure.Repository
{
    public class PermissionRepository : BaseRepository<Permission>, IPermissionRepository
    {
        private readonly ApplicationDbContext _dbContext;
        public PermissionRepository(ApplicationDbContext dbContext) : base(dbContext)
        {
            _dbContext = dbContext;
        }

        public async Task<DatatableResponse<Permission>> GetAll(DtoFiltreMotsCle? filter, DtoPagination? pagination)
        {
            var dbSet = _dbContext.Permissions;

            IQueryable<Permission> query = dbSet;
            var response = new DatatableResponse<Permission>
            {
                RecordTotal = await query.CountAsync(),
            };

            if (!string.IsNullOrEmpty(filter.MotsCle))
            {
                query = query.Where(x => x.Code.Trim().Contains(filter.MotsCle.Trim())
                                         || x.Label.Trim().Contains(filter.MotsCle.Trim())
                                         || x.Groupe.Trim().Contains(filter.MotsCle.Trim())
                                         || x.Description.Trim().Contains(filter.MotsCle.Trim()));
            }

            response.RecordFiltred = query.Count();

            if (pagination != null)
            {
                query = ApplyPagination(query, pagination);
            }

            response.Data = query.ToList();

            return response;
        }

        private IQueryable<Permission> ApplyPagination(IQueryable<Permission> query, DtoPagination pagination)
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
                if ("groupe" == orderByProperty)
                {
                    query = pagination.OrderByDirection == "desc" ? query.OrderByDescending(e => e.Groupe) : query.OrderBy(e => e.Groupe);
                }
            }
            return query;
        }
    }
}
