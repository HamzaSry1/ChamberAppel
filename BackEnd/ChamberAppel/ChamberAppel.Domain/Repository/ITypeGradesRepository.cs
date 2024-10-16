using ChamberAppel.Domain.DTOs;
using ChamberAppel.Domain.Models;

namespace ChamberAppel.Domain.Repository
{
    public interface ITypeGradesRepository : IBaseRepository<TypeGrade>
    {
        Task<DatatableResponse<TypeGrade>> GetAllFiltredAsync(DtoFiltreMotsCle? filter, DtoPagination? pagination);
    }
}
