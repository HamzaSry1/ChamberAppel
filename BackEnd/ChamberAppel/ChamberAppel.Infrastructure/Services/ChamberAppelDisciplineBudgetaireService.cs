using ChamberAppel.Domain.DTOs;
using ChamberAppel.Domain.Models;
using ChamberAppel.Domain.Repository;
using ChamberAppel.Domain.Services;

namespace ChamberAppel.Infrastructure.Services
{
    public class ChamberAppelDisciplineBudgetaireService : BaseService<ChamberAppelDisciplineBudgetaire>, IChamberAppelDisciplineBudgetaireService
    {
        private readonly IChamberAppelDisciplineBudgetaireRepository _repository;
        public ChamberAppelDisciplineBudgetaireService(IChamberAppelDisciplineBudgetaireRepository repository) : base(repository)
        {
            _repository = repository;
        }

        public async Task<DatatableResponse<ChamberAppelDisciplineBudgetaire>> GetAllAsync(DtoFiltreMotsCle? filter, DtoPagination? pagination)
        {
            return await _repository.GetAllAsync(filter, pagination);
        }
    }
}
