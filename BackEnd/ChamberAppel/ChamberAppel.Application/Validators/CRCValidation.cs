using ChamberAppel.Domain.Models;
using FluentValidation;

namespace ChamberAppel.Application.Validators
{
    public class CRCValidation : AbstractValidator<CRC>
    {
        public CRCValidation()
        {
            RuleFor(user => user.Code)
                .NotEmpty()
                .NotNull()
                .WithMessage("the Code is required");

            RuleFor(user => user.Label)
                .NotEmpty()
                .NotNull()
                .WithMessage("the Label is required");
        }
    }
}
