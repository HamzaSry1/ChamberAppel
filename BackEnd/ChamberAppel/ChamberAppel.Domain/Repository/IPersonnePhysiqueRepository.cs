using ChamberAppel.Domain.Models;

namespace ChamberAppel.Domain.Repository
{
    public interface IPersonnePhysiqueRepository : IBaseRepository<PersonnePhysique>
    {
        Task<PersonnePhysique> CreateOrUpdateAsync(PersonnePhysique data);
    }
}
