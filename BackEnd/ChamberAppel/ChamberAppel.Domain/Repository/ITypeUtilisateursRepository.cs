using ChamberAppel.Domain.DTOs;
using ChamberAppel.Domain.Models;

namespace ChamberAppel.Domain.Repository
{
    public interface ITypeUtilisateursRepository : IBaseRepository<TypeUtilisateur>
    {
        Task<DatatableResponse<TypeUtilisateur>> GetAllFiltredAsync(DtoFiltreMotsCle? filter, DtoPagination? pagination);
    }
}
