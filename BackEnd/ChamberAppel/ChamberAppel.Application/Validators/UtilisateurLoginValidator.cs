using ChamberAppel.Domain.DTOs;
using FluentValidation;

namespace ChamberAppel.Application.Validators
{
    public class UtilisateurLoginValidator : AbstractValidator<DtoLogin>
    {
        public UtilisateurLoginValidator()
        {
            RuleFor(login => login.Login).NotEmpty().NotNull().WithMessage("the login must be entred");
            RuleFor(login => login.Password).NotEmpty().NotNull().WithMessage("the Password must be entred");
        }
    }
}
