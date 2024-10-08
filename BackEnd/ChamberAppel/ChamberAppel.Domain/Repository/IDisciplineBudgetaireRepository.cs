using ChamberAppel.Domain.DTOs;
using ChamberAppel.Domain.Models;

namespace ChamberAppel.Domain.Repository
{
    public interface IDisciplineBudgetaireRepository 
        : IBaseRepository<DisciplineBudgetaire>
    {
        Task<DatatableResponse<DtoDisciplineBudgetaire>> GetAllAsync(DtoFiltreDisciplineBudgetaire? filter, DtoPagination? pagination);
    }
}
