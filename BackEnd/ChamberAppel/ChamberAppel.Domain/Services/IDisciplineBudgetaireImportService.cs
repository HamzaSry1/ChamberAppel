using ChamberAppel.Domain.DTOs;
using ChamberAppel.Domain.Models;
using Microsoft.AspNetCore.Http;

namespace ChamberAppel.Domain.Services
{
    public interface IDisciplineBudgetaireImportService
    {
        Task<bool> Upload(IFormFile file, Guid id, Guid updatedBy);
        Task<bool> Analyse(Guid id);
        Task<bool> Confirmer(Guid id);
        Task<bool> Fusionner(Guid id, Guid updatedBy);
        Task<bool> Delete(Guid id);
        Task<DatatableResponse<DisciplineBudgetaireTemp>> GetAllValideData(Guid id, DtoPagination pagination);
        Task<DatatableResponse<DisciplineBudgetaireTemp>> GetAllErrorsData(Guid id, DtoPagination pagination);
    }
}
