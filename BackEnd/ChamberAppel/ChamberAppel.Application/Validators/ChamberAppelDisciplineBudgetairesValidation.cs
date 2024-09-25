using ChamberAppel.Application.ErrorsMessages;
using ChamberAppel.Domain.Models;
using FluentValidation;

namespace ChamberAppel.Application.Validators
{
    public class ChamberAppelDisciplineBudgetairesValidation : AbstractValidator<DisciplineBudgetaire>
    {
        public ChamberAppelDisciplineBudgetairesValidation()
        {

            RuleFor(chamber => chamber.Numero_Dossier)
                .NotNull()
                .NotEmpty()
                .WithMessage(CustomMessages.Required);

            RuleFor(chamber => chamber.Appelant)
                .NotNull()
                .NotEmpty()
                .WithMessage(CustomMessages.Required);

            RuleFor(chamber => chamber.Centre_Comptable)
                .NotNull()
                .NotEmpty()
                .WithMessage(CustomMessages.Required);

        }
    }
}
