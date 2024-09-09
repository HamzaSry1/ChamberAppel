using ChamberAppel.Domain.DTOs;
using ChamberAppel.Domain.Models;

namespace ChamberAppel.Domain.Services
{
    public interface IPermissionService : IBaseService<Permission>
    {
        Task<List<DtoPermissionGroupe>> GetAllByGroupeAsync();
        Task<List<DtoExportPermission>> Exporter(DtoFiltreMotsCle? filtre, DtoPagination? pagination);
        Task<DatatableResponse<Permission>> GetAll(DtoFiltreMotsCle? filter, DtoPagination? pagination);
    }
}
