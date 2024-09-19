using ChamberAppel.Domain.DTOs;
using ChamberAppel.Domain.Models;

namespace ChamberAppel.Domain.Services
{
    public interface IPermissionService : IBaseService<Permission>
    {
        Task<List<DtoPermissionGroupe>> GetAllByGroupeAsync();
        Task<List<DtoExportPermission>> ExporterAsync(DtoFiltreMotsCle? filtre, DtoPagination? pagination);
        Task<DatatableResponse<Permission>> GetAllFiltredAsync(DtoFiltreMotsCle? filter, DtoPagination? pagination);
    }
}
