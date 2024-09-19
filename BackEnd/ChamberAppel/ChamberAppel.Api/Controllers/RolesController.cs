using ChamberAppel.Application.Validators;
using ChamberAppel.Domain.DTOs;
using ChamberAppel.Domain.Models;
using ChamberAppel.Domain.Services;
using Microsoft.AspNetCore.Mvc;
using System.Net;

namespace ChamberAppel.Api.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class RolesController : ControllerBase
    {
        private readonly IRoleService _service;
        public RolesController(IRoleService service)
        {
            _service = service;
        }

        #region CRUD

        [HttpPost("GetAllFiltredAsync")]
        public async Task<DatatableResponse<Role>> GetAllFiltredAsync(DatatableRequest<DtoFiltreMotsCle> request)
        {
            return await _service.GetAllAsync(request.Filtre, request.Pagination);
        }

        [HttpGet("GetAllAsync")]
        public async Task<ApiResponse<List<Role>>> GetAllAsync()
        {
            var r = await _service.GetAllAsync();
            if (r.Any())
            {
                return new ApiResponse<List<Role>> { Data = r, StatusCode = HttpStatusCode.OK };
            }
            return new ApiResponse<List<Role>> { StatusCode = HttpStatusCode.NoContent };
        }

        [HttpGet("GetByIdAsync/{id}")]
        public async Task<ApiResponse<Role>> GetByIdAsync(Guid id)
        {
            var r = await _service.GetByIdAsync(id);
            if (r == null)
            {
                return new ApiResponse<Role> { StatusCode = HttpStatusCode.NotFound };
            }
            return new ApiResponse<Role> { StatusCode = HttpStatusCode.OK, Data = r };
        }

        [HttpPost("CreateAsync")]
        public async Task<ApiResponse<Role>> CreateAsync(Role model)
        {
            var validation = Validation(model);
            if (validation.Count != 0)
            {
                return new ApiResponse<Role> { ValidationErrors = validation, StatusCode = HttpStatusCode.BadRequest };
            }
            var r = await _service.CreateAsync(model);
            if (r != null)
            {
                return new ApiResponse<Role> { Data = r, StatusCode = HttpStatusCode.OK };
            }
            return new ApiResponse<Role> { StatusCode = HttpStatusCode.NoContent };
        }

        [HttpPut("UpdateAsync")]
        public async Task<ApiResponse<Role>> UpdateAsync(Role model)
        {
            var validation = Validation(model);
            if (validation.Count != 0)
            {
                return new ApiResponse<Role> { ValidationErrors = validation, StatusCode = HttpStatusCode.BadRequest };
            }
            var r = await _service.UpdateAsync(model);
            if (r != null)
            {
                return new ApiResponse<Role> { Data = r, StatusCode = HttpStatusCode.OK };
            }
            return new ApiResponse<Role> { StatusCode = HttpStatusCode.NoContent };
        }

        [HttpDelete("DeleteAsync/{id}")]
        public async Task<ApiResponse<bool>> DeleteAsync(Guid id)
        {
            var r = await _service.DeleteByIdAsync(id);
            if (r != null)
            {
                return new ApiResponse<bool> { Data = true, StatusCode = HttpStatusCode.OK };
            }
            return new ApiResponse<bool> { Data = false, StatusCode = HttpStatusCode.NotFound };
        }

        [HttpPost("ExporterAsync")]
        public async Task<IActionResult> ExporterAsync(DtoFiltreMotsCle request)
        {
            return null;
        }

        #endregion CRUD
        
        #region permissions

        [HttpPost("AddPermissionsAsync")]
        public async Task<ApiResponse<bool>> AddPermissionsAsync(DtoCheckedListRequest model)
        {
            var role = await _service.GetByIdAsync(model.Id);
            if (role == null)
            {
                return new ApiResponse<bool> { Data = false, StatusCode = HttpStatusCode.NotFound };
            }
            await _service.AddPermissionsAsync(model);
            return new ApiResponse<bool> { Data = true, StatusCode = HttpStatusCode.OK };
        }

        [HttpGet("GetPermissionsAsync")]
        public async Task<ApiResponse<List<Permission>>> GetPermissionsAsync(Guid roldId)
        {
            var r = await _service.GetPermissionsAsync(roldId);
            if (r.Any())
            {
                return new ApiResponse<List<Permission>> { Data = r, StatusCode = HttpStatusCode.OK };
            }
            return new ApiResponse<List<Permission>> { StatusCode = HttpStatusCode.NoContent };
        }

        #endregion permissions
        
        #region validation
        private List<FluentValidationErrors> Validation(Role model)
        {
            RoleValidation validationRules = new RoleValidation();
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
