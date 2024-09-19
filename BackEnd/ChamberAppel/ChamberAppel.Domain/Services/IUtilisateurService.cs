using ChamberAppel.Domain.DTOs;
using ChamberAppel.Domain.Models;

namespace ChamberAppel.Domain.Services
{
    public interface IUtilisateurService : IBaseService<Utilisateur>
    {
        Task AddPermissionsAsync(DtoCheckedListRequest model);
        Task AddRolesAsync(DtoCheckedListRequest model);
        Task<List<Permission>> GetAllPermissionsAsync(Guid userId);
        Task<List<Permission>> GetUtilisateurPermissionsAsync(Guid userId);
        Task<List<Role>> GetUtilisateurRolesAsync(Guid userId);
        Task<Utilisateur> LoginAsync(string login, string password);
        Task<bool> ResetPasswordAsync(Guid userId, string oldPassword, string newPassword);
        Task<DtoUtilisateur> CreateUtilisateurAsync(DtoUtilisateur model);
        Task<DtoUtilisateur> UpdateUtilisateurAsync(DtoUtilisateur model);
        Task<DtoUtilisateur> GetDtoUtilisateurByIdAsync(Guid id);
        Task<DatatableResponse<DtoUtilisateur>> GetAllAsync(DtoFiltreUtilisateur? filtre, DtoPagination? pagination);
        Task<List<DtoExportUtilisateur>> ExporterAsync(DtoFiltreUtilisateur? filtre, DtoPagination? pagination);
    }
}
