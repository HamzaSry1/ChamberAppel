using ChamberAppel.Domain.DTOs;
using ChamberAppel.Domain.Models;

namespace ChamberAppel.Application.Mappers
{
    public static class PersonnePhysiqueMapper
    {
        public static PersonnePhysique ToPersonnePhysique(this DtoUtilisateur request)
        {
            var target = new PersonnePhysique();
            target.Id = request.PersonnePhysiqueId ?? Guid.Empty;
            target.Nom = request.Nom;
            target.Prenom = request.Prenom ?? "";
            target.NomArabe = request.NomArabe ?? "";
            target.PrenomArabe = request.PrenomArabe ?? "";
            target.Email = request.Email ?? "";
            target.UpdatedBy = request.UpdatedBy ?? "";
            target.UpdateTime = DateTime.Now;
            target.IsActive = request.IsActive;
            return target;
        }
    }
}
