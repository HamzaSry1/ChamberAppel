using ChamberAppel.Domain.Models;
using ChamberAppel.Domain.Repository;
using ChamberAppel.Domain.Services;

namespace ChamberAppel.Infrastructure.Services
{
    public class UtilisateurPermissionService : BaseService<UtilisateurPermissions>, IUtilisateurPermissionService
    {
        public UtilisateurPermissionService(IUtilisateurPermissionRepository repository) : base(repository)
        {
        }
    }
}
