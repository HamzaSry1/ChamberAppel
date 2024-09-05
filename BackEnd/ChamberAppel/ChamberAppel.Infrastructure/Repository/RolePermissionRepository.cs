using ChamberAppel.Domain.Models;
using ChamberAppel.Domain.Repository;
using ChamberAppel.Infrastructure.Data;

namespace ChamberAppel.Infrastructure.Repository
{
    public class RolePermissionRepository : BaseRepository<RolePermissions>, IRolePermissionRepository
    {
        public RolePermissionRepository(ApplicationDbContext database) : base(database)
        {
        }
    }
}
