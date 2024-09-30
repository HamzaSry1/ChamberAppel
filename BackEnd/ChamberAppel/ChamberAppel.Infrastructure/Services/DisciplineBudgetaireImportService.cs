using ChamberAppel.Domain.DTOs;
using ChamberAppel.Domain.Models;
using ChamberAppel.Domain.Repository;
using ChamberAppel.Domain.Services;
using Microsoft.AspNetCore.Http;

namespace ChamberAppel.Infrastructure.Services
{
    public class DisciplineBudgetaireImportService : IDisciplineBudgetaireImportService
    {
        private readonly IDisciplineBudgetaireImportRepository _repository;

        public DisciplineBudgetaireImportService(IDisciplineBudgetaireImportRepository repository)
        {
            _repository = repository;
        }

        public Task<bool> Analyse(Guid id)
        {
            throw new NotImplementedException();
        }

        public Task<bool> Confirmer(Guid id)
        {
            throw new NotImplementedException();
        }

        public Task<bool> Delete(Guid id)
        {
            throw new NotImplementedException();
        }

        public Task<bool> Fusionner(Guid id, Guid updatedBy)
        {
            throw new NotImplementedException();
        }
        public Task<bool> Upload(IFormFile file, Guid id, Guid updatedBy)
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
