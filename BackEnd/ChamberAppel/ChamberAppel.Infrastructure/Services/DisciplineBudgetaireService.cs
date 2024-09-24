using ChamberAppel.Domain.DTOs;
using ChamberAppel.Domain.Models;
using ChamberAppel.Domain.Repository;
using ChamberAppel.Domain.Services;

namespace ChamberAppel.Infrastructure.Services
{
    public class DisciplineBudgetaireService : BaseService<DisciplineBudgetaire>, IDisciplineBudgetaireService
    {
        private readonly IDisciplineBudgetaireRepository _repository;
        public DisciplineBudgetaireService(IDisciplineBudgetaireRepository repository) : base(repository)
        {
            _repository = repository;
        }

        public async Task<DatatableResponse<DisciplineBudgetaire>> GetAllAsync(DtoFiltreMotsCle? filter, DtoPagination? pagination)
        {
            return await _repository.GetAllAsync(filter, pagination);
        }
    }
}
