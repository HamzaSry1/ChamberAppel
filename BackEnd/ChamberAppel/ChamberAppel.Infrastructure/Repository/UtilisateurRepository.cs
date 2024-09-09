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

        public async Task AddPermissions(Guid userId, List<Guid> listPermissions)
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
        public async Task AddRoles(Guid userId, List<Guid> listRoles)
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
        public async Task DeletePermissions(Guid userId)
        {
            var list = await _dbContext.UtilisateurPermissions.Where(u => u.UtilisateurId == userId).ToListAsync();
            _dbContext.UtilisateurPermissions.RemoveRange(list);
            await _dbContext.SaveChangesAsync();
        }
        public async Task DeleteRoles(Guid userId)
        {
            var list = await _dbContext.UtilisateurRoles.Where(u => u.UtilisateurId == userId).ToListAsync();
            _dbContext.UtilisateurRoles.RemoveRange(list);
            await _dbContext.SaveChangesAsync();
        }
        public async Task<List<Permission>> GetAllPermissions(Guid userId)
        {
            //var dbSet = this._dbContext.Utilisateurs
            //    .Include(table => table.PersonnePhysique);

            //IQueryable<Utilisateur> query = dbSet;
            //var response = new DatatableResponse<DtoUtilisateur>
            //{
            //    RecordTotal = await query.CountAsync()
            //};

            //// Check if Filtre Properties is Null
            //bool filtreIsNotNull = Pagination<DtoUtilisateur>.CheckIfNull(filtre);

            //if (filtreIsNotNull)
            //{
            //    if (!string.IsNullOrEmpty(filtre.NomComplete))
            //    {
            //        query = query.Where(item => (item.PersonnePhysique.Nom + " " + item.PersonnePhysique.Prenom).Contains(filtre.NomComplete));
            //    }
            //    if (!string.IsNullOrEmpty(filtre.Cin))
            //    {
            //        query = query.Where(item => item.PersonnePhysique.Cin == filtre.Cin);
            //    }
            //    if (!string.IsNullOrEmpty(filtre.Email))
            //    {
            //        query = query.Where(item => item.PersonnePhysique.Email == filtre.Email);
            //    }
            //    if (filtre.TypeUtilisateurId != null)
            //    {
            //        query = query.Where(item => item.TypeUtilisateurId == filtre.TypeUtilisateurId);
            //    }

            //    if (!string.IsNullOrEmpty(filtre.MotsCle))
            //    {
            //        query = query.Where(item => item.PersonnePhysique.Nom.Contains(filtre.MotsCle)
            //        || item.PersonnePhysique.Prenom.Contains(filtre.MotsCle)
            //        || item.PersonnePhysique.Cin.Contains(filtre.MotsCle)
            //        || item.PersonnePhysique.Email.Contains(filtre.MotsCle)
            //        || item.PersonnePhysique.Gsm.Contains(filtre.MotsCle)
            //        || item.PersonnePhysique.Adresse.Contains(filtre.MotsCle)
            //        || item.TypeUtilisateur.Label.Contains(filtre.MotsCle));
            //    }
            //}

            //response.RecordFiltred = query.Count();

            //if (pagination != null)
            //{
            //    query = query.ApplyPagination(pagination);
            //}

            //response.Data = query.Select(item => new DtoUtilisateur
            //{
            //    Id = item.Id,
            //    PersonnePhysiqueId = item.PersonnePhysique.Id,
            //    Nom = item.PersonnePhysique.Nom,
            //    Prenom = item.PersonnePhysique.Prenom,
            //    DateNaissance = item.PersonnePhysique.DateNaissance.HasValue ? item.PersonnePhysique.DateNaissance.Value.ToString("yyyy-MM-dd") : "",
            //    Cin = item.PersonnePhysique.Cin,
            //    Sexe = !string.IsNullOrEmpty(item.PersonnePhysique.Sexe) ? (item.PersonnePhysique.Sexe == "H" ? "Homme" : "Femme") : "",
            //    Adresse = item.PersonnePhysique.Adresse,
            //    Gsm = item.PersonnePhysique.Gsm,
            //    Email = item.PersonnePhysique.Email,
            //    Login = item.Login,
            //    Password = item.Password,
            //    IsActive = item.IsActive,
            //    UpdatedBy = item.PersonnePhysique.UpdatedBy,
            //    UpdateTime = item.PersonnePhysique.UpdateTime.HasValue ? item.PersonnePhysique.UpdateTime.Value.ToString("yyyy-MM-dd") : "",
            //}).ToList();

            //return response;

            return null;
        }
        public async Task<Utilisateur> GetByResetToken(string token)
        {
            //var user = await _dbContext.Utilisateurs.FirstOrDefaultAsync(u => u.IsActive == false
            //&& u.ResetToken == token
            //&& u.ResetTokenExpiration > DateTime.Now);
            //return user.RemoveSensitiveData();

            return null;
        }
        public async Task<bool> VerifierConflit(Utilisateur utilisateur)
        {
            return await _dbContext.Utilisateurs.AnyAsync(p => p.Id != utilisateur.Id && p.Login == utilisateur.Login);
        }
        public async Task<DtoUtilisateur?> GetDetailMonProfil(Guid userId)
        {
            return await _dbContext
           .Utilisateurs
           .Include(x => x.PersonnePhysique)
           .Where(u => u.Id == userId)
           .Select(u => new DtoUtilisateur
           {
               Nom = u.PersonnePhysique.Nom,
               NomArabe = u.PersonnePhysique.NomArabe,
               Prenom = u.PersonnePhysique.Prenom,
               PrenomArabe = u.PersonnePhysique.PrenomArabe,
               DateNaissance = u.PersonnePhysique.DateNaissance.HasValue ? u.PersonnePhysique.DateNaissance.Value.ToString("yyyy-MM-dd") : "",
               Cin = u.PersonnePhysique.Cin,
               Sexe = !string.IsNullOrEmpty(u.PersonnePhysique.Sexe.ToString()) ? (u.PersonnePhysique.Sexe.ToString() == "Homme" ? "Homme" : "Femme") : "",
               Adresse = u.PersonnePhysique.Adresse,
               Gsm = u.PersonnePhysique.Gsm,
               Email = u.PersonnePhysique.Email,
               Login = u.Login,
           }).FirstOrDefaultAsync();
        }
        public async Task<List<Permission>> GetUtilisateurPermissions(Guid userId)
        {
            var List = (from up in _dbContext.UtilisateurPermissions
                        where up.UtilisateurId == userId
                        select up.Permission
                       ).Distinct().OrderBy(p => p.Label);

            return await List.ToListAsync();
        }
        public async Task<List<Role>> GetRoles(Guid userId)
        {
            var List = (from ur in _dbContext.UtilisateurRoles
                        where ur.UtilisateurId == userId
                        select ur.Role
                      ).Distinct().OrderBy(p => p.Label);
            return await List.ToListAsync();
        }
        public async Task<Utilisateur> Login(string login)
        {
            if (login != null || login != "")
            {
                // TODO  : hach the password ,add salt
                var user = await _dbContext.Utilisateurs
                 .Include(item => item.PersonnePhysique)
                 .FirstOrDefaultAsync(u => u.Login == login);
                return user;
            }
            return null;
        }
        public async Task<bool> ResetPassword(Guid userId, string hashedOldPassword, string hashedNewPassword)
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
        public async Task<bool> ResetPasswordConfirmation(Guid userId, string hashedNewPassword)
        {
            var user = await _dbContext.Utilisateurs.Where(x => x.Id == userId).FirstOrDefaultAsync();
            if (user != null)
            {
                user.Password = hashedNewPassword;
                //user.ResetTokenExpiration = null;
                //user.ResetToken = null;
                _dbContext.SaveChanges();
                return true;
            }
            return false;
        }
        public async Task<DtoUtilisateur?> GetUtilisateurDtoById(Guid id)
        {
            return await _dbContext
            .Utilisateurs
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
                DateNaissance = u.PersonnePhysique.DateNaissance.HasValue ? u.PersonnePhysique.DateNaissance.Value.ToString("yyyy-MM-dd") : "",
                Cin = u.PersonnePhysique.Cin,
                Sexe = !string.IsNullOrEmpty(u.PersonnePhysique.Sexe.ToString()) ? (u.PersonnePhysique.Sexe.ToString() == "Homme" ? "Homme" : "Femme") : "",
                Adresse = u.PersonnePhysique.Adresse,
                Gsm = u.PersonnePhysique.Gsm,
                Email = u.PersonnePhysique.Email,
                Login = u.Login,
                Password = u.Password,
                IsActive = u.IsActive,
                UpdatedBy = u.PersonnePhysique.UpdatedBy,
                UpdateTime = u.PersonnePhysique.UpdateTime.HasValue ? u.PersonnePhysique.UpdateTime.Value.ToString("yyyy-MM-dd") : "",
            }).FirstOrDefaultAsync();
        }
        public async Task<DatatableResponse<DtoUtilisateur>> GetAllUtilisateurDto(DtoFiltreUtilisateur? filtre, DtoPagination? pagination)
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

                if (!string.IsNullOrEmpty(filtre.FiltreMotsCle.MotsCle))
                {
                    query = query.Where(item => item.PersonnePhysique.Nom.Contains(filtre.FiltreMotsCle.MotsCle)
                    || item.PersonnePhysique.Prenom.Contains(filtre.FiltreMotsCle.MotsCle)
                    || item.PersonnePhysique.Cin.Contains(filtre.FiltreMotsCle.MotsCle)
                    || item.PersonnePhysique.Email.Contains(filtre.FiltreMotsCle.MotsCle)
                    || item.PersonnePhysique.Gsm.Contains(filtre.FiltreMotsCle.MotsCle)
                    || item.PersonnePhysique.Adresse.Contains(filtre.FiltreMotsCle.MotsCle));
                }
            }

            response.RecordFiltred = query.Count();

            if (pagination != null)
            {
                //query = ApplyPagination(query, pagination);
            }

            response.Data = query.Select(item => new DtoUtilisateur
            {
                Id = item.Id,
                PersonnePhysiqueId = item.PersonnePhysique.Id,
                Nom = item.PersonnePhysique.Nom,
                Prenom = item.PersonnePhysique.Prenom,
                DateNaissance = item.PersonnePhysique.DateNaissance.HasValue ? item.PersonnePhysique.DateNaissance.Value.ToString("yyyy-MM-dd") : "",
                Cin = item.PersonnePhysique.Cin,
                Sexe = !string.IsNullOrEmpty(item.PersonnePhysique.Sexe.ToString()) ? (item.PersonnePhysique.Sexe.ToString() == "Homme" ? "Homme" : "Femme") : "",
                Adresse = item.PersonnePhysique.Adresse,
                Gsm = item.PersonnePhysique.Gsm,
                Email = item.PersonnePhysique.Email,
                Login = item.Login,
                Password = item.Password,
                IsActive = item.IsActive,
                UpdatedBy = item.PersonnePhysique.UpdatedBy,
                UpdateTime = item.PersonnePhysique.UpdateTime.HasValue ? item.PersonnePhysique.UpdateTime.Value.ToString("yyyy-MM-dd") : "",
            }).ToList();

            return response;
        }
    }
}
