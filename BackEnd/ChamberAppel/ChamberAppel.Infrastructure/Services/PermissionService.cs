using ChamberAppel.Domain.Models;
using ChamberAppel.Domain.Repository;
using ChamberAppel.Domain.Services;

namespace ChamberAppel.Infrastructure.Services
{
    public class PermissionService : BaseService<Permission>, IPermissionService
    {
        public PermissionService(IPermissionRepository repository) : base(repository)
        {
        }
    }
}
