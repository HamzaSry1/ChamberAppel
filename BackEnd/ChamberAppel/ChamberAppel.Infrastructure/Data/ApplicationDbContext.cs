using ChamberAppel.Domain.Models;
using Microsoft.EntityFrameworkCore;

namespace ChamberAppel.Infrastructure.Data
{
    public class ApplicationDbContext(DbContextOptions<ApplicationDbContext> options)
        : DbContext(options)
    {

        public DbSet<ChamberAppele> ChamberAppeles { get; set; }
        public DbSet<ChamberAppeleTemp> ChamberAppeleTemp { get; set; }
        public DbSet<Utilisateur> Utilisateurs { get; set; }
        public DbSet<Permission> Permissions { get; set; }
        public DbSet<Role> Roles { get; set; }
        public DbSet<UtilisateurPermissions> UtilisateurPermissions { get; set; }
        public DbSet<RolePermissions> RolePermissions { get; set; }
        public DbSet<UtilisateurRoles> UtilisateurRoles { get; set; }
        public DbSet<UtilisateurLogging> UtilisateurLoggings { get; set; }
        public DbSet<DisciplineBudgetaire> DisciplineBudgetaires { get; set; }
        public DbSet<DisciplineBudgetaireTemp> DisciplineBudgetaireTemp { get; set; }
        public DbSet<TypeGrade> TypeGrades { get; set; }
        public DbSet<TypeUtilisateur> TypeUtilisateurs { get; set; }
        public DbSet<CRC> CRCs { get; set; }
    }
}