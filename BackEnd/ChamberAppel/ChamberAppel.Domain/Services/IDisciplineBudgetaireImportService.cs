using ChamberAppel.Domain.DTOs;
using ChamberAppel.Domain.Models;
using Microsoft.AspNetCore.Http;

namespace ChamberAppel.Domain.Services
{
    public interface IDisciplineBudgetaireImportService
    {
        Task<bool> Upload(IFormFile file, string updatedBy);
        Task<bool> Analyse();
        Task<bool> Fusionner();
        Task<DatatableResponse<DisciplineBudgetaireTemp>> GetAllValideData(DtoPagination pagination);
        Task<DatatableResponse<DisciplineBudgetaireTemp>> GetAllErrorsData(DtoPagination pagination);
    }
}
