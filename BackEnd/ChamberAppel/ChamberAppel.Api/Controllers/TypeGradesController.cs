using ChamberAppel.Application.Messages;
using ChamberAppel.Application.Validators;
using ChamberAppel.Domain.DTOs;
using ChamberAppel.Domain.Models;
using ChamberAppel.Domain.Services;
using Helpers.Api;
using Microsoft.AspNetCore.Mvc;
using System.Net;
namespace ChamberAppel.Api.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class TypeGradesController : ControllerBase
    {
        private readonly ITypeGradesService _service;

        public TypeGradesController(ITypeGradesService service)
        {
            _service = service;
        }

        #region CRUD

        [HttpPost("GetAllFiltredAsync")]
        public async Task<DatatableResponse<TypeGrade>> GetAllFiltredAsync(DatatableRequest<DtoFiltreMotsCle> request)
        {
            return await _service.GetAllFiltredAsync(request.Filtre, request.Pagination);
        }

        [HttpGet("GetByIdAsync/{id}")]
        public async Task<ApiResponse<TypeGrade>> GetByIdAsync(Guid id)
        {
            var r = await _service.GetByIdAsync(id);
            if (r == null)
            {
                return new ApiResponse<TypeGrade> { StatusCode = HttpStatusCode.NotFound };
            }
            return new ApiResponse<TypeGrade> { StatusCode = HttpStatusCode.OK, Data = r };
        }

        [HttpPost("CreateAsync")]
        public async Task<ApiResponse<TypeGrade>> CreateAsync(TypeGrade model)
        {
            var validation = Validation(model);
            if (validation.Count != 0)
            {
                return new ApiResponse<TypeGrade> { ValidationErrors = validation, StatusCode = HttpStatusCode.BadRequest };
            }
            var r = await _service.CreateAsync(model);

            if (r == null)
                return new ApiResponse<TypeGrade> { StatusCode = HttpStatusCode.BadRequest };

            return new ApiResponse<TypeGrade> { Data = r, StatusCode = HttpStatusCode.OK };
        }

        [HttpPut("UpdateAsync")]
        public async Task<ApiResponse<TypeGrade>> UpdateAsync(TypeGrade model)
        {
            var validation = Validation(model);
            if (validation.Count != 0)
            {
                return new ApiResponse<TypeGrade> { ValidationErrors = validation, StatusCode = HttpStatusCode.BadRequest };
            }
            var r = await _service.UpdateAsync(model);
            if (r == null)
                return new ApiResponse<TypeGrade> { StatusCode = HttpStatusCode.BadRequest };
            return new ApiResponse<TypeGrade> { Data = r, StatusCode = HttpStatusCode.OK };
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
        public async Task<IActionResult> ExporterAsync()
        {
            var data = await _service.GetAllAsync();
            return this.DownloadAsExcelFile(data, Const.List_Grades);
        }

        #endregion CRUD
        #region validation
        private List<FluentValidationErrors> Validation(TypeGrade model)
        {
            TypeGradeValidation validationRules = new TypeGradeValidation();
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
