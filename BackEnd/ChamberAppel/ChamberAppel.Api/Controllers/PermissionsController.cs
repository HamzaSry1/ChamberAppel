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
    public class PermissionsController : ControllerBase
    {
        private readonly IPermissionService _service;
        public PermissionsController(IPermissionService service)
        {
            _service = service;
        }

        #region CRUD

        [HttpPost("GetAllFiltredAsync")]
        public async Task<DatatableResponse<Permission>> GetAllFiltredAsync(DatatableRequest<DtoFiltreMotsCle> request)
        {
            return await _service.GetAll(request.Filtre, request.Pagination);
        }

        [HttpGet("GetAllAsync")]
        public async Task<ApiResponse<List<Permission>>> GetAllAsync()
        {
            var r = await _service.GetAllAsync();
            if (r.Any())
            {
                return new ApiResponse<List<Permission>> { Data = r, StatusCode = HttpStatusCode.OK };
            }
            return new ApiResponse<List<Permission>> { StatusCode = HttpStatusCode.NoContent };
        }

        [HttpGet("GetAllByGroupeAsync")]
        public async Task<ApiResponse<List<DtoPermissionGroupe>>> GetAllByGroupeAsync()
        {
            var r = await _service.GetAllByGroupeAsync();
            if (r.Any())
            {
                return new ApiResponse<List<DtoPermissionGroupe>> { Data = r, StatusCode = HttpStatusCode.OK };
            }
            return new ApiResponse<List<DtoPermissionGroupe>> { StatusCode = HttpStatusCode.NoContent };
        }

        [HttpGet("GetByIdAsync/{id}")]
        public async Task<ApiResponse<Permission>> GetByIdAsync(Guid id)
        {
            var r = await _service.GetByIdAsync(id);
            if (r == null)
            {
                return new ApiResponse<Permission> { StatusCode = HttpStatusCode.NotFound };
            }
            return new ApiResponse<Permission> { StatusCode = HttpStatusCode.OK, Data = r };
        }

        [HttpPost("CreateAsync")]
        public async Task<ApiResponse<Permission>> CreateAsync(Permission model)
        {
            var validation = Validation(model);
            if (validation.Count != 0)
            {
                return new ApiResponse<Permission> { ValidationErrors = validation, StatusCode = HttpStatusCode.BadRequest };
            }
            var r = await _service.CreateAsync(model);

            if (r == null)
                return new ApiResponse<Permission> { StatusCode = HttpStatusCode.BadRequest };

            return new ApiResponse<Permission> { Data = r, StatusCode = HttpStatusCode.OK };
        }

        [HttpPut("UpdateAsync")]
        public async Task<ApiResponse<Permission>> UpdateAsync(Permission model)
        {
            var validation = Validation(model);
            if (validation.Count != 0)
            {
                return new ApiResponse<Permission> { ValidationErrors = validation, StatusCode = HttpStatusCode.BadRequest };
            }
            var r = await _service.UpdateAsync(model);
            if (r == null)
                return new ApiResponse<Permission> { StatusCode = HttpStatusCode.BadRequest };
            return new ApiResponse<Permission> { Data = r, StatusCode = HttpStatusCode.OK };
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
            //var r = await _service.Exporter(request, null);
            //return SheardController.DownloadAsExcelFile(this, r, MessageResult.List_Permissions);
            return null;
        }

        #endregion CRUD

        #region validation

        private List<FluentValidationErrors> Validation(Permission model)
        {
            PermissionValidation validationRules = new PermissionValidation();
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
