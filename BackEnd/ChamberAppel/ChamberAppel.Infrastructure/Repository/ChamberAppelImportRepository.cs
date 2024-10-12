using ChamberAppel.Domain.DTOs;
using ChamberAppel.Domain.Models;
using ChamberAppel.Domain.Repository;
using ChamberAppel.Infrastructure.Data;

namespace ChamberAppel.Infrastructure.Repository
{
    public class ChamberAppelImportRepository : IChamberAppelImportRepository
    {
        private readonly ApplicationDbContext _context;
        public ChamberAppelImportRepository(ApplicationDbContext context)
        {
            _context = context;
        }

        public Task<bool> Delete()
        {
            throw new NotImplementedException();
        }

        public Task<bool> Fusionner()
        {
            throw new NotImplementedException();
        }

        public Task<DatatableResponse<ChamberAppeleTemp>> GetAllErrorsData(DtoPagination pagination)
        {
            throw new NotImplementedException();
        }

        public Task<DatatableResponse<ChamberAppeleTemp>> GetAllValideData(DtoPagination pagination)
        {
            throw new NotImplementedException();
        }

        public Task<bool> Insert(List<ChamberAppeleTemp> list)
        {
            throw new NotImplementedException();
        }

        public Task<bool> Valider()
        {
            throw new NotImplementedException();
        }
    }
}
