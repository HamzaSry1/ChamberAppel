using ChamberAppel.Application.Messages;
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
                .WithMessage(Const.Required);

            RuleFor(user => user.Prenom)
                .NotEmpty()
                .NotNull()
                .WithMessage(Const.Required);

            RuleFor(user => user.Password)
               .NotEmpty()
               .NotNull()
               .WithMessage(Const.Required);

            RuleFor(user => user.Login)
              .NotEmpty()
              .NotNull()
              .WithMessage(Const.Required);
        }
    }
}
