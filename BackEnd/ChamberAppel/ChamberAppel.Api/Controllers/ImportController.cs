using ChamberAppel.Application.Messages;
using ChamberAppel.Domain.DTOs;
using ChamberAppel.Domain.Models;
using ChamberAppel.Domain.Enums;
using ChamberAppel.Domain.Services;
using Helpers.Api;
using Microsoft.AspNetCore.Mvc;
using System.Net;

namespace ChamberAppel.Api.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class ImportController : ControllerBase
    {
        private readonly IDisciplineBudgetaireImportService _serviceDisciplineBudgetaire;
        private readonly IRequeteAppelImportService _serviceChamberAppel;

        public ImportController(
            IDisciplineBudgetaireImportService serviceDisciplineBudgetaire,
            IRequeteAppelImportService serviceChamberAppel)
        {
            _serviceDisciplineBudgetaire = serviceDisciplineBudgetaire;
            _serviceChamberAppel = serviceChamberAppel;
        }

        [HttpPost("Importe")]
        public async Task<ApiResponse<bool>> Importe(DtoUploadFile request)
        {
            var result = request.FileType == EnumFileType.RequeteAppele
                ? await _serviceChamberAppel.Upload(request.file, request.UpdatedBy)
                : await _serviceDisciplineBudgetaire.Upload(request.file, request.UpdatedBy);

            return new ApiResponse<bool>
            {
                StatusCode = result ? HttpStatusCode.OK : HttpStatusCode.BadRequest
            };
        }

        [HttpPost("GetAllDisciplineBudgetaireValide")]
        public async Task<DatatableResponse<DisciplineBudgetaireTemp>> GetAllDisciplineBudgetaireValide(DtoPagination pagination)
            => await _serviceDisciplineBudgetaire.GetAllValideData(pagination);

        [HttpPost("GetAllDisciplineBudgetaireErrors")]
        public async Task<DatatableResponse<DisciplineBudgetaireTemp>> GetAllDisciplineBudgetaireErrors(DtoPagination pagination)
            => await _serviceDisciplineBudgetaire.GetAllErrorsData(pagination);

        [HttpPost("GetAllRequeteAppelValide")]
        public async Task<DatatableResponse<RequeteAppelTemp>> GetAllRequeteAppelValide(DtoPagination pagination)
            => await _serviceChamberAppel.GetAllValideData(pagination);

        [HttpPost("GetAllRequeteAppelErrors")]
        public async Task<DatatableResponse<RequeteAppelTemp>> GetAllRequeteAppelErrors(DtoPagination pagination)
            => await _serviceChamberAppel.GetAllErrorsData(pagination);

        [HttpPost("Analyse")]
        public async Task<ApiResponse<bool>> Analyse(EnumFileType fileType)
        {
            bool result;
            if (fileType == EnumFileType.RequeteAppele)
            {
                result = await _serviceChamberAppel.Fusionner();
            }
            else
            {
                result = await _serviceDisciplineBudgetaire.Analyse();
            }

            return new ApiResponse<bool>
            {
                Data = result,
                StatusCode = HttpStatusCode.OK
            };
        }

        [HttpPost("Fusionner")]
        public async Task<ApiResponse<bool>> Fusionner(EnumFileType fileType)
        {
            bool result;
            if (fileType == EnumFileType.RequeteAppele)
            {
                result = await _serviceChamberAppel.Fusionner();
            }
            else
            {
                result = await _serviceDisciplineBudgetaire.Fusionner();
            }

            return new ApiResponse<bool>
            {
                Data = result,
                StatusCode = HttpStatusCode.OK
            };
        }

        [HttpPost("Exporter")]
        public async Task<IActionResult> Exporter(EnumFileType fileType)
        {
            if (fileType == EnumFileType.RequeteAppele)
            {
                var response = await _serviceChamberAppel.GetAllErrorsData(null);
                return this.DownloadAsExcelFile(response.Data, Const.List_Chamber_Appel_With_Errors);
            }
            else
            {
                var response = await _serviceDisciplineBudgetaire.GetAllErrorsData(null);
                return this.DownloadAsExcelFile(response.Data, Const.List_Discipline_Budgeitaires_With_Errors);
            }
        }
    }
}
