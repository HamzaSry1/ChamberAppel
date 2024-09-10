using ChamberAppel.Domain.DTOs;
using ChamberAppel.Domain.Models;
using ChamberAppel.Domain.Services;
using ChamberAppel.Infrastructure.Services;
using Microsoft.AspNetCore.Authorization;
using ChamberAppel.Application.Services;
using Microsoft.AspNetCore.Mvc;
using System.Security.Claims;
using System.Net;
using ChamberAppel.Application.Validators;

namespace ChamberAppel.Api.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class UtilisateursController : ControllerBase
    {
        private readonly IUtilisateurService _service;
        private readonly IAuthentification authentification;
        public UtilisateursController(IUtilisateurService service, IAuthentification authentification)
        {
            _service = service;
            this.authentification = authentification;
        }

        #region CRUD

        [HttpPost("GetAllAsync")]
        public async Task<DatatableResponse<DtoUtilisateur>> GetAllAsync(DatatableRequest<DtoFiltreUtilisateur> request)
        {
            return await _service.GetAllUtilisateurDto(request.Filtre, request.Pagination);
        }

        [HttpGet("GetByIdAsync/{id}")]
        public async Task<ApiResponse<DtoUtilisateur>> GetByIdAsync(Guid id)
        {
            DtoUtilisateur r = await _service.GetUtilisateurDtoById(id);
            if (r == null)
            {
                return new ApiResponse<DtoUtilisateur> { StatusCode = HttpStatusCode.NoContent };
            }
            return new ApiResponse<DtoUtilisateur> { StatusCode = HttpStatusCode.OK, Data = r };

        }

        [HttpPost("Exporter")]
        public async Task<IActionResult> Exporter(DtoFiltreUtilisateur request)
        {
            //var r = await _service.Exporter(request, null);
            //return SheardController.DownloadAsExcelFile(this, r, Const.List_Utilisateurs);
            return null;
        }

        [HttpPost("CreateAsync")]
        public async Task<ApiResponse<DtoUtilisateur>> CreateAsync(DtoUtilisateur model)
        {
            var validation = Validation(model);
            if (validation.Count != 0)
            {
                return new ApiResponse<DtoUtilisateur> { ValidationErrors = validation, StatusCode = HttpStatusCode.BadRequest };
            }
            if (await _service.VerifierConflit(model))
            {
                return new ApiResponse<DtoUtilisateur> { StatusCode = HttpStatusCode.Conflict };
            }
            model.Password = PasswordService.Encrypt(model.Password);
            var result = await _service.CreateUtilisateur(model);
            return new ApiResponse<DtoUtilisateur> { Data = result, StatusCode = HttpStatusCode.OK };
        }

        [HttpPost("UpdateAsync")]
        public async Task<ApiResponse<DtoUtilisateur>> UpdateAsync(DtoUtilisateur model)
        {
            var validation = Validation(model);
            if (validation.Count != 0)
            {
                return new ApiResponse<DtoUtilisateur> { ValidationErrors = validation, StatusCode = HttpStatusCode.BadRequest };
            }
            if (await _service.VerifierConflit(model))
            {
                return new ApiResponse<DtoUtilisateur> { StatusCode = HttpStatusCode.Conflict };
            }
            var result = await _service.UpdateUtilisateur(model);
            return new ApiResponse<DtoUtilisateur> { Data = result, StatusCode = HttpStatusCode.OK };
        }

        [HttpPost("DeleteAsync/{id}")]
        public async Task<ApiResponse<bool>> DeleteAsync(Guid id)
        {
            // remove the persmission and the role from the user before deleted

            //await _service.DeletePermissions(id);
            //await _service.DeleteRoles(id);

            var user = await _service.DeleteByIdAsync(id);
            if (user == null)
                return new ApiResponse<bool> { StatusCode = HttpStatusCode.BadRequest };

            return new ApiResponse<bool> { StatusCode = HttpStatusCode.OK, Data = true };
        }

        #endregion CRUD

        #region Security

        [HttpGet("GetPermissions/{id}")]
        public async Task<ApiResponse<List<Permission>>> GetPermissions(Guid id)
        {
            var user = await _service.GetByIdAsync(id);
            if (user == null)
            {
                return new ApiResponse<List<Permission>> { StatusCode = HttpStatusCode.NotFound };
            }

            var r = await _service.GetUtilisateurPermissions(id);
            if (r.Any())
            {
                return new ApiResponse<List<Permission>> { StatusCode = HttpStatusCode.OK, Data = r };
            }
            return new ApiResponse<List<Permission>> { StatusCode = HttpStatusCode.NoContent };
        }

        [HttpGet("GetRoles/{id}")]
        public async Task<ApiResponse<List<Role>>> GetRoles(Guid id)
        {
            var user = await _service.GetByIdAsync(id);
            if (user == null)
            {
                return new ApiResponse<List<Role>> { StatusCode = HttpStatusCode.NotFound };
            }
            var r = await _service.GetUtilisateurRoles(id);
            if (r.Any())
            {
                return new ApiResponse<List<Role>> { StatusCode = HttpStatusCode.OK, Data = r };
            }
            return new ApiResponse<List<Role>> { StatusCode = HttpStatusCode.NoContent };
        }

        [HttpPost("AddPermissions")]
        public async Task<ApiResponse<bool>> AddPermissions(DtoCheckedListRequest model)
        {
            var user = await _service.GetByIdAsync(model.Id);
            if (user == null)
            {
                return new ApiResponse<bool> { StatusCode = HttpStatusCode.NotFound };
            }
            await this._service.AddPermissions(model);
            return new ApiResponse<bool> { Data = true, StatusCode = HttpStatusCode.OK };
        }

        [HttpPost("AddRoles")]
        public async Task<ApiResponse<bool>> AddRoles(DtoCheckedListRequest model)
        {
            var user = await _service.GetByIdAsync(model.Id);
            if (user == null)
            {
                return new ApiResponse<bool> { StatusCode = HttpStatusCode.NotFound };
            }
            await this._service.AddRoles(model);
            return new ApiResponse<bool> { Data = true, StatusCode = HttpStatusCode.OK };
        }

        [HttpGet("GetMyPermissions")]
        [Authorize()]
        public async Task<ApiResponse<List<Permission>>> GetMyPermissions()
        {
            var nameIdentifier = User.Claims.FirstOrDefault(x => x.Type == ClaimTypes.NameIdentifier);

            if (!Guid.TryParse(nameIdentifier?.Value, out var userId))
            {
                return new ApiResponse<List<Permission>> { StatusCode = HttpStatusCode.BadRequest };
            }

            var user = await this._service.GetByIdAsync(userId);
            if (user == null)
            {
                return new ApiResponse<List<Permission>> { StatusCode = HttpStatusCode.NotFound };
            }

            var r = await this._service.GetAllPermissions(userId);
            if (r.Any())
            {
                return new ApiResponse<List<Permission>> { StatusCode = HttpStatusCode.OK, Data = r };
            }
            return new ApiResponse<List<Permission>> { StatusCode = HttpStatusCode.NoContent };
        }

        [HttpPost("Login")]
        [AllowAnonymous]
        public async Task<ApiResponse<DtoLoginResult>> Login([FromBody] DtoLogin login)
        {
            UtilisateurLoginValidator validationRules = new UtilisateurLoginValidator();
            var resultValidationRules = await validationRules.ValidateAsync(login);

            if (resultValidationRules.Errors.Any())
            {
                var errors = resultValidationRules.Errors.Select(err => new FluentValidationErrors
                {
                    PropertyName = err.PropertyName,
                    ErrorMessage = err.ErrorMessage
                });

                return new ApiResponse<DtoLoginResult> { StatusCode = HttpStatusCode.BadRequest, ValidationErrors = errors.ToList() };
            }

            var user = await _service.Login(login.Login, login.Password);
            if (user == null)
            {
                return new ApiResponse<DtoLoginResult> { StatusCode = HttpStatusCode.NotFound };
            }
            var token = authentification.GenerateJwtToken(user);
            var r = await this._service.GetAllPermissions(user.Id);
            return new ApiResponse<DtoLoginResult> { Data = new DtoLoginResult { Token = token, Permissions = r }, StatusCode = HttpStatusCode.OK };
        }

        [HttpPost("ChangePassword")]
        public async Task<ApiResponse<bool>> ChangePassword([FromBody] DtoChangePassword model)
        {
            bool changed = await _service.ResetPassword(model.UserId, model.OldPassword, model.NewPassword);
            if (!changed)
            {
                return new ApiResponse<bool> { StatusCode = HttpStatusCode.NotFound };
            }
            return new ApiResponse<bool> { StatusCode = HttpStatusCode.OK };
        }


        [HttpPost("ConfirmResetPassword")]
        public async Task<ApiResponse<bool>> ConfirmResetPassword([FromBody] DtoResetPasswordConfirmation request)
        {
            bool changed = await _service.ResetPasswordConfirmation(request.Token, request.NewPassword);
            if (!changed)
            {
                return new ApiResponse<bool> { Data = false, StatusCode = HttpStatusCode.BadRequest };
            }
            return new ApiResponse<bool> { Data = true, StatusCode = HttpStatusCode.OK };
        }

        #endregion Security

        #region Model Validation
        private List<FluentValidationErrors> Validation(DtoUtilisateur model)
        {
            UtilisateurValidation validationRules = new UtilisateurValidation();
            var resultValidationRules = validationRules.Validate(model);

            List<FluentValidationErrors> listErrors = new();

            if (resultValidationRules.Errors.Any())
            {
                var errors = resultValidationRules.Errors.Select(err => new FluentValidationErrors
                {
                    PropertyName = err.PropertyName,
                    ErrorMessage = err.ErrorMessage
                });

                listErrors = errors.ToList();
            }
            return listErrors;
        }

        #endregion Model Validation
    }
}