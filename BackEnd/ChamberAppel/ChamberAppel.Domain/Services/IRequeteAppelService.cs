using ChamberAppel.Domain.DTOs;
using ChamberAppel.Domain.Models;

namespace ChamberAppel.Domain.Services
{
    public interface IRequeteAppelService : IBaseService<RequeteAppel>
    {
        Task<DatatableResponse<DtoRequeteAppel>> GetAllAsync(DtoFiltreRequeteAppele? filter, DtoPagination? pagination);
        Task<List<DtoExportRequeteAppel>> ExportAsync(DtoFiltreRequeteAppele? filter, DtoPagination? pagination);
    }
}
