using ChamberAppel.Domain.DTOs;
using ChamberAppel.Domain.Models;
using Microsoft.AspNetCore.Http;

namespace ChamberAppel.Domain.Services
{
    public interface IRequeteAppelImportService
    {
        Task<bool> Upload(IFormFile file, string updatedBy);
        Task<bool> Analyse();
        Task<bool> Fusionner();
        Task<DatatableResponse<RequeteAppelTemp>> GetAllValideData(DtoPagination pagination);
        Task<DatatableResponse<RequeteAppelTemp>> GetAllErrorsData(DtoPagination pagination);
    }
}
