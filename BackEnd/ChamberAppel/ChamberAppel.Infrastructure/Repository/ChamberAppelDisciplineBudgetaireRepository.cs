using ChamberAppel.Domain.Models;
using ChamberAppel.Domain.Repository;
using ChamberAppel.Infrastructure.Data;

namespace ChamberAppel.Infrastructure.Repository
{
    public class ChamberAppelDisciplineBudgetaireRepository
        : BaseRepository<ChamberAppelDisciplineBudgetaire>,
        IChamberAppelDisciplineBudgetaireRepository
    {
        public ChamberAppelDisciplineBudgetaireRepository
            (ApplicationDbContext database) : base(database)
        {
        }
    }
}
