using ChamberAppel.Domain.DTOs;
using ChamberAppel.Domain.Models;
using ChamberAppel.Domain.Repository;
using ChamberAppel.Domain.Services;

namespace ChamberAppel.Infrastructure.Services
{
    public class PermissionService : BaseService<Permission>, IPermissionService
    {
        private readonly IPermissionRepository _repository;
        public PermissionService(IPermissionRepository repository) : base(repository)
        {
            _repository = repository;
        }

        public async Task<List<DtoExportPermission>> Exporter(DtoFiltreMotsCle? filtre, DtoPagination? pagination)
        {
            var r = await GetAll(filtre, null);
            return r.Data.Select(x => new DtoExportPermission
            {
                Code = x.Code,
                Groupe = x.Groupe,
                Label = x.Label,
            }).OrderBy(x => x.Code)
              .ToList();
        }

        public async Task<DatatableResponse<Permission>> GetAll(DtoFiltreMotsCle? filter, DtoPagination? pagination)
        {
            return await _repository.GetAll(filter, pagination);
        }

        public async Task<List<DtoPermissionGroupe>> GetAllByGroupeAsync()
        {
            var list = await _repository.GetAllAsync();
            var resultat = list.GroupBy(list => list.Groupe)
                .Select(x => new DtoPermissionGroupe
                {
                    Groupe = x.Key,
                    Permissions = x.OrderBy(x => x.Label).ToList(),

                }).ToList();
            return resultat;
        }
    }
}
