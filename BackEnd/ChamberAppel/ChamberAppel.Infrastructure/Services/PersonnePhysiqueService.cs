using ChamberAppel.Domain.Models;
using ChamberAppel.Domain.Repository;
using ChamberAppel.Domain.Services;

namespace ChamberAppel.Infrastructure.Services
{
    public class PersonnePhysiqueService : BaseService<PersonnePhysique>, IPersonnePhysiqueService
    {
        private readonly IPersonnePhysiqueRepository _repository;
        public PersonnePhysiqueService(IPersonnePhysiqueRepository repository) : base(repository)
        {
            _repository = repository;
        }
    }
}
