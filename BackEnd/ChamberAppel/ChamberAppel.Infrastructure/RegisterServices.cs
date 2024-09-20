using ChamberAppel.Application.ErrorsMessages;
using ChamberAppel.Application.Services;
using ChamberAppel.Domain.Repository;
using ChamberAppel.Domain.Services;
using ChamberAppel.Infrastructure.Data;
using ChamberAppel.Infrastructure.Repository;
using ChamberAppel.Infrastructure.Services;
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

            // Register REPOSITORY: 
            service.AddScoped<IChamberAppelDisciplineBudgetaireRepository, ChamberAppelDisciplineBudgetaireRepository>();
            service.AddScoped<IPermissionRepository, PermissionRepository>();
            service.AddScoped<IRolePermissionRepository, RolePermissionRepository>();
            service.AddScoped<IRoleRepository, RoleRepository>();
            service.AddScoped<IUtilisateurLogRepository, UtilisateurLogRepository>();
            service.AddScoped<IUtilisateurPermissionRepository, UtilisateurPermissionRepository>();
            service.AddScoped<IUtilisateurRepository, UtilisateurRepository>();
            service.AddScoped<ILoggingRepository, LoggingRepository>();

            // Register SERVICES:
            service.AddScoped<IChamberAppelDisciplineBudgetaireService, ChamberAppelDisciplineBudgetaireService>();
            service.AddScoped<IPermissionService, PermissionService>();
            service.AddScoped<IRolePermissionService, RolePermissionService>();
            service.AddScoped<IRoleService, RoleService>();
            service.AddScoped<IUtilisateurLogService, UtilisateurLogService>();
            service.AddScoped<IUtilisateurPermissionService, UtilisateurPermissionService>();
            service.AddScoped<IUtilisateurService, UtilisateurService>();
            service.AddScoped<ILoggingService, LoggingService>();
            service.AddScoped<IUserSessionService, UserSessionService>();
            service.AddScoped<IAuthentification, Authentification>();

            return service;
        }
    }
}
