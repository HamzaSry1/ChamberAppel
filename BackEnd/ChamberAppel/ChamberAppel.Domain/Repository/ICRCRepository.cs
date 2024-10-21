using ChamberAppel.Domain.DTOs;
using ChamberAppel.Domain.Models;

namespace ChamberAppel.Domain.Repository
{
    public interface ICRCRepository : IBaseRepository<CRC>
    {
        Task<DatatableResponse<CRC>> GetAllFiltredAsync(DtoFiltreMotsCle? filter, DtoPagination? pagination);
    }
}
