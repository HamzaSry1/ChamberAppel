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
            await _repository.DeleteAllRolePermissionsAsync(model.Id);
            await _repository.AddPermissionsAsync(model.Id, model.ListCheckedId);
        }

        public async Task<List<Permission>> GetPermissionsAsync(Guid roleId)
             => await _repository.GetPermissionsAsync(roleId);

        public async Task<DatatableResponse<Role>> GetAllFiltredAsync(DtoFiltreMotsCle? filter, DtoPagination? pagination)
             => await _repository.GetAllFiltredAsync(filter, pagination);

        public async Task<List<DtoExportRole>> ExporterAsync(DtoFiltreMotsCle? filtre, DtoPagination? pagination)
        {
            var r = await GetAllFiltredAsync(filtre, null);
            return r.Data.Select(x => new DtoExportRole
            {
                Code = x.Code,
                Label = x.Label,
            }).OrderBy(x => x.Code)
              .ToList();
        }
    }
}
