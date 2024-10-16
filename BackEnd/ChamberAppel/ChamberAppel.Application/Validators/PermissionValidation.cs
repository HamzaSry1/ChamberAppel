using ChamberAppel.Application.Messages;
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
                .WithMessage(Const.Required);

            RuleFor(user => user.Label)
                .NotEmpty()
                .NotNull()
                .WithMessage(Const.Required);

            RuleFor(user => user.Groupe)
                .NotEmpty()
                .NotNull()
                .WithMessage(Const.Required);
        }
    }
}
