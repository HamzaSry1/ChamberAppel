using ChamberAppel.Domain.Models;
using ChamberAppel.Domain.Repository;
using ChamberAppel.Infrastructure.Data;
using Microsoft.EntityFrameworkCore;

namespace ChamberAppel.Infrastructure.Repository
{
    public class PersonnePhysiqueRepository : BaseRepository<PersonnePhysique>, IPersonnePhysiqueRepository
    {
        private readonly ApplicationDbContext _dbContext;
        public PersonnePhysiqueRepository(ApplicationDbContext dbContext) : base(dbContext)
        {
            _dbContext = dbContext;
        }

        public override async Task<PersonnePhysique?> DeleteByIdAsync(Guid id)
        {
            var personnephysique = await GetByIdAsync(id);
            if (personnephysique == null)
                return null;

            personnephysique.IsActive = 1;
            await _dbContext.SaveChangesAsync();

            return personnephysique;
        }

        public Task<PersonnePhysique> CreateOrUpdateAsync(PersonnePhysique data)
        {
            var exists = data.Id != Guid.Empty && _dbContext.PersonnePhysiques.Any(x => x.Id == data.Id);
            if (!exists)
            {
                return CreateAsync(data);
            }
            return UpdateAsync(data);
        }
    }
}
