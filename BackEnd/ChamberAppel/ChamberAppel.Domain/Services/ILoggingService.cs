namespace ChamberAppel.Domain.Services
{
    public interface ILoggingService
    {
        void LogAsync(Guid id, string action, string description);
    }
}
