using ChamberAppel.Domain.DTOs;
using ChamberAppel.Domain.Models;

namespace ChamberAppel.Domain.Repository
{
    public interface IRoleRepository : IBaseRepository<Role>
    {
        Task AddPermissionsAsync(Guid roleId, List<Guid> listCheckedId);
        Task DeleteAllRolePermissionsAsync(Guid id);
        Task<List<Permission>> GetPermissionsAsync(Guid roleId);
        Task<DatatableResponse<Role>> GetAllAsync(DtoFiltreMotsCle? filter, DtoPagination? pagination);
    }
}
