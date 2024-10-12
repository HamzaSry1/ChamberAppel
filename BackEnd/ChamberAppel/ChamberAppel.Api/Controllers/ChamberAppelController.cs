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
    public class ChamberAppelController : ControllerBase
    {
        private readonly IChamberAppelService _service;

        public ChamberAppelController(IChamberAppelService service)
        {
            _service = service;
        }

        #region CRUD

        [HttpPost("GetAllFiltredAsync")]
        public async Task<DatatableResponse<ChamberAppele>> GetAllFiltredAsync(DatatableRequest<DtoFiltreChamberAppele> request)
        {
            return await _service.GetAllAsync(request.Filtre, request.Pagination);
        }

        [HttpGet("GetByIdAsync/{id}")]
        public async Task<ApiResponse<ChamberAppele>> GetByIdAsync(Guid id)
        {
            var r = await _service.GetByIdAsync(id);
            if (r == null)
            {
                return new ApiResponse<ChamberAppele> { StatusCode = HttpStatusCode.NotFound };
            }
            return new ApiResponse<ChamberAppele> { StatusCode = HttpStatusCode.OK, Data = r };
        }

        [HttpPost("CreateAsync")]
        public async Task<ApiResponse<ChamberAppele>> CreateAsync(ChamberAppele model)
        {
            var validation = Validation(model);
            if (validation.Count != 0)
            {
                return new ApiResponse<ChamberAppele> { ValidationErrors = validation, StatusCode = HttpStatusCode.BadRequest };
            }
            var r = await _service.CreateAsync(model);
            if (r != null)
            {
                return new ApiResponse<ChamberAppele> { Data = r, StatusCode = HttpStatusCode.OK };
            }
            return new ApiResponse<ChamberAppele> { StatusCode = HttpStatusCode.NoContent };
        }

        [HttpPut("UpdateAsync")]
        public async Task<ApiResponse<ChamberAppele>> UpdateAsync(ChamberAppele model)
        {
            var validation = Validation(model);
            if (validation.Count != 0)
            {
                return new ApiResponse<ChamberAppele> { ValidationErrors = validation, StatusCode = HttpStatusCode.BadRequest };
            }
            var r = await _service.UpdateAsync(model);
            if (r != null)
            {
                return new ApiResponse<ChamberAppele> { Data = r, StatusCode = HttpStatusCode.OK };
            }
            return new ApiResponse<ChamberAppele> { StatusCode = HttpStatusCode.NoContent };
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
        public async Task<IActionResult> ExporterAsync(DtoFiltreChamberAppele request)
        {
            var res = await _service.GetAllAsync(request, null);
            return this.DownloadAsExcelFile(res.Data, Const.List_Chamber_Appel);
        }

        #endregion CRUD

        #region validation
        private List<FluentValidationErrors> Validation(ChamberAppele model)
        {
            ChamberAppelValidation validationRules = new ChamberAppelValidation();
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
