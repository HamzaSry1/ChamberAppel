using ChamberAppel.Domain.Models;
using Microsoft.EntityFrameworkCore;

namespace ChamberAppel.Infrastructure.Data
{
    public class ApplicationDbContext(DbContextOptions<ApplicationDbContext> options)
        : DbContext(options)
    {

        public DbSet<PersonnePhysique> PersonnePhysiques { get; set; }
        public DbSet<Utilisateur> Utilisateurs { get; set; }
        public DbSet<Permission> Permissions { get; set; }
        public DbSet<Role> Roles { get; set; }
        public DbSet<UtilisateurPermissions> UtilisateurPermissions { get; set; }
        public DbSet<RolePermissions> RolePermissions { get; set; }
        public DbSet<UtilisateurRoles> UtilisateurRoles { get; set; }
        public DbSet<UtilisateurLog> UtilisateurLogs { get; set; }
        public DbSet<ChamberAppelDisciplineBudgetaire> ChamberAppelDisciplineBudgetaires { get; set; }
    }
}