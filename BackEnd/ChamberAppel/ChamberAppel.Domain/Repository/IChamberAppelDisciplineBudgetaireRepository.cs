using ChamberAppel.Domain.DTOs;
using ChamberAppel.Domain.Models;

namespace ChamberAppel.Domain.Repository
{
    public interface IChamberAppelDisciplineBudgetaireRepository 
        : IBaseRepository<ChamberAppelDisciplineBudgetaire>
    {
        Task<DatatableResponse<ChamberAppelDisciplineBudgetaire>> GetAllAsync(DtoFiltreMotsCle? filter, DtoPagination? pagination);
    }
}
