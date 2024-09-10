using ChamberAppel.Application.Mappers;
using ChamberAppel.Application.Services;
using ChamberAppel.Domain.DTOs;
using ChamberAppel.Domain.Models;
using ChamberAppel.Domain.Repository;
using ChamberAppel.Domain.Services;

namespace ChamberAppel.Infrastructure.Services
{
    public class UtilisateurService : BaseService<Utilisateur>, IUtilisateurService
    {
        public IAuthentification Authentification { get; }
        private readonly IUtilisateurRepository _repository;
        private readonly IPersonnePhysiqueRepository _PersonePhysiqueRepo;

        public UtilisateurService(IUtilisateurRepository repository, IPersonnePhysiqueRepository personePhysiqueRepo, IAuthentification authentification) : base(repository)
        {
            _repository = repository;
            _PersonePhysiqueRepo = personePhysiqueRepo;
            Authentification = authentification;
        }

        public async Task AddPermissionsAsync(DtoCheckedListRequest model)
           => await _repository.AddPermissionsAsync(model.Id, model.ListCheckedId);
        public async Task AddRolesAsync(DtoCheckedListRequest model)
          => await _repository.AddRolesAsync(model.Id, model.ListCheckedId);

        public async Task DeletePermissionsAsync(Guid userId) => await _repository.DeletePermissionsAsync(userId);
        public async Task DeleteRolesAsync(Guid userId) => await _repository.DeleteRolesAsync(userId);

        public async Task<List<Permission>> GetAllPermissionsAsync(Guid userId)
            => await _repository.GetAllPermissionsAsync(userId);
        public async Task<List<Permission>> GetUtilisateurPermissionsAsync(Guid userId)
            => await _repository.GetUtilisateurPermissionsAsync(userId);
        public async Task<List<Role>> GetUtilisateurRolesAsync(Guid userId)
           => await _repository.GetRolesAsync(userId);

        public async Task<DtoUtilisateur> CreateUtilisateurAsync(DtoUtilisateur model)
        {
            if (model.PersonnePhysiqueId == Guid.Empty)
            {
                model.PersonnePhysiqueId = Guid.NewGuid();
                await _PersonePhysiqueRepo.CreateAsync(PersonnePhysiqueMapper.ToPersonnePhysique(model));
            }
            else
                await _PersonePhysiqueRepo.UpdateAsync(PersonnePhysiqueMapper.ToPersonnePhysique(model));

            await _repository.CreateAsync(UtilisateurMapper.ToUtilisateur(model));

            return await GetDtoUtilisateurByIdAsync(model.Id);
        }
        public async Task<DtoUtilisateur> UpdateUtilisateurAsync(DtoUtilisateur model)
        {
            await _PersonePhysiqueRepo.UpdateAsync(PersonnePhysiqueMapper.ToPersonnePhysique(model));

            await _repository.UpdateAsync(UtilisateurMapper.ToUtilisateur(model));

            return await GetDtoUtilisateurByIdAsync(model.Id);
        }

        public async Task<DtoUtilisateur> GetDtoUtilisateurByIdAsync(Guid id)
           =>  await _repository.GetDtoUtilisateurByIdAsync(id);
        public async Task<DatatableResponse<DtoUtilisateur>> GetAllAsync(DtoFiltreUtilisateur? filtre, DtoPagination? pagination)
            => await _repository.GetAllDtoUtilisateurAsync(filtre, pagination);

        public async Task<List<DtoExportUtilisateur>> ExporterAsync(DtoFiltreUtilisateur? filtre, DtoPagination? pagination)
        {
            var r = await GetAllAsync(filtre, null);
            return r.Data.Select(x => new DtoExportUtilisateur
            {
                Cin = x.Cin,
                Email = x.Email,
                Login = x.Login,
                Nom = x.Nom,
                Prenom = x.Prenom,
            }).OrderBy(x => x.Nom)
              .ToList();
        }

        public async Task<Utilisateur> LoginAsync(string login, string password)
        {
            var user = await _repository.LoginAsync(login);
            if (user != null)
            {
                if (PasswordService.VerifierPassword(password, user.Password))
                {
                    return user;
                }
                return null;
            }
            return null;
        }
        
        public Task<bool> ResetPasswordAsync(Guid userId, string oldPassword, string newPassword)
        {
            var hashedOldPassword = PasswordService.Encrypt(oldPassword);
            var hashedNewPassword = PasswordService.Encrypt(newPassword);
            return _repository.ResetPasswordAsync(userId, hashedOldPassword, hashedNewPassword);
        }
        public async Task<bool> ResetPasswordConfirmationAsync(string token, string newPassword)
        {
            var data = await Authentification.DecodeTokenResetPassword(token);

            if (data != null)
            {
                var hashedNewPassword = PasswordService.Encrypt(newPassword);
                return await _repository.ResetPasswordConfirmationAsync(data.UserId, hashedNewPassword);
            }
            return false;
        }
    }
}
