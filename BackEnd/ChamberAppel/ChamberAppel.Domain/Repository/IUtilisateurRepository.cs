using ChamberAppel.Domain.DTOs;
using ChamberAppel.Domain.Models;

namespace ChamberAppel.Domain.Repository
{
    public interface IUtilisateurRepository : IBaseRepository<Utilisateur>
    {
        Task<DtoUtilisateur> GetDetailMonProfil(Guid userId);
        Task AddRoles(Guid userId, List<Guid> listRoles);
        Task AddPermissions(Guid userId, List<Guid> listPermissions);
        Task DeletePermissions(Guid userId);
        Task DeleteRoles(Guid userId);
        Task<List<Permission>> GetUtilisateurPermissions(Guid userId);
        Task<List<Permission>> GetAllPermissions(Guid userId);
        Task<List<Role>> GetRoles(Guid userId);
        Task<Utilisateur> Login(string login);
        Task<bool> ResetPassword(Guid userId, string hashedOldPassword, string hashedNewPassword);
        Task<bool> ResetPasswordConfirmation(Guid userId, string newPassword);
        Task<DtoUtilisateur> GetUtilisateurDtoById(Guid id);
        Task<DatatableResponse<DtoUtilisateur>> GetAllUtilisateurDto(DtoFiltreUtilisateur? filtre, DtoPagination? pagination);
        Task<Utilisateur> GetByResetToken(string token);
        Task<bool> VerifierConflit(Utilisateur utilisateur);
    }
}
