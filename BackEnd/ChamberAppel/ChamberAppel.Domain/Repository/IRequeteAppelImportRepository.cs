using ChamberAppel.Domain.DTOs;
using ChamberAppel.Domain.Models;

namespace ChamberAppel.Domain.Repository
{
    public interface IRequeteAppelImportRepository
    {
        Task<bool> Insert(List<RequeteAppelTemp> list);
        Task<bool> Fusionner();
        Task<bool> Valider();
        Task<bool> Delete();
        Task<DatatableResponse<RequeteAppelTemp>> GetAllValideData(DtoPagination pagination);
        Task<DatatableResponse<RequeteAppelTemp>> GetAllErrorsData(DtoPagination pagination);
    }
}
