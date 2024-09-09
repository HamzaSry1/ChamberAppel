namespace ChamberAppel.Domain.DTOs
{
    public class DtoResetPassword
    {
        public Guid UserId { get; set; }
        public DateTime ExpirationDateToken { get; set; }
    }
}
