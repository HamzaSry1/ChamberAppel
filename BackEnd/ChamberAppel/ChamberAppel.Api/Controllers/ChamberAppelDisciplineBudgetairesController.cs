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
    public class ChamberAppelDisciplineBudgetairesController : ControllerBase
    {
        private readonly IChamberAppelDisciplineBudgetaireService _service;

        public ChamberAppelDisciplineBudgetairesController(IChamberAppelDisciplineBudgetaireService service)
        {
            _service = service;
        }

        #region CRUD

        [HttpPost("GetAllFiltredAsync")]
        public async Task<DatatableResponse<ChamberAppelDisciplineBudgetaire>> GetAllFiltredAsync(DatatableRequest<DtoFiltreMotsCle> request)
        {
            return await _service.GetAllAsync(request.Filtre, request.Pagination);
        }

        [HttpGet("GetByIdAsync/{id}")]
        public async Task<ApiResponse<ChamberAppelDisciplineBudgetaire>> GetByIdAsync(Guid id)
        {
            var r = await _service.GetByIdAsync(id);
            if (r == null)
            {
                return new ApiResponse<ChamberAppelDisciplineBudgetaire> { StatusCode = HttpStatusCode.NotFound };
            }
            return new ApiResponse<ChamberAppelDisciplineBudgetaire> { StatusCode = HttpStatusCode.OK, Data = r };
        }

        [HttpPost("CreateAsync")]
        public async Task<ApiResponse<ChamberAppelDisciplineBudgetaire>> CreateAsync(ChamberAppelDisciplineBudgetaire model)
        {
            var validation = Validation(model);
            if (validation.Count != 0)
            {
                return new ApiResponse<ChamberAppelDisciplineBudgetaire> { ValidationErrors = validation, StatusCode = HttpStatusCode.BadRequest };
            }
            var r = await _service.CreateAsync(model);
            if (r != null)
            {
                return new ApiResponse<ChamberAppelDisciplineBudgetaire> { Data = r, StatusCode = HttpStatusCode.OK };
            }
            return new ApiResponse<ChamberAppelDisciplineBudgetaire> { StatusCode = HttpStatusCode.NoContent };
        }

        [HttpPut("UpdateAsync")]
        public async Task<ApiResponse<ChamberAppelDisciplineBudgetaire>> UpdateAsync(ChamberAppelDisciplineBudgetaire model)
        {
            var validation = Validation(model);
            if (validation.Count != 0)
            {
                return new ApiResponse<ChamberAppelDisciplineBudgetaire> { ValidationErrors = validation, StatusCode = HttpStatusCode.BadRequest };
            }
            var r = await _service.UpdateAsync(model);
            if (r != null)
            {
                return new ApiResponse<ChamberAppelDisciplineBudgetaire> { Data = r, StatusCode = HttpStatusCode.OK };
            }
            return new ApiResponse<ChamberAppelDisciplineBudgetaire> { StatusCode = HttpStatusCode.NoContent };
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

        #region validation
        private List<FluentValidationErrors> Validation(ChamberAppelDisciplineBudgetaire model)
        {
            ChamberAppelDisciplineBudgetairesValidation validationRules = new ChamberAppelDisciplineBudgetairesValidation();
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
