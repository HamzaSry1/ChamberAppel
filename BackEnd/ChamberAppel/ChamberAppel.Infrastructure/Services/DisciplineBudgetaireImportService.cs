using ChamberAppel.Domain.DTOs;
using ChamberAppel.Domain.Models;
using ChamberAppel.Domain.Repository;
using ChamberAppel.Domain.Services;
using Helpers.Excel;
using Microsoft.AspNetCore.Http;

namespace ChamberAppel.Infrastructure.Services
{
    public class DisciplineBudgetaireImportService : IDisciplineBudgetaireImportService
    {
        private readonly IDisciplineBudgetaireImportRepository _repository;

        public DisciplineBudgetaireImportService(IDisciplineBudgetaireImportRepository repository)
        {
            _repository = repository;
        }

        public async Task<bool> Analyse()
        {
            var data = await GetAllErrorsData(null);
            return data.RecordTotal > 0;
        }

        public async Task<bool> Fusionner(string updatedBy) => await _repository.Fusionner(updatedBy);

        public async Task<bool> Upload(IFormFile file, string updatedBy)
        {
            // Convert Execl to datatable
            var dataTable = ImportHelpers.ReadUploadFileData(file);

            // Convert DataTable to List 
            var list = ImportHelpers.DataTableToList<DisciplineBudgetaireTemp>(dataTable);

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

            // Verify if data valid or not 
            return await Analyse();
        }

        public async Task<DatatableResponse<DisciplineBudgetaireTemp>> GetAllErrorsData(DtoPagination pagination)
            => await _repository.GetAllErrorsData(pagination);
        public async Task<DatatableResponse<DisciplineBudgetaireTemp>> GetAllValideData(DtoPagination pagination)
            => await _repository.GetAllValideData(pagination);
    }
}
