using ChamberAppel.Domain.Repository;
using ChamberAppel.Domain.Services;

namespace ChamberAppel.Infrastructure.Services
{
    public class LoggingService : ILoggingService
    {
        private readonly ILoggingRepository _repository;
        public LoggingService(ILoggingRepository repository)
        {
            _repository = repository;
        }

        public void LogAsync(Guid id, string action, string description)
        {
            _repository.LogAsync(id, action, description);
        }
    }
}
