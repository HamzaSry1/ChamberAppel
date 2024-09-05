using ChamberAppel.Application.Exceptions.ErrorsMessages;
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
            service.AddScoped<IPersonnePhysiqueRepository, PersonnePhysiqueRepository>();
            service.AddScoped<IRolePermissionRepository, RolePermissionRepository>();
            service.AddScoped<IRoleRepository, RoleRepository>();
            service.AddScoped<IUtilisateurLogRepository, UtilisateurLogRepository>();
            service.AddScoped<IUtilisateurPermissionRepository, UtilisateurPermissionRepository>();
            service.AddScoped<IUtilisateurRepository, UtilisateurRepository>();

            // Register SERVICES:
            service.AddScoped<IChamberAppelDisciplineBudgetaireService, ChamberAppelDisciplineBudgetaireService>();
            service.AddScoped<IPermissionService, PermissionService>();
            service.AddScoped<IPersonnePhysiqueService, PersonnePhysiqueService>();
            service.AddScoped<IRolePermissionService, RolePermissionService>();
            service.AddScoped<IRoleService, RoleService>();
            service.AddScoped<IUtilisateurLogService, UtilisateurLogService>();
            service.AddScoped<IUtilisateurPermissionService, UtilisateurPermissionService>();
            service.AddScoped<IUtilisateurService, UtilisateurService>();

            return service;
        }
    }
}
