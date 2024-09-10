using ChamberAppel.Domain.DTOs;
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

    public class UtilisateurLoginValidator : AbstractValidator<DtoLogin>
    {
        public UtilisateurLoginValidator()
        {
            RuleFor(login => login.Login).NotEmpty().NotNull().WithMessage("the login must be entred");
            RuleFor(login => login.Password).NotEmpty().NotNull().WithMessage("the Password must be entred");
        }
    }
}
