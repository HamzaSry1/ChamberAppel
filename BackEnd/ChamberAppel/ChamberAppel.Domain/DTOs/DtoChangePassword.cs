namespace ChamberAppel.Domain.DTOs
{
    public class DtoChangePassword
    {
        public Guid UserId { get; set; }
        public string? OldPassword { get; set; }
        public string? NewPassword { get; set; }
    }
}
