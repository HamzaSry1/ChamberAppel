using ChamberAppel.Infrastructure.Data;
using ChamberAppel.Domain.Repository;
using ChamberAppel.Domain.Models;

namespace ChamberAppel.Infrastructure.Repository
{
    public class LoggingRepository : ILoggingRepository
    {
        private readonly ApplicationDbContext _database;
        public LoggingRepository(ApplicationDbContext database)
        {
            _database = database;
        }
        public void LogAsync(Guid id, string action, string description)
        {
            // validate those param not empty ! 

            // get the user id from the httpcontext

            // then save into the database
            var userLog = new UtilisateurLogging
            {
                Id = Guid.NewGuid(),
                UtilisateurId = id,
                Action = action,
                Description = description,
                DateLogging = DateTime.UtcNow,
            };

            _database.UtilisateurLoggings.Add(userLog);
            _database.SaveChangesAsync();
        }
    }
}
