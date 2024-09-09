using ChamberAppel.Domain.DTOs;
using ChamberAppel.Domain.Models;

namespace ChamberAppel.Domain.Services
{
    public interface IUtilisateurService : IBaseService<Utilisateur>
    {
        Task<DtoUtilisateur> GetDetailMonProfil(Guid userId);
        Task AddPermissions(DtoCheckedListRequest model);
        Task AddRoles(DtoCheckedListRequest model);
        Task DeletePermissions(Guid userId);
        Task DeleteRoles(Guid userId);
        Task<List<Permission>> GetAllPermissions(Guid userId);
        Task<List<Permission>> GetUtilisateurPermissions(Guid userId);
        Task<List<Role>> GetUtilisateurRoles(Guid userId);
        Task<Utilisateur> Login(string login, string password);
        Task<bool> ResetPassword(Guid userId, string oldPassword, string newPassword);
        Task<bool> ResetPasswordConfirmation(string token, string newPassword);
        Task<DtoUtilisateur> CreateUtilisateur(DtoUtilisateur model);
        Task<DtoUtilisateur> UpdateUtilisateur(DtoUtilisateur model);
        Task<DtoUtilisateur> GetUtilisateurDtoById(Guid id);
        Task<DatatableResponse<DtoUtilisateur>> GetAllUtilisateurDto(DtoFiltreUtilisateur? filtre, DtoPagination? pagination);
        Task<List<DtoExportUtilisateur>> Exporter(DtoFiltreUtilisateur? filtre, DtoPagination? pagination);
        Task<bool> VerifierConflit(DtoUtilisateur model);
    }
}
