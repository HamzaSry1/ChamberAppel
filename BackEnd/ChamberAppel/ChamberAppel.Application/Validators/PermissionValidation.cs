using ChamberAppel.Domain.Models;
using FluentValidation;

namespace ChamberAppel.Application.Validators
{
    public class PermissionValidation : AbstractValidator<Permission>
    {
        public PermissionValidation()
        {
            RuleFor(user => user.Code)
                .NotEmpty()
                .NotNull()
                .WithMessage("the Code is required");

            RuleFor(user => user.Label)
                .NotEmpty()
                .NotNull()
                .WithMessage("the Label is required");

            RuleFor(user => user.Groupe)
                .NotEmpty()
                .NotNull()
                .WithMessage("the Groupe is required");
        }
    }
}
