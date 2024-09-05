using ChamberAppel.Domain.Models;
using ChamberAppel.Domain.Repository;
using ChamberAppel.Infrastructure.Data;

namespace ChamberAppel.Infrastructure.Repository
{
    public class PersonnePhysiqueRepository : BaseRepository<PersonnePhysique>, IPersonnePhysiqueRepository
    {
        public PersonnePhysiqueRepository(ApplicationDbContext database) : base(database)
        {
        }
    }
}
