using ChamberAppel.Domain.DTOs;
using ChamberAppel.Domain.Models;

namespace ChamberAppel.Domain.Services
{
    public interface ICRCService : IBaseService<CRC>
    {
        Task<DatatableResponse<CRC>> GetAllFiltredAsync(DtoFiltreMotsCle? filter, DtoPagination? pagination);
    }
}
