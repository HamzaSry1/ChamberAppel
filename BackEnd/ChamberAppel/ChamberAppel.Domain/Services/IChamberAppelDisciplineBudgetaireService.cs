using ChamberAppel.Domain.DTOs;
using ChamberAppel.Domain.Models;

namespace ChamberAppel.Domain.Services
{
    public interface IChamberAppelDisciplineBudgetaireService : IBaseService<ChamberAppelDisciplineBudgetaire>
    {
        Task<DatatableResponse<ChamberAppelDisciplineBudgetaire>> GetAllAsync(DtoFiltreMotsCle? filter, DtoPagination? pagination);
    }
}
