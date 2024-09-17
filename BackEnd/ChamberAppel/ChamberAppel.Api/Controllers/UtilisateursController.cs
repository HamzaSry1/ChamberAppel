using ChamberAppel.Domain.DTOs;
using ChamberAppel.Domain.Models;
using ChamberAppel.Domain.Services;
using Microsoft.AspNetCore.Authorization;
using ChamberAppel.Application.Services;
using Microsoft.AspNetCore.Mvc;
using System.Security.Claims;
using System.Net;
using ChamberAppel.Application.Validators;
using System.Diagnostics;

namespace ChamberAppel.Api.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class UtilisateursController : ControllerBase
    {
        private readonly IUtilisateurService _service;
        private readonly IUserSessionService _sessionService;
        private readonly IAuthentification authentification;
        public UtilisateursController(IUtilisateurService service, IAuthentification authentification, IUserSessionService sessionService)
        {
            _service = service;
            this.authentification = authentification;
            _sessionService = sessionService;
        }

        #region CRUD

        [HttpPost("GetAllAsync")]
        public async Task<DatatableResponse<DtoUtilisateur>> GetAllAsync(DatatableRequest<DtoFiltreUtilisateur> request)
        {
            try
            {
                return await _service.GetAllAsync(request.Filtre, request.Pagination);
            }
            catch (Exception ex)
            {
                Debug.Write(ex.Message);
                throw;
            }
        }

        [HttpGet("GetByIdAsync/{id}")]
        public async Task<ApiResponse<DtoUtilisateur>> GetByIdAsync(Guid id)
        {
            DtoUtilisateur r = await _service.GetDtoUtilisateurByIdAsync(id);
            if (r == null)
            {
                return new ApiResponse<DtoUtilisateur> { StatusCode = HttpStatusCode.NoContent };
            }
            return new ApiResponse<DtoUtilisateur> { StatusCode = HttpStatusCode.OK, Data = r };

        }

        [HttpPost("ExporterAsync")]
        public async Task<IActionResult> ExporterAsync(DtoFiltreUtilisateur request)
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
            model.Password = PasswordService.Encrypt(model.Password);
            var result = await _service.CreateUtilisateurAsync(model);
            return new ApiResponse<DtoUtilisateur> { Data = result, StatusCode = HttpStatusCode.OK };
        }

        [HttpPut("UpdateAsync")]
        public async Task<ApiResponse<DtoUtilisateur>> UpdateAsync(DtoUtilisateur model)
        {
            var validation = Validation(model);
            if (validation.Count != 0)
            {
                return new ApiResponse<DtoUtilisateur> { ValidationErrors = validation, StatusCode = HttpStatusCode.BadRequest };
            }
            var result = await _service.UpdateUtilisateurAsync(model);
            return new ApiResponse<DtoUtilisateur> { Data = result, StatusCode = HttpStatusCode.OK };
        }

        [HttpDelete("DeleteAsync/{id}")]
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

        [HttpGet("GetPermissionsAsync/{id}")]
        public async Task<ApiResponse<List<Permission>>> GetPermissionsAsync(Guid id)
        {
            var user = await _service.GetByIdAsync(id);
            if (user == null)
            {
                return new ApiResponse<List<Permission>> { StatusCode = HttpStatusCode.NotFound };
            }

            var r = await _service.GetUtilisateurPermissionsAsync(id);
            if (r.Any())
            {
                return new ApiResponse<List<Permission>> { StatusCode = HttpStatusCode.OK, Data = r };
            }
            return new ApiResponse<List<Permission>> { StatusCode = HttpStatusCode.NoContent };
        }

        [HttpGet("GetRolesAsync/{id}")]
        public async Task<ApiResponse<List<Role>>> GetRolesAsync(Guid id)
        {
            var user = await _service.GetByIdAsync(id);
            if (user == null)
            {
                return new ApiResponse<List<Role>> { StatusCode = HttpStatusCode.NotFound };
            }
            var r = await _service.GetUtilisateurRolesAsync(id);
            if (r.Any())
            {
                return new ApiResponse<List<Role>> { StatusCode = HttpStatusCode.OK, Data = r };
            }
            return new ApiResponse<List<Role>> { StatusCode = HttpStatusCode.NoContent };
        }

        [HttpPost("AddPermissionsAsync")]
        public async Task<ApiResponse<bool>> AddPermissionsAsync(DtoCheckedListRequest model)
        {
            var user = await _service.GetByIdAsync(model.Id);
            if (user == null)
            {
                return new ApiResponse<bool> { StatusCode = HttpStatusCode.NotFound };
            }
            await this._service.AddPermissionsAsync(model);
            return new ApiResponse<bool> { Data = true, StatusCode = HttpStatusCode.OK };
        }

        [HttpPost("AddRolesAsync")]
        public async Task<ApiResponse<bool>> AddRolesAsync(DtoCheckedListRequest model)
        {
            var user = await _service.GetByIdAsync(model.Id);
            if (user == null)
            {
                return new ApiResponse<bool> { StatusCode = HttpStatusCode.NotFound };
            }
            await this._service.AddRolesAsync(model);
            return new ApiResponse<bool> { Data = true, StatusCode = HttpStatusCode.OK };
        }

        [HttpGet("GetMyPermissionsAsync")]
        [Authorize()]
        public async Task<ApiResponse<List<Permission>>> GetMyPermissionsAsync()
        {
            var __userId = await _sessionService.GetCurrentUserIdAsync();

            var nameIdentifier = User.Claims.FirstOrDefault(x => x.Type == ClaimTypes.NameIdentifier);

            if (!Guid.TryParse(nameIdentifier?.Value, out var userId))
            {
                return new ApiResponse<List<Permission>> { StatusCode = HttpStatusCode.BadRequest };
            }

            var user = await _service.GetByIdAsync(userId);
            if (user == null)
            {
                return new ApiResponse<List<Permission>> { StatusCode = HttpStatusCode.NotFound };
            }

            var r = await _service.GetAllPermissionsAsync(userId);
            if (r.Any())
            {
                return new ApiResponse<List<Permission>> { StatusCode = HttpStatusCode.OK, Data = r };
            }
            return new ApiResponse<List<Permission>> { StatusCode = HttpStatusCode.NoContent };
        }

        [HttpPost("LoginAsync")]
        [AllowAnonymous]
        public async Task<ApiResponse<DtoLoginResult>> LoginAsync([FromBody] DtoLogin login)
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

            var user = await _service.LoginAsync(login.Login, login.Password);
            if (user == null)
            {
                return new ApiResponse<DtoLoginResult> { StatusCode = HttpStatusCode.NotFound };
            }
            var token = authentification.GenerateJwtToken(user);
            var r = await this._service.GetAllPermissionsAsync(user.Id);
            return new ApiResponse<DtoLoginResult> { Data = new DtoLoginResult { Token = token, Permissions = r }, StatusCode = HttpStatusCode.OK };
        }

        [HttpPost("ResetPasswordAsync")]
        public async Task<ApiResponse<bool>> ResetPasswordAsync([FromBody] DtoChangePassword model)
        {
            bool changed = await _service.ResetPasswordAsync(model.UserId, model.OldPassword, model.NewPassword);
            if (!changed)
            {
                return new ApiResponse<bool> { StatusCode = HttpStatusCode.NotFound };
            }
            return new ApiResponse<bool> { StatusCode = HttpStatusCode.OK };
        }

        #endregion Security

        #region validation
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

        #endregion validation
    }
}