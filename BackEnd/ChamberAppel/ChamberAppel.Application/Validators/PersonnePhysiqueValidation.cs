using ChamberAppel.Domain.Models;
using FluentValidation;

namespace ChamberAppel.Application.Validators
{
    public class PersonnePhysiqueValidation : AbstractValidator<PersonnePhysique>
    {
        public PersonnePhysiqueValidation()
        {
            RuleFor(personne => personne.Nom).NotEmpty().NotNull()
                .WithMessage("the nom is required");

            RuleFor(personne => personne.Prenom).NotEmpty().NotNull()
                .WithMessage("the Prenom is required");
        }
    }
}
