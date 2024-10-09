using ChamberAppel.Domain.DTOs;
using ChamberAppel.Domain.Models;

namespace ChamberAppel.Domain.Repository
{
    public interface IChamberAppelImportRepository
    {
        Task<bool> Insert(List<ChamberAppeleTemp> list);
        Task<bool> Fusionner();
        Task<bool> Valider();
        Task<bool> Delete();
        Task<DatatableResponse<ChamberAppeleTemp>> GetAllValideData(DtoPagination pagination);
        Task<DatatableResponse<ChamberAppeleTemp>> GetAllErrorsData(DtoPagination pagination);
    }
}
