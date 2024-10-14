using ChamberAppel.Domain.DTOs;
using ChamberAppel.Domain.Models;

namespace ChamberAppel.Domain.Services
{
    public interface IRequeteAppelService : IBaseService<RequeteAppel>
    {
        Task<DatatableResponse<RequeteAppel>> GetAllAsync(DtoFiltreRequeteAppele? filter, DtoPagination? pagination);
    }
}
