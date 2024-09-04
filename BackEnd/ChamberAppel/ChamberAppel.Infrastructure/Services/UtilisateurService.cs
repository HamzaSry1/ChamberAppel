using ChamberAppel.Domain.Models;
using ChamberAppel.Domain.Repository;
using ChamberAppel.Domain.Services;

namespace ChamberAppel.Infrastructure.Services
{
    public class UtilisateurService : BaseService<Utilisateur>, IUtilisateurService
    {
        public readonly IUtilisateurRepository _repository;
        public UtilisateurService(IUtilisateurRepository repository) : base(repository)
        {
            _repository = repository;
        }
    }
}
