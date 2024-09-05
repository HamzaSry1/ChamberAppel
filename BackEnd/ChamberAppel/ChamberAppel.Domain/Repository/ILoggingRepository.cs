namespace ChamberAppel.Domain.Repository
{
    public interface ILoggingRepository
    {
        void LogAsync(Guid id, string action, string description);
    }
}
