using ChamberAppel.Domain.DTOs;
using ChamberAppel.Domain.Models;
using Microsoft.AspNetCore.Http;

namespace ChamberAppel.Domain.Repository
{
    public interface IImporteRepository
    {
        Task<bool> UploadFile(IFormFile file, Guid id, Guid updatedBy);
        Task<bool> AnalyseFile(Guid id);
        Task<bool> ConfirmeFile(Guid id);
        Task<bool> MargeFile(Guid id, Guid updatedBy);
        Task<bool> DeleteFile(Guid id);
        Task<DatatableResponse<DisciplineBudgetaireTemp>> GetValideData();
        Task<DatatableResponse<DisciplineBudgetaireTemp>> GetErrorsData();
    }
}
