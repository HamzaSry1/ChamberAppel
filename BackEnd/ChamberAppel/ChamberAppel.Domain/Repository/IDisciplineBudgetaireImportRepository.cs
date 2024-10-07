using ChamberAppel.Domain.DTOs;
using ChamberAppel.Domain.Models;

namespace ChamberAppel.Domain.Repository
{
    public interface IDisciplineBudgetaireImportRepository
    {
        Task<bool> Insert(List<DisciplineBudgetaireTemp> list);
        Task<bool> Fusionner();
        Task<bool> Valider();
        Task<bool> Delete();
        Task<DatatableResponse<DisciplineBudgetaireTemp>> GetAllValideData(DtoPagination pagination);
        Task<DatatableResponse<DisciplineBudgetaireTemp>> GetAllErrorsData(DtoPagination pagination);
    }
}
