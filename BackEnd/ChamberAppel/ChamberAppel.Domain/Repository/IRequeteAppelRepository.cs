using ChamberAppel.Domain.DTOs;
using ChamberAppel.Domain.Models;

namespace ChamberAppel.Domain.Repository
{
    public interface IRequeteAppelRepository
         : IBaseRepository<RequeteAppel>
    {
        Task<DatatableResponse<RequeteAppel>> GetAllAsync(DtoFiltreRequeteAppele? filter, DtoPagination? pagination);
    }
}
