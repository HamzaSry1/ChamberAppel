using ChamberAppel.Domain.Models;
using ChamberAppel.Domain.Repository;
using ChamberAppel.Domain.Services;

namespace ChamberAppel.Infrastructure.Services
{
    public class ChamberAppelDisciplineBudgetaireService : BaseService<ChamberAppelDisciplineBudgetaire>, IChamberAppelDisciplineBudgetaireService
    {
        public ChamberAppelDisciplineBudgetaireService(IChamberAppelDisciplineBudgetaireRepository repository) : base(repository)
        {
        }
    }
}
