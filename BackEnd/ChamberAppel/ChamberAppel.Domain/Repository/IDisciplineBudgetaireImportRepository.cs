using ChamberAppel.Domain.DTOs;
using ChamberAppel.Domain.Models;

namespace ChamberAppel.Domain.Repository
{
    public interface IDisciplineBudgetaireImportRepository
    {
        Task<bool> Insert(List<DisciplineBudgetaireTemp> data);
        Task<bool> Valider(Guid id);
        Task Confirmer(Guid id);
        Task<bool> Fusionner(Guid id, Guid updatedBy);
        Task<bool> Delete(Guid id);
        Task<DatatableResponse<DisciplineBudgetaireTemp>> GetAllValideData(Guid id, DtoPagination pagination);
        Task<DatatableResponse<DisciplineBudgetaireTemp>> GetAllErrorsData(Guid id, DtoPagination pagination);
    }
}
