using ChamberAppel.Domain.DTOs;
using ChamberAppel.Domain.Models;

namespace ChamberAppel.Domain.Services
{
    public interface IRoleService : IBaseService<Role>
    {
        Task DeletePermissions(Guid roleId);
        Task<List<Permission>> GetPermissions(Guid roleId);
        Task AddPermissionsAsync(DtoCheckedListRequest model);
        Task<DatatableResponse<Role>> GetAll(DtoFiltreMotsCle? filter, DtoPagination? pagination);
        Task<List<DtoExportRole>> Exporter(DtoFiltreMotsCle? filtre, DtoPagination? pagination);
    }
}
