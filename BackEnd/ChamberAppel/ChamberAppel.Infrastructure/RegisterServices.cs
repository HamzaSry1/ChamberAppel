using ChamberAppel.Application.Exceptions.ErrorsMessages;
using ChamberAppel.Domain.Repository;
using ChamberAppel.Infrastructure.Data;
using ChamberAppel.Infrastructure.Repository;
using Microsoft.EntityFrameworkCore;
using Microsoft.Extensions.Configuration;
using Microsoft.Extensions.DependencyInjection;

namespace ChamberAppel.Infrastructure
{
    public static class RegisterServices
    {
        public static IServiceCollection RegisterInfrastructure(this IServiceCollection service, IConfiguration configuration)
        {
            service.AddDbContext<ApplicationDbContext>(options =>
            {
                options.UseOracle(configuration.GetConnectionString("OracleDatabaseCnx")
                    ?? throw new Exception(CustomMessages.InvalidConnexionString));
            });

            return service;
        }
    }
}
