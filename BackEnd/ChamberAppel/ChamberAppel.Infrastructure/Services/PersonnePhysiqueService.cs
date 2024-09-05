using ChamberAppel.Domain.Models;
using ChamberAppel.Domain.Repository;
using ChamberAppel.Domain.Services;

namespace ChamberAppel.Infrastructure.Services
{
    public class PersonnePhysiqueService : BaseService<PersonnePhysique>, IPersonnePhysiqueService
    {
        public PersonnePhysiqueService(IPersonnePhysiqueRepository repository) : base(repository)
        {
        }
    }
}
