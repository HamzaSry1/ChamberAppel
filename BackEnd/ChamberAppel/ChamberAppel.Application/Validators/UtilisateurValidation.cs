using ChamberAppel.Domain.DTOs;
using FluentValidation;

namespace ChamberAppel.Application.Validators
{
    public class UtilisateurValidation : AbstractValidator<DtoUtilisateur>
    {
        public UtilisateurValidation()
        {
            RuleFor(user => user.Nom)
                .NotEmpty()
                .NotNull()
                .WithMessage("the name is required");

            RuleFor(user => user.Prenom)
                .NotEmpty()
                .NotNull()
                .WithMessage("the Prenom is required");
        }
    }
}
