using ChamberAppel.Application.Messages;
using ChamberAppel.Domain.Models;
using FluentValidation;

namespace ChamberAppel.Application.Validators
{
    public class DisciplineBudgetairesValidation : AbstractValidator<DisciplineBudgetaire>
    {
        public DisciplineBudgetairesValidation()
        {

            RuleFor(chamber => chamber.Numero_Dossier)
                .NotNull()
                .NotEmpty()
                .WithMessage(Const.Required);

            RuleFor(chamber => chamber.Appelant)
                .NotNull()
                .NotEmpty()
                .WithMessage(Const.Required);

            RuleFor(chamber => chamber.Centre_Comptable)
                .NotNull()
                .NotEmpty()
                .WithMessage(Const.Required);

        }
    }
}
