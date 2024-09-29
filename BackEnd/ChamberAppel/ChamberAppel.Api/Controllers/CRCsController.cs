using ChamberAppel.Application.Messages;
using ChamberAppel.Application.Validators;
using ChamberAppel.Domain.DTOs;
using ChamberAppel.Domain.Models;
using ChamberAppel.Domain.Services;
using Helpers.Api;
using Microsoft.AspNetCore.Mvc;
using System.Collections.Generic;
using System.Net;

namespace ChamberAppel.Api.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class CRCsController : ControllerBase
    {
        private readonly ICRCService _service;
        public CRCsController(ICRCService service)
        {
            _service = service;
        }

        #region CRUD

        [HttpGet("GetAllAsync")]
        public async Task<ApiResponse<List<CRC>>> GetAllAsync()
        {
            var res = await _service.GetAllAsync();

            if (!res.Any())
                return new ApiResponse<List<CRC>> { StatusCode = HttpStatusCode.NoContent };

            return new ApiResponse<List<CRC>> { StatusCode = HttpStatusCode.OK, Data = res };
        }

        [HttpGet("GetByIdAsync/{id}")]
        public async Task<ApiResponse<CRC>> GetByIdAsync(Guid id)
        {
            var r = await _service.GetByIdAsync(id);
            if (r == null)
            {
                return new ApiResponse<CRC> { StatusCode = HttpStatusCode.NotFound };
            }
            return new ApiResponse<CRC> { StatusCode = HttpStatusCode.OK, Data = r };
        }

        [HttpPost("CreateAsync")]
        public async Task<ApiResponse<CRC>> CreateAsync(CRC model)
        {
            var validation = Validation(model);
            if (validation.Count != 0)
            {
                return new ApiResponse<CRC> { ValidationErrors = validation, StatusCode = HttpStatusCode.BadRequest };
            }
            var r = await _service.CreateAsync(model);

            if (r == null)
                return new ApiResponse<CRC> { StatusCode = HttpStatusCode.BadRequest };

            return new ApiResponse<CRC> { Data = r, StatusCode = HttpStatusCode.OK };
        }

        [HttpPut("UpdateAsync")]
        public async Task<ApiResponse<CRC>> UpdateAsync(CRC model)
        {
            var validation = Validation(model);
            if (validation.Count != 0)
            {
                return new ApiResponse<CRC> { ValidationErrors = validation, StatusCode = HttpStatusCode.BadRequest };
            }
            var r = await _service.UpdateAsync(model);
            if (r == null)
                return new ApiResponse<CRC> { StatusCode = HttpStatusCode.BadRequest };
            return new ApiResponse<CRC> { Data = r, StatusCode = HttpStatusCode.OK };
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

            //TODO : add filtred data 

            var data = await _service.GetAllAsync();
            return this.DownloadAsExcelFile(data, Const.List_Permissions);
        }

        #endregion CRUD

        #region validation
        private List<FluentValidationErrors> Validation(CRC model)
        {
            CRCValidation validationRules = new CRCValidation();
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
