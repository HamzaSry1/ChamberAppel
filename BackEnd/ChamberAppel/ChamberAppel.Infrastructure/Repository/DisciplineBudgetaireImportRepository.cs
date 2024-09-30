using ChamberAppel.Domain.DTOs;
using ChamberAppel.Domain.Models;
using ChamberAppel.Domain.Repository;
using ChamberAppel.Infrastructure.Data;

namespace ChamberAppel.Infrastructure.Repository
{
    public class DisciplineBudgetaireImportRepository : IDisciplineBudgetaireImportRepository
    {
        private readonly ApplicationDbContext _context;

        public DisciplineBudgetaireImportRepository(ApplicationDbContext context)
        {
            _context = context;
        }

        public Task Confirmer(Guid id)
        {
            throw new NotImplementedException();
        }

        public Task<bool> Delete(Guid id)
        {
            throw new NotImplementedException();
        }

        public Task<bool> Insert(List<DisciplineBudgetaireTemp> data)
        {
            throw new NotImplementedException();
        }
        public Task<bool> Fusionner(Guid id, Guid updatedBy)
        {
            throw new NotImplementedException();
        }

        public Task<bool> Valider(Guid id)
        {
            throw new NotImplementedException();
        }

        public Task<DatatableResponse<DisciplineBudgetaireTemp>> GetAllErrorsData(Guid id, DtoPagination pagination)
        {
            throw new NotImplementedException();
        }

        public Task<DatatableResponse<DisciplineBudgetaireTemp>> GetAllValideData(Guid id, DtoPagination pagination)
        {
            throw new NotImplementedException();
        }


    }
}
