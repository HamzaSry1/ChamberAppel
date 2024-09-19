using ChamberAppel.Domain.DTOs;
using ChamberAppel.Domain.Models;
using ChamberAppel.Domain.Repository;
using ChamberAppel.Infrastructure.Data;
using Microsoft.EntityFrameworkCore;

namespace ChamberAppel.Infrastructure.Repository
{
    public class RoleRepository : BaseRepository<Role>, IRoleRepository
    {
        private readonly ApplicationDbContext _dbContext;
        public RoleRepository(ApplicationDbContext dbContext) : base(dbContext)
        {
            _dbContext = dbContext;
        }

        public override async Task<List<Role>> GetAllAsync()
            => await _dbContext.Roles.OrderBy(x => x.Label).ToListAsync();
        public async Task AddPermissionsAsync(Guid roleId, List<Guid> listCheckedId)
        {
            var permissions = from l in listCheckedId
                              join p in _dbContext.Permissions on l equals p.Id
                              join r in _dbContext.Roles on roleId equals r.Id
                              select new RolePermissions
                              {
                                  Permission = p,
                                  PermissionId = p.Id,
                                  Role = r,
                                  RoleId = r.Id
                              };
            await _dbContext.RolePermissions.AddRangeAsync(permissions);
            await _dbContext.SaveChangesAsync();
        }
        public async Task DeleteAllRolePermissionsAsync(Guid roleId)
        {
            _dbContext.RolePermissions.RemoveRange(_dbContext.RolePermissions.Where(item => item.RoleId == roleId));
            await _dbContext.SaveChangesAsync();
        }
        public async Task<List<Permission?>> GetPermissionsAsync(Guid roleId)
        {
            return await _dbContext.RolePermissions
                .Where(r => r.RoleId == roleId)
                .Select(r => r.Permission)
                .ToListAsync();
        }
        public async Task<DatatableResponse<Role>> GetAllFiltredAsync(DtoFiltreMotsCle? filter, DtoPagination? pagination)
        {
            var dbSet = _dbContext.Roles;

            IQueryable<Role> query = dbSet;
            var response = new DatatableResponse<Role>
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

        // TODO : Move to Application/Services/PaginationService
        private IQueryable<Role> ApplyPagination(IQueryable<Role> query, DtoPagination pagination)
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
