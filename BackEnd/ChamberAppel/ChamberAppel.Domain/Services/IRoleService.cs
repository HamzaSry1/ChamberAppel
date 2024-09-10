using ChamberAppel.Domain.DTOs;
using ChamberAppel.Domain.Models;

namespace ChamberAppel.Domain.Services
{
    public interface IRoleService : IBaseService<Role>
    {
        Task DeletePermissionsAsync(Guid roleId);
        Task<List<Permission>> GetPermissionsAsync(Guid roleId);
        Task AddPermissionsAsync(DtoCheckedListRequest model);
        Task<DatatableResponse<Role>> GetAllAsync(DtoFiltreMotsCle? filter, DtoPagination? pagination);
        Task<List<DtoExportRole>> ExporterAsync(DtoFiltreMotsCle? filtre, DtoPagination? pagination);
    }
}
