using ChamberAppel.Domain.Models;
using ChamberAppel.Domain.Repository;
using ChamberAppel.Infrastructure.Data;

namespace ChamberAppel.Infrastructure.Repository
{
    public class UtilisateurLogRepository : BaseRepository<UtilisateurLog>, IUtilisateurLogRepository
    {
        public UtilisateurLogRepository(ApplicationDbContext database) : base(database)
        {
        }
    }
}
