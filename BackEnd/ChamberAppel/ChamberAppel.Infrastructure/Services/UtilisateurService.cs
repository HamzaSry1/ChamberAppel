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
        //public IAuthentification Authentification { get; }
        private readonly IUtilisateurRepository _repository;
        private readonly IPersonnePhysiqueRepository _PersonePhysiqueRepo;

        public UtilisateurService(IUtilisateurRepository repository, IPersonnePhysiqueRepository personePhysiqueRepo) : base(repository)
        {
            _repository = repository;
            _PersonePhysiqueRepo = personePhysiqueRepo;
        }

        public async Task AddPermissions(DtoCheckedListRequest model)
        {
            await _repository.AddPermissions(model.Id, model.ListCheckedId);
        }

        public async Task DeletePermissions(Guid userId)
        {
            await _repository.DeletePermissions(userId);
        }

        public async Task DeleteRoles(Guid userId)
        {
            await _repository.DeleteRoles(userId);
        }

        public async Task<Utilisateur> Login(string login, string password)
        {
            var user = await _repository.Login(login);
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

        public async Task<List<Permission>> GetUtilisateurPermissions(Guid userId)
        {
            return await _repository.GetUtilisateurPermissions(userId);
        }

        public async Task<List<Role>> GetUtilisateurRoles(Guid userId)
        {
            return await _repository.GetRoles(userId);
        }

        public async Task AddRoles(DtoCheckedListRequest model)
        {
            await _repository.AddRoles(model.Id, model.ListCheckedId);
        }

        public async Task<List<Permission>> GetAllPermissions(Guid userId)
        {
            return await _repository.GetAllPermissions(userId);
        }

        public Task<bool> ResetPassword(Guid userId, string oldPassword, string newPassword)
        {
            var hashedOldPassword = PasswordService.Encrypt(oldPassword);
            var hashedNewPassword = PasswordService.Encrypt(newPassword);
            return _repository.ResetPassword(userId, hashedOldPassword, hashedNewPassword);
        }

        public async Task<DtoUtilisateur> GetDetailMonProfil(Guid userId)
        {
            return await _repository.GetDetailMonProfil(userId);
        }

        public async Task<bool> ResetPasswordConfirmation(string token, string newPassword)
        {
            //var data = await Authentification.DecodeTokenResetPassword(token);

            //if (data != null)
            //{
            //    var hashedNewPassword = PasswordService.Encrypt(newPassword);
            //    return await _repository.ResetPasswordConfirmation(data.UserId, hashedNewPassword);
            //}
            //return false;

            return false;
        }
        public async Task<bool> VerifierConflit(DtoUtilisateur model)
        {
            // verifier personne en double
            //var conflitPersonne = await _PersonePhysiqueRepo.VerifierConflit(PersonnePhysiqueMapper.ToPersonnePhysique(model));
            //var conflitUser = await _repository.VerifierConflit(UtilisateurMapper.ToUtilisateur(model));
            //return conflitUser || conflitPersonne;

            return false;
        }

        public async Task<DtoUtilisateur> CreateUtilisateur(DtoUtilisateur model)
        {
            if (model.PersonnePhysiqueId == Guid.Empty)
            {
                model.PersonnePhysiqueId = Guid.NewGuid();
                await _PersonePhysiqueRepo.CreateAsync(PersonnePhysiqueMapper.ToPersonnePhysique(model));
            }
            else
                await _PersonePhysiqueRepo.UpdateAsync(PersonnePhysiqueMapper.ToPersonnePhysique(model));

            await _repository.CreateAsync(UtilisateurMapper.ToUtilisateur(model));

            return await GetUtilisateurDtoById(model.Id);
        }

        public async Task<DtoUtilisateur> UpdateUtilisateur(DtoUtilisateur model)
        {
            await _PersonePhysiqueRepo.UpdateAsync(PersonnePhysiqueMapper.ToPersonnePhysique(model));

            await _repository.UpdateAsync(UtilisateurMapper.ToUtilisateur(model));

            return await GetUtilisateurDtoById(model.Id);
        }

        public async Task<DtoUtilisateur> GetUtilisateurDtoById(Guid id)
        {
            return await _repository.GetUtilisateurDtoById(id);
        }

        public async Task<DatatableResponse<DtoUtilisateur>> GetAllUtilisateurDto(DtoFiltreUtilisateur? filtre, DtoPagination? pagination)
        {
            return await _repository.GetAllUtilisateurDto(filtre, pagination);
        }

        public async Task<List<DtoExportUtilisateur>> Exporter(DtoFiltreUtilisateur? filtre, DtoPagination? pagination)
        {
            var r = await GetAllUtilisateurDto(filtre, null);
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
    }
}
