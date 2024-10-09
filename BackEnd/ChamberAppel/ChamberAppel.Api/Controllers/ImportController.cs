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
        private readonly IChamberAppelImportService _serviceChamberAppel;
        public ImportController(IDisciplineBudgetaireImportService serviceDisciplineBudgetaire
            , IChamberAppelImportService serviceChamberAppel)
        {
            _serviceDisciplineBudgetaire = _serviceDisciplineBudgetaire;
            _serviceChamberAppel = serviceChamberAppel;
        }

        [HttpPost("Importe")]
        public async Task<ApiResponse<bool>> Importe(DtoUploadFile request)
        {
            if (request.FileType == EnumFileType.ChamberAppel)
            {
                var res = await _serviceDisciplineBudgetaire.Upload(request.file, request.UpdatedBy);
            }
            else
                return new ApiResponse<bool> { StatusCode = HttpStatusCode.BadRequest };



                return new ApiResponse<bool> { StatusCode = HttpStatusCode.OK };
            else
                return new ApiResponse<bool> { StatusCode = HttpStatusCode.BadRequest };
        }

        [HttpPost("GetAllValideData")]
        public async Task<DatatableResponse<DisciplineBudgetaireTemp>> GetAllValideData(DtoPagination pagination)
            => await _serviceDisciplineBudgetaire.GetAllValideData(pagination);

        [HttpPost("GetAllErrorsData")]
        public async Task<DatatableResponse<DisciplineBudgetaireTemp>> GetAllErrorsData(DtoPagination pagination)
            => await _serviceDisciplineBudgetaire.GetAllErrorsData(pagination);

        [HttpPost("Analyse")]
        public async Task<ApiResponse<bool>> Analyse(EnumFileType fileType)
        {
            if (fileType == EnumFileType.ChamberAppel)
            {
                var res = await _serviceChamberAppel.Fusionner();
                return new ApiResponse<bool> { Data = res, StatusCode = HttpStatusCode.OK };
            }
            else
            {
                var res = await _serviceDisciplineBudgetaire.Analyse();
                return new ApiResponse<bool> { Data = res, StatusCode = HttpStatusCode.OK };
            }
        }

        [HttpPost("Fusionner")]
        public async Task<ApiResponse<bool>> Fusionner(EnumFileType fileType)
        {
            if (fileType == EnumFileType.ChamberAppel)
            {
                var res = await _serviceChamberAppel.Fusionner();
                return new ApiResponse<bool> { Data = res, StatusCode = HttpStatusCode.OK };
            }
            else
            {
                var res = await _serviceDisciplineBudgetaire.Fusionner();
                return new ApiResponse<bool> { Data = res, StatusCode = HttpStatusCode.OK };
            }
        }

        [HttpPost("Exporter")]
        public async Task<IActionResult> Exporter(EnumFileType fileType)
        {
            if (fileType == EnumFileType.ChamberAppel)
            {
                var res = await _serviceChamberAppel.GetAllErrorsData(null);
                return this.DownloadAsExcelFile(res.Data, Const.List_Chamber_Appel_With_Errors);
            }
            else
            {
                var res = await _serviceDisciplineBudgetaire.GetAllErrorsData(null);
                return this.DownloadAsExcelFile(res.Data, Const.List_Discipline_Budgeitaires_With_Errors);
            }
        }
    }
}
