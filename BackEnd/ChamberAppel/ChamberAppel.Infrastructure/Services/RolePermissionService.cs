using ChamberAppel.Domain.Models;
using ChamberAppel.Domain.Repository;
using ChamberAppel.Domain.Services;

namespace ChamberAppel.Infrastructure.Services
{
    public class RolePermissionService : BaseService<RolePermissions>, IRolePermissionService
    {
        public RolePermissionService(IRolePermissionRepository repository) : base(repository)
        {
        }
    }
}
