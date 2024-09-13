using ChamberAppel.Domain.DTOs;
using ChamberAppel.Domain.Models;

namespace ChamberAppel.Application.Mappers
{
    public static class UtilisateurMapper
    {
        public static Utilisateur ToUtilisateur(this DtoUtilisateur request)
        {
            var target = new Utilisateur();

            target.Id = request.Id;
            target.PersonnePhysiqueId = request.PersonnePhysiqueId ?? Guid.Empty;
            target.Login = request.Login ?? "";
            target.Password = request.Password ?? "";
            target.IsActive = request.IsActive ?? false;

            return target;
        }
    }
}
