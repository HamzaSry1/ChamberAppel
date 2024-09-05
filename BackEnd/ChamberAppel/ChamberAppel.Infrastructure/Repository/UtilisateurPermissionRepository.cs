using ChamberAppel.Domain.Models;
using ChamberAppel.Domain.Repository;
using ChamberAppel.Infrastructure.Data;

namespace ChamberAppel.Infrastructure.Repository
{
    public class UtilisateurPermissionRepository : BaseRepository<UtilisateurPermissions>, IUtilisateurPermissionRepository
    {
        public UtilisateurPermissionRepository(ApplicationDbContext database) : base(database)
        {
        }
    }
}
