using ChamberAppel.Domain.Models;
using ChamberAppel.Domain.Repository;
using ChamberAppel.Infrastructure.Data;

namespace ChamberAppel.Infrastructure.Repository
{
    public class UtilisateurRepository : BaseRepository<Utilisateur>, IUtilisateurRepository
    {
        private readonly ApplicationDbContext _database;
        public UtilisateurRepository(ApplicationDbContext database) : base(database)
        {
            _database = database;
        }
    }
}
