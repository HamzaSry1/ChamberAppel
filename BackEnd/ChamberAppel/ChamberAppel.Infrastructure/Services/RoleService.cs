using ChamberAppel.Domain.DTOs;
using ChamberAppel.Domain.Models;
using ChamberAppel.Domain.Repository;
using ChamberAppel.Domain.Services;

namespace ChamberAppel.Infrastructure.Services
{
    public class RoleService : BaseService<Role>, IRoleService
    {
        private readonly IRoleRepository _repository;
        public RoleService(IRoleRepository repository) : base(repository)
        {
            _repository = repository;
        }

        public async Task AddPermissionsAsync(DtoCheckedListRequest model)
        {
            await _repository.DeleteAllRolePermissions(model.Id);
            await _repository.AddPermissions(model.Id, model.ListCheckedId);
        }
        public async Task<List<int?>> GetRolePermissionsChecked(int roleId)
        {
            return await GetRolePermissionsChecked(roleId);
        }
        public async Task DeletePermissions(Guid roleId)
        {
            await _repository.DeleteAllRolePermissions(roleId);
        }
        public async Task<List<Permission>> GetPermissions(Guid roleId)
        {
            return await _repository.GetPermissions(roleId);
        }
        public async Task<DatatableResponse<Role>> GetAll(DtoFiltreMotsCle? filter, DtoPagination? pagination)
        {
            return await _repository.GetAll(filter, pagination);
        }
        public async Task<List<DtoExportRole>> Exporter(DtoFiltreMotsCle? filtre, DtoPagination? pagination)
        {
            var r = await GetAll(filtre, null);
            return r.Data.Select(x => new DtoExportRole
            {
                Code = x.Code,
                Label = x.Label,
            }).OrderBy(x => x.Code)
              .ToList();
        }
    }
}
