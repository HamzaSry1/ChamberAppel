using ChamberAppel.Application.ErrorsMessages;
using ChamberAppel.Domain.Models;
using FluentValidation;

namespace ChamberAppel.Application.Validators
{
    public class ChamberAppelDisciplineBudgetairesValidation : AbstractValidator<DisciplineBudgetaire>
    {
        public ChamberAppelDisciplineBudgetairesValidation()
        {

            RuleFor(chamber => chamber.Numero_de_dossier)
                .NotNull()
                .NotEmpty()
                .WithMessage(CustomMessages.Required);

            RuleFor(chamber => chamber.Appelant)
                .NotNull()
                .NotEmpty()
                .WithMessage(CustomMessages.Required);

            RuleFor(chamber => chamber.Centre_comptable)
                .NotNull()
                .NotEmpty()
                .WithMessage(CustomMessages.Required);

        }
    }
}
