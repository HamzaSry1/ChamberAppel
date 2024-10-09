using ChamberAppel.Domain.DTOs;
using ChamberAppel.Domain.Models;

namespace ChamberAppel.Domain.Repository
{
    public interface IChamberAppelRepository
         : IBaseRepository<ChamberAppele>
    {
        Task<DatatableResponse<ChamberAppele>> GetAllAsync(DtoFiltreChamberAppele? filter, DtoPagination? pagination);
    }
}
