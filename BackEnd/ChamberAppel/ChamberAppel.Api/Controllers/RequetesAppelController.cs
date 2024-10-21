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
    public class RequetesAppelController : ControllerBase
    {
        private readonly IRequeteAppelService _service;

        public RequetesAppelController(IRequeteAppelService service)
        {
            _service = service;
        }

        #region CRUD

        [HttpPost("GetAllFiltredAsync")]
        public async Task<DatatableResponse<DtoRequeteAppel>> GetAllFiltredAsync(DatatableRequest<DtoFiltreRequeteAppele> request)
        {
            return await _service.GetAllAsync(request.Filtre, request.Pagination);
        }

        [HttpGet("GetByIdAsync/{id}")]
        public async Task<ApiResponse<RequeteAppel>> GetByIdAsync(Guid id)
        {
            var r = await _service.GetByIdAsync(id);
            if (r == null)
            {
                return new ApiResponse<RequeteAppel> { StatusCode = HttpStatusCode.NotFound };
            }
            return new ApiResponse<RequeteAppel> { StatusCode = HttpStatusCode.OK, Data = r };
        }

        [HttpPost("CreateAsync")]
        public async Task<ApiResponse<RequeteAppel>> CreateAsync(RequeteAppel model)
        {
            var validation = Validation(model);
            if (validation.Count != 0)
            {
                return new ApiResponse<RequeteAppel> { ValidationErrors = validation, StatusCode = HttpStatusCode.BadRequest };
            }
            var r = await _service.CreateAsync(model);
            if (r != null)
            {
                return new ApiResponse<RequeteAppel> { Data = r, StatusCode = HttpStatusCode.OK };
            }
            return new ApiResponse<RequeteAppel> { StatusCode = HttpStatusCode.NoContent };
        }

        [HttpPut("UpdateAsync")]
        public async Task<ApiResponse<RequeteAppel>> UpdateAsync(RequeteAppel model)
        {
            var validation = Validation(model);
            if (validation.Count != 0)
            {
                return new ApiResponse<RequeteAppel> { ValidationErrors = validation, StatusCode = HttpStatusCode.BadRequest };
            }
            var r = await _service.UpdateAsync(model);
            if (r != null)
            {
                return new ApiResponse<RequeteAppel> { Data = r, StatusCode = HttpStatusCode.OK };
            }
            return new ApiResponse<RequeteAppel> { StatusCode = HttpStatusCode.NoContent };
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
        public async Task<IActionResult> ExporterAsync(DtoFiltreRequeteAppele request)
        {
            var res = await _service.ExportAsync(request, null);
            return this.DownloadAsExcelFile(res, Const.List_Requete_Appel);
        }

        #endregion CRUD

        #region validation
        private List<FluentValidationErrors> Validation(RequeteAppel model)
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
