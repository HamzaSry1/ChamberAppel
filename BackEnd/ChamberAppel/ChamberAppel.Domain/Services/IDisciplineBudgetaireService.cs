using ChamberAppel.Domain.DTOs;
using ChamberAppel.Domain.Models;

namespace ChamberAppel.Domain.Services
{
    public interface IDisciplineBudgetaireService : IBaseService<DisciplineBudgetaire>
    {
        Task<DatatableResponse<DtoDisciplineBudgetaire>> GetAllAsync(DtoFiltreDisciplineBudgetaire? filter, DtoPagination? pagination);
    }
}
