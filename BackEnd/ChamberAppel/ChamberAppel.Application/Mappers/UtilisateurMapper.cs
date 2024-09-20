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
            target.Nom = request.Nom;
            target.Prenom = request.Prenom ?? "";
            target.NomArabe = request.NomArabe ?? "";
            target.PrenomArabe = request.PrenomArabe ?? "";
            target.Email = request.Email ?? "";
            target.Login = request.Login ?? "";
            target.Password = request.Password ?? "";
            target.UpdatedBy = request.UpdatedBy ?? "";
            target.UpdateTime = DateTime.Now;
            target.IsActive = request.IsActive;

            return target;
        }
    }
}
