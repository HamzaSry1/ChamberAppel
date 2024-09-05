using ChamberAppel.Domain.Models;
using ChamberAppel.Domain.Repository;
using ChamberAppel.Infrastructure.Data;

namespace ChamberAppel.Infrastructure.Repository
{
    public class PermissionRepository : BaseRepository<Permission>, IPermissionRepository
    {
        public PermissionRepository(ApplicationDbContext database) : base(database)
        {
        }
    }
}
