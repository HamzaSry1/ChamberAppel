using ChamberAppel.Domain.DTOs;
using ChamberAppel.Domain.Models;

namespace ChamberAppel.Domain.Repository
{
    public interface IRoleRepository : IBaseRepository<Role>
    {
        Task AddPermissions(Guid roleId, List<Guid> listCheckedId);
        Task DeleteAllRolePermissions(Guid id);
        Task<List<Permission>> GetPermissions(Guid roleId);
        Task<DatatableResponse<Role>> GetAll(DtoFiltreMotsCle? filter, DtoPagination? pagination);
    }
}
