using ChamberAppel.Domain.DTOs;
using ChamberAppel.Domain.Models;

namespace ChamberAppel.Domain.Services
{
    public interface IDisciplineBudgetaireService : IBaseService<DisciplineBudgetaire>
    {
        Task<DatatableResponse<DisciplineBudgetaire>> GetAllAsync(DtoFiltreDisciplineBudgetaire? filter, DtoPagination? pagination);
    }
}
