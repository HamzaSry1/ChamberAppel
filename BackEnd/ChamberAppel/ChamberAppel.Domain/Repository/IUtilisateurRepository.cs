using ChamberAppel.Domain.DTOs;
using ChamberAppel.Domain.Models;

namespace ChamberAppel.Domain.Repository
{
    public interface IUtilisateurRepository : IBaseRepository<Utilisateur>
    {
        Task AddRolesAsync(Guid userId, List<Guid> listRoles);
        Task AddPermissionsAsync(Guid userId, List<Guid> listPermissions);
        Task DeletePermissionsAsync(Guid userId);
        Task DeleteRolesAsync(Guid userId);
        Task<List<Permission>> GetUtilisateurPermissionsAsync(Guid userId);
        Task<List<Permission>> GetAllPermissionsAsync(Guid userId);
        Task<List<Role>> GetRolesAsync(Guid userId);
        Task<Utilisateur> LoginAsync(string login);
        Task<bool> ResetPasswordAsync(Guid userId, string hashedOldPassword, string hashedNewPassword);
        Task<bool> ResetPasswordConfirmationAsync(Guid userId, string newPassword);
        Task<DtoUtilisateur> GetDtoUtilisateurByIdAsync(Guid id);
        Task<DatatableResponse<DtoUtilisateur>> GetAllDtoUtilisateurAsync(DtoFiltreUtilisateur? filtre, DtoPagination? pagination);
        Task<Utilisateur> GetByResetTokenAsync(string token);
    }
}
