using ChamberAppel.Application.Messages;
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
    public class PersonnePhysiquesController : ControllerBase
    {
        private readonly IPersonnePhysiqueService _service;

        public PersonnePhysiquesController(IPersonnePhysiqueService service)
        {
            _service = service;
        }

        #region CRUD
        [HttpGet("GetAllAsync")]
        public async Task<ApiResponse<List<PersonnePhysique>>> GetAllAsync()
        {
            var r = await _service.GetAllAsync();
            if (r.Any())
            {
                return new ApiResponse<List<PersonnePhysique>> { StatusCode = HttpStatusCode.OK, Data = r };
            }
            return new ApiResponse<List<PersonnePhysique>> { StatusCode = HttpStatusCode.NoContent };
        }

        [HttpGet("GetByIdAsync/{id}")]
        public async Task<ApiResponse<PersonnePhysique>> GetByIdAsync(Guid id)
        {
            var r = await _service.GetByIdAsync(id);
            if (r != null)
                return new ApiResponse<PersonnePhysique> { StatusCode = HttpStatusCode.OK, Data = r };
            return new ApiResponse<PersonnePhysique> { StatusCode = HttpStatusCode.NoContent };
        }

        [HttpPost("CreateAsync")]
        public async Task<ApiResponse<PersonnePhysique>> CreateAsync(PersonnePhysique data)
        {
            var validation = Validation(data);
            if (validation.Count != 0)
            {
                return new ApiResponse<PersonnePhysique> { ValidationErrors = validation, StatusCode = HttpStatusCode.BadRequest };
            }
            var r = await _service.CreateAsync(data);
            if (r == null)
                return new ApiResponse<PersonnePhysique> { StatusCode = HttpStatusCode.Conflict };
            return new ApiResponse<PersonnePhysique> { StatusCode = HttpStatusCode.OK, Data = r, Message = Const.Created };
        }

        [HttpPut("UpdateAsync")]
        public async Task<ApiResponse<PersonnePhysique>> UpdateAsync(PersonnePhysique model)
        {
            var validation = Validation(model);
            if (validation.Count != 0)
            {
                return new ApiResponse<PersonnePhysique> { ValidationErrors = validation, StatusCode = HttpStatusCode.BadRequest };
            }
            var r = await _service.UpdateAsync(model);
            if (r == null)
                return new ApiResponse<PersonnePhysique> { StatusCode = HttpStatusCode.Conflict };
            return new ApiResponse<PersonnePhysique> { StatusCode = HttpStatusCode.OK, Data = r, Message = Const.Updated };
        }

        [HttpDelete("DeleteAsync/{Id}")]
        public async Task<ApiResponse<bool>> DeleteAsync(Guid Id)
        {
            var res = await _service.DeleteByIdAsync(Id);
            if (res == null)
                return new ApiResponse<bool> { StatusCode = HttpStatusCode.NoContent };
            return new ApiResponse<bool> { StatusCode = HttpStatusCode.OK, Message = Const.Deleted };
        }

        #endregion CRUD
        #region validation
        private List<FluentValidationErrors> Validation(PersonnePhysique model)
        {
            PersonnePhysiqueValidation validationRules = new PersonnePhysiqueValidation();
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
