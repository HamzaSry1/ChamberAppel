using ChamberAppel.Domain.DTOs;
using ChamberAppel.Domain.Models;

namespace ChamberAppel.Domain.Repository
{
    public interface IRequeteAppelRepository
         : IBaseRepository<RequeteAppel>
    {
        Task<DatatableResponse<DtoRequeteAppel>> GetAllAsync(DtoFiltreRequeteAppele? filter, DtoPagination? pagination);
    }
}
