using ChamberAppel.Domain.DTOs;
using ChamberAppel.Domain.Models;

namespace ChamberAppel.Domain.Services
{
    public interface ITypeUtilisateursService : IBaseService<TypeUtilisateur>
    {
        Task<DatatableResponse<TypeUtilisateur>> GetAllFiltredAsync(DtoFiltreMotsCle? filter, DtoPagination? pagination);
    }
}
