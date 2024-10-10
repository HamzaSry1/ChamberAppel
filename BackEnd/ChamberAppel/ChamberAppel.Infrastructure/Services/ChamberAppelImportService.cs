using ChamberAppel.Domain.DTOs;
using ChamberAppel.Domain.Models;
using ChamberAppel.Domain.Repository;
using ChamberAppel.Domain.Services;
using Helpers.Excel;
using Microsoft.AspNetCore.Http;

namespace ChamberAppel.Infrastructure.Services
{
    class ChamberAppelImportService : IChamberAppelImportService
    {

        private readonly IChamberAppelImportRepository _repository;

        public ChamberAppelImportService(IChamberAppelImportRepository repository)
        {
            _repository = repository;
        }

        public async Task<bool> Analyse()
        {
            var data = await GetAllErrorsData(null);
            return data.RecordTotal > 0;
        }

        public async Task<bool> Fusionner() => await _repository.Fusionner();

        public async Task<DatatableResponse<ChamberAppeleTemp>> GetAllErrorsData(DtoPagination pagination)
            => await _repository.GetAllErrorsData(pagination);

        public async Task<DatatableResponse<ChamberAppeleTemp>> GetAllValideData(DtoPagination pagination)
            => await _repository.GetAllValideData(pagination);

        public async Task<bool> Upload(IFormFile file, string updatedBy)
        {
            try
            {
                // Convert Execl to datatable
                var dataTable = ImportHelpers.ReadUploadFileData(file);

                // Convert DataTable to List 
                var list = ImportHelpers.DataTableToList<ChamberAppeleTemp>(dataTable);

                // Initialize DateTime once instead of per item
                var currentTime = DateTime.Now.ToString("dd/MM/yyyy H:m:s");

                int number = 1;
                foreach (var item in list)
                {
                    item.RowNumber = number++;
                    item.UpdatedBy = updatedBy;
                    item.UpdateTime = currentTime;
                }

                // Save uploaded Data
                await _repository.Insert(list);

                // validate Imporatation formats
                await _repository.Valider();
            }
            catch (Exception)
            {
                return false;
            }
            return true;
        }
    }
}
