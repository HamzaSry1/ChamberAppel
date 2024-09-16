using ChamberAppel.Domain.DTOs;
using ChamberAppel.Domain.Models;
using ChamberAppel.Domain.Repository;
using ChamberAppel.Infrastructure.Data;
using Microsoft.EntityFrameworkCore;
using System.Diagnostics;

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
        //not declared in the interface
        public async Task<List<Guid>> GetRollesAsync(Guid userId)
        {
            return await _dbContext.UtilisateurRoles
                .Where(ur => ur.UtilisateurId == userId && ur.RoleId != null)
                .Select(ur => ur.RoleId)
                .ToListAsync();
        }
        public async Task DeletePermissionsAsync(Guid userId)
        {
            var list = await _dbContext.UtilisateurPermissions.Where(u => u.UtilisateurId == userId).ToListAsync();
            _dbContext.UtilisateurPermissions.RemoveRange(list);
            await _dbContext.SaveChangesAsync();
        }
        public async Task DeleteRolesAsync(Guid userId)
        {
            var list = await _dbContext.UtilisateurRoles.Where(u => u.UtilisateurId == userId).ToListAsync();
            _dbContext.UtilisateurRoles.RemoveRange(list);
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
                // TODO  : hach the password ,add salt
                var user = await _dbContext.Utilisateurs
                     .Include(item => item.PersonnePhysique)
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
        public async Task<bool> ResetPasswordConfirmationAsync(Guid userId, string hashedNewPassword)
        {
            // TODO : remove

            return false;
        }
        public async Task<DtoUtilisateur?> GetDtoUtilisateurByIdAsync(Guid id)
        {
            try
            {
                return await _dbContext.Utilisateurs
               .Include(x => x.PersonnePhysique)
               .Where(u => u.Id == id)
                   .Select(u => new DtoUtilisateur
                   {
                       Id = u.Id,
                       PersonnePhysiqueId = u.PersonnePhysique.Id,
                       Nom = u.PersonnePhysique.Nom,
                       NomArabe = u.PersonnePhysique.NomArabe,
                       Prenom = u.PersonnePhysique.Prenom,
                       PrenomArabe = u.PersonnePhysique.PrenomArabe,
                       //DateNaissance = u.PersonnePhysique.DateNaissance.HasValue ? u.PersonnePhysique.DateNaissance.Value.ToString("yyyy-MM-dd") : "",
                       DateNaissance = DateTime.Now.ToString("yyyy-MM-dd"),
                       Cin = u.PersonnePhysique.Cin,
                       Sexe = u.PersonnePhysique.Sexe,
                       Adresse = u.PersonnePhysique.Adresse,
                       Gsm = u.PersonnePhysique.Gsm,
                       Email = u.PersonnePhysique.Email,
                       Login = u.Login,
                       Password = u.Password,
                       IsActive = u.IsActive,
                       UpdatedBy = u.PersonnePhysique.UpdatedBy,
                       UpdateTime = DateTime.Now.ToString("yyyy-MM-dd"),
                       //UpdateTime = u.PersonnePhysique.UpdateTime.HasValue ? u.PersonnePhysique.UpdateTime.Value.ToString("yyyy-MM-dd") : "",
                   }).FirstOrDefaultAsync();

            }
            catch (Exception ex)
            {
                Debug.Write(ex.Message);
                throw;
            }
        }
        public async Task<DatatableResponse<DtoUtilisateur>> GetAllDtoUtilisateurAsync(DtoFiltreUtilisateur? filtre, DtoPagination? pagination)
        {
            var dbSet = _dbContext.Utilisateurs
                .Include(table => table.PersonnePhysique);

            IQueryable<Utilisateur> query = dbSet;
            var response = new DatatableResponse<DtoUtilisateur>
            {
                RecordTotal = await query.CountAsync()
            };

            // Check if Filtre Properties is Null

            if (filtre is not null)
            {
                if (!string.IsNullOrEmpty(filtre.NomComplete))
                {
                    query = query.Where(item => (item.PersonnePhysique.Nom + " " + item.PersonnePhysique.Prenom).Contains(filtre.NomComplete));
                }
                if (!string.IsNullOrEmpty(filtre.Cin))
                {
                    query = query.Where(item => item.PersonnePhysique.Cin == filtre.Cin);
                }
                if (!string.IsNullOrEmpty(filtre.Email))
                {
                    query = query.Where(item => item.PersonnePhysique.Email == filtre.Email);
                }

                if (!string.IsNullOrEmpty(filtre.MotsCle))
                {
                    query = query.Where(item => item.PersonnePhysique.Nom.Contains(filtre.MotsCle)
                    || item.PersonnePhysique.Prenom.Contains(filtre.MotsCle)
                    || item.PersonnePhysique.Cin.Contains(filtre.MotsCle)
                    || item.PersonnePhysique.Email.Contains(filtre.MotsCle)
                    || item.PersonnePhysique.Gsm.Contains(filtre.MotsCle)
                    || item.PersonnePhysique.Adresse.Contains(filtre.MotsCle));
                }
            }

            response.RecordFiltred = query.Count();

            if (pagination != null)
            {
                //query = ApplyPagination(query, pagination);
            }

            try
            {
                response.Data = query.Select(item => new DtoUtilisateur
                {
                    Id = item.Id,
                    PersonnePhysiqueId = item.PersonnePhysique.Id,
                    Nom = item.PersonnePhysique.Nom,
                    Prenom = item.PersonnePhysique.Prenom,
                    //DateNaissance = item.PersonnePhysique.DateNaissance.HasValue ? item.PersonnePhysique.DateNaissance.Value.ToString("yyyy/MM/dd") : "",
                    DateNaissance = DateTime.Now.ToString("yyyy-MM-dd"),
                    Cin = item.PersonnePhysique.Cin,
                    Sexe = item.PersonnePhysique.Sexe,
                    Adresse = item.PersonnePhysique.Adresse,
                    Gsm = item.PersonnePhysique.Gsm,
                    Email = item.PersonnePhysique.Email,
                    Login = item.Login,
                    Password = item.Password,
                    IsActive = item.IsActive,
                    UpdatedBy = item.PersonnePhysique.UpdatedBy,
                    UpdateTime = DateTime.Now.ToString("yyyy-MM-dd"),
                }).ToList();
            }
            catch (Exception ex)
            {
                Debug.Write(ex.Message);
            }

            return response;
        }
    }
}
