namespace ChamberAppel.Domain.DTOs
{
    public class DtoResetPasswordConfirmation
    {
        public string? NewPassword { get; set; }
        public string? Token { get; set; }
    }
}
