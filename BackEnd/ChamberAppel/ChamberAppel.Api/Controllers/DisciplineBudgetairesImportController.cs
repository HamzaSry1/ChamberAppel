using ChamberAppel.Application.Messages;
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
    public class DisciplineBudgetairesImportController : ControllerBase
    {
        private readonly IDisciplineBudgetaireImportService _service;
        public DisciplineBudgetairesImportController(IDisciplineBudgetaireImportService service)
        {
            _service = service;
        }

        [HttpPost("Importe")]
        public async Task<ApiResponse<bool>> Importe(DtoUploadFile request)
        {
            var res = await _service.Upload(request.file, request.UpdatedBy);

            if (res == true)
                return new ApiResponse<bool> { StatusCode = HttpStatusCode.OK };
            else
                return new ApiResponse<bool> { StatusCode = HttpStatusCode.BadRequest };
        }

        [HttpPost("GetAllValideData")]
        public async Task<DatatableResponse<DisciplineBudgetaireTemp>> GetAllValideData(DtoPagination pagination)
            => await _service.GetAllValideData(pagination);

        [HttpPost("GetAllErrorsData")]
        public async Task<DatatableResponse<DisciplineBudgetaireTemp>> GetAllErrorsData(DtoPagination pagination)
            => await _service.GetAllErrorsData(pagination);

        [HttpPost("Analyse")]
        public async Task<ApiResponse<bool>> Analyse()
        {
            var res = await _service.Analyse();
            return new ApiResponse<bool> { Data = res, StatusCode = HttpStatusCode.OK };
        }

        [HttpPost("Fusionner")]
        public async Task<ApiResponse<bool>> Fusionner()
        {
            var res = await _service.Fusionner();
            return new ApiResponse<bool> { Data = res, StatusCode = HttpStatusCode.OK };
        }

        [HttpPost("Exporter")]
        public async Task<IActionResult> Exporter()
        {
            var res = await _service.GetAllErrorsData(null);
            return this.DownloadAsExcelFile(res.Data, Const.List_Discipline_Budgeitaires_With_Errors);
        }
    }
}
