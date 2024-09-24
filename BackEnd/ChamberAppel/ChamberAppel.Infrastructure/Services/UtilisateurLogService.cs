using ChamberAppel.Domain.Models;
using ChamberAppel.Domain.Repository;
using ChamberAppel.Domain.Services;

namespace ChamberAppel.Infrastructure.Services
{
    public class UtilisateurLogService : BaseService<UtilisateurLogging>, IUtilisateurLogService
    {
        public UtilisateurLogService(IUtilisateurLogRepository repository) : base(repository)
        {
        }
    }
}
