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
    public class DisciplineBudgetairesController : ControllerBase
    {
        private readonly IDisciplineBudgetaireService _service;
        public DisciplineBudgetairesController(IDisciplineBudgetaireService service)
        {
            _service = service;
        }

        #region CRUD

        [HttpPost("GetAllFiltredAsync")]
        public async Task<DatatableResponse<DtoDisciplineBudgetaire>> GetAllFiltredAsync(DatatableRequest<DtoFiltreDisciplineBudgetaire> request)
        {
            return await _service.GetAllAsync(request.Filtre, request.Pagination);
        }

        [HttpGet("GetByIdAsync/{id}")]
        public async Task<ApiResponse<DisciplineBudgetaire>> GetByIdAsync(Guid id)
        {
            var r = await _service.GetByIdAsync(id);
            if (r == null)
            {
                return new ApiResponse<DisciplineBudgetaire> { StatusCode = HttpStatusCode.NotFound };
            }
            return new ApiResponse<DisciplineBudgetaire> { StatusCode = HttpStatusCode.OK, Data = r };
        }

        [HttpPost("CreateAsync")]
        public async Task<ApiResponse<DisciplineBudgetaire>> CreateAsync(DisciplineBudgetaire model)
        {
            var validation = Validation(model);
            if (validation.Count != 0)
            {
                return new ApiResponse<DisciplineBudgetaire> { ValidationErrors = validation, StatusCode = HttpStatusCode.BadRequest };
            }
            var r = await _service.CreateAsync(model);
            if (r != null)
            {
                return new ApiResponse<DisciplineBudgetaire> { Data = r, StatusCode = HttpStatusCode.OK };
            }
            return new ApiResponse<DisciplineBudgetaire> { StatusCode = HttpStatusCode.NoContent };
        }

        [HttpPut("UpdateAsync")]
        public async Task<ApiResponse<DisciplineBudgetaire>> UpdateAsync(DisciplineBudgetaire model)
        {
            var validation = Validation(model);
            if (validation.Count != 0)
            {
                return new ApiResponse<DisciplineBudgetaire> { ValidationErrors = validation, StatusCode = HttpStatusCode.BadRequest };
            }
            var r = await _service.UpdateAsync(model);
            if (r != null)
            {
                return new ApiResponse<DisciplineBudgetaire> { Data = r, StatusCode = HttpStatusCode.OK };
            }
            return new ApiResponse<DisciplineBudgetaire> { StatusCode = HttpStatusCode.NoContent };
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
        public async Task<IActionResult> ExporterAsync(DtoFiltreDisciplineBudgetaire request)
        {
            var res = await _service.GetAllAsync(request, null);
            return this.DownloadAsExcelFile(res.Data, Const.List_Discipline_Budgeitaires);
        }

        #endregion CRUD
        #region validation
        private List<FluentValidationErrors> Validation(DisciplineBudgetaire model)
        {
            DisciplineBudgetairesValidation validationRules = new DisciplineBudgetairesValidation();
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
