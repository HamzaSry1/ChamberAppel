using ChamberAppel.Domain.DTOs;
using ChamberAppel.Domain.Models;

namespace ChamberAppel.Domain.Services
{
    public interface IChamberAppelService : IBaseService<ChamberAppele>
    {
        Task<DatatableResponse<ChamberAppele>> GetAllAsync(DtoFiltreChamberAppele? filter, DtoPagination? pagination);
    }
}
