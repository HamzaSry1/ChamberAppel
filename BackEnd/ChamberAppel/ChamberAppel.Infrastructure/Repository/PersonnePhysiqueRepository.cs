using ChamberAppel.Domain.Models;
using ChamberAppel.Domain.Repository;
using ChamberAppel.Infrastructure.Data;

namespace ChamberAppel.Infrastructure.Repository
{
    public class PersonnePhysiqueRepository : BaseRepository<PersonnePhysique>, IPersonnePhysiqueRepository
    {
        public PersonePhysiqueRepository(ApplicationDbContext database) : base(database)
        {
        }
    }
}
