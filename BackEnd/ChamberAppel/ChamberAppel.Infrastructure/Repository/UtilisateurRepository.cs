using ChamberAppel.Domain.DTOs;
using ChamberAppel.Domain.Models;
using ChamberAppel.Domain.Repository;
using ChamberAppel.Infrastructure.Data;
using Microsoft.EntityFrameworkCore;

namespace ChamberAppel.Infrastructure.Repository
{
    public class UtilisateurRepository : BaseRepository<Utilisateur>, IUtilisateurRepository
    {
        private readonly ApplicationDbContext _dbContext;
        public UtilisateurRepository(ApplicationDbContext dbContext) : base(dbContext)
        {
            _dbContext = dbContext;
        }

        public async Task AddPermissionsAsync(Guid userId, List<Guid> listPermissions)
        {
            var up = from l in listPermissions
                     join p in _dbContext.Permissions on l equals p.Id
                     select new UtilisateurPermissions
                     {
                         Id = Guid.NewGuid(),
                         PermissionId = p.Id,
                         UtilisateurId = userId,
                     };

            var old = _dbContext.UtilisateurPermissions.Where(u => u.UtilisateurId == userId).ToList();
            if (old.Any())
            {
                _dbContext.UtilisateurPermissions.RemoveRange(old);
            }

            await _dbContext.UtilisateurPermissions.AddRangeAsync(up);
            await _dbContext.SaveChangesAsync();
        }
        public async Task AddRolesAsync(Guid userId, List<Guid> listRoles)
        {
            var up = from l in listRoles
                     join r in _dbContext.Roles on l equals r.Id
                     select new UtilisateurRoles
                     {
                         Id = Guid.NewGuid(),
                         RoleId = r.Id,
                         UtilisateurId = userId
                     };
            var old = this._dbContext.UtilisateurRoles.Where(u => u.UtilisateurId == userId).ToList();
            if (old.Any())
            {
                this._dbContext.UtilisateurRoles.RemoveRange(old);
            }
            await _dbContext.UtilisateurRoles.AddRangeAsync(up);
            await _dbContext.SaveChangesAsync();
        }
        public async Task<List<Permission>> GetAllPermissionsAsync(Guid userId)
        {
            var List = (from up in _dbContext.UtilisateurPermissions
                        where up.UtilisateurId == userId
                        select up.Permission
                        ).
                        Union(
                        from ur in _dbContext.UtilisateurRoles
                        join rp in _dbContext.RolePermissions on ur.RoleId equals rp.RoleId
                        where ur.UtilisateurId == userId
                        select rp.Permission
                        ).Distinct()
                        .OrderBy(p => p.Label);

            return await List.ToListAsync();
        }
        public async Task<Utilisateur> GetByResetTokenAsync(string token)
        {
            //var user = await _dbContext.Utilisateurs.FirstOrDefaultAsync(u => u.IsActive == false
            //&& u.ResetToken == token
            //&& u.ResetTokenExpiration > DateTime.Now);
            //return user.RemoveSensitiveData();

            return null;
        }
        public async Task<List<Permission>> GetUtilisateurPermissionsAsync(Guid userId)
        {
            var List = (from up in _dbContext.UtilisateurPermissions
                        where up.UtilisateurId == userId
                        select up.Permission
                       ).Distinct().OrderBy(p => p.Label);

            return await List.ToListAsync();
        }
        public async Task<List<Role>> GetRolesAsync(Guid userId)
        {
            var List = (from ur in _dbContext.UtilisateurRoles
                        where ur.UtilisateurId == userId
                        select ur.Role
                      ).Distinct().OrderBy(p => p.Label);
            return await List.ToListAsync();
        }
        public async Task<Utilisateur?> LoginAsync(string login)
        {
            if (!string.IsNullOrEmpty(login))
            {
                var user = await _dbContext.Utilisateurs
                     .FirstOrDefaultAsync(u => u.Login == login);

                return user;
            }
            return null;
        }
        public async Task<bool> ResetPasswordAsync(Guid userId, string hashedOldPassword, string hashedNewPassword)
        {
            var user = await _dbContext.Utilisateurs.Where(x => x.Id == userId).FirstOrDefaultAsync();
            if (!string.IsNullOrEmpty(hashedNewPassword) && user != null && user.Password == hashedOldPassword)
            {
                user.Password = hashedNewPassword;
                _dbContext.SaveChanges();
                return true;
            }
            return false;
        }
        public async Task<DtoUtilisateur?> GetDtoUtilisateurByIdAsync(Guid id)
        {
            return await _dbContext.Utilisateurs
             .Where(u => u.Id == id)
                 .Select(u => new DtoUtilisateur
                 {
                     Id = u.Id,
                     Nom = u.Nom,
                     NomArabe = u.NomArabe,
                     Prenom = u.Prenom,
                     PrenomArabe = u.PrenomArabe,
                     Email = u.Email,
                     Password = u.Password,
                     Login = u.Login,
                     IsActive = u.IsActive,
                     UpdatedBy = u.UpdatedBy,
                     UpdateTime = u.UpdateTime,
                 }).FirstOrDefaultAsync();
        }
        public async Task<DatatableResponse<DtoUtilisateur>> GetAllDtoUtilisateurAsync(DtoFiltreUtilisateur? filtre, DtoPagination? pagination)
        {
            var dbSet = _dbContext.Utilisateurs;

            IQueryable<Utilisateur> query = dbSet;
            var response = new DatatableResponse<DtoUtilisateur>
            {
                RecordTotal = await query.CountAsync()
            };

            if (filtre is not null)
            {
                if (!string.IsNullOrEmpty(filtre.NomComplete))
                {
                    query = query.Where(item => (item.Nom + " " + item.Prenom).Contains(filtre.NomComplete));
                }
                if (!string.IsNullOrEmpty(filtre.Email))
                {
                    query = query.Where(item => item.Email == filtre.Email);
                }
                if (!string.IsNullOrEmpty(filtre.MotsCle))
                {
                    query = query.Where(item => item.Nom.Contains(filtre.MotsCle)
                    || item.Prenom.Contains(filtre.MotsCle)
                    || item.Email.Contains(filtre.MotsCle));
                }
            }

            response.RecordFiltred = query.Count();

            if (pagination != null)
            {
                // Todo : generic pagination
            }

            response.Data = query.Select(item => new DtoUtilisateur
            {
                Id = item.Id,
                Nom = item.Nom ?? "",
                Prenom = item.Prenom ?? "",
                Email = item.Email ?? "",
                Login = item.Login ?? "",
                IsActive = item.IsActive,
                UpdatedBy = item.UpdatedBy ?? "",
                UpdateTime = item.UpdateTime,
            }).ToList();

            return response;
        }
    }
}
