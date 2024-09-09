using ChamberAppel.Domain.DTOs;
using ChamberAppel.Domain.Models;

namespace ChamberAppel.Domain.Repository
{
    public interface IPermissionRepository : IBaseRepository<Permission>
    {
        Task<DatatableResponse<Permission>> GetAll(DtoFiltreMotsCle? filter, DtoPagination? pagination);
    }
}
