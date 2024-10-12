using ChamberAppel.Domain.DTOs;
using ChamberAppel.Domain.Models;
using Microsoft.AspNetCore.Http;

namespace ChamberAppel.Domain.Services
{
    public interface IChamberAppelImportService
    {
        Task<bool> Upload(IFormFile file, string updatedBy);
        Task<bool> Analyse();
        Task<bool> Fusionner();
        Task<DatatableResponse<ChamberAppeleTemp>> GetAllValideData(DtoPagination pagination);
        Task<DatatableResponse<ChamberAppeleTemp>> GetAllErrorsData(DtoPagination pagination);
    }
}
