using ChamberAppel.Domain.DTOs;
using ChamberAppel.Domain.Models;
using ChamberAppel.Domain.Repository;
using ChamberAppel.Infrastructure.Data;

namespace ChamberAppel.Infrastructure.Repository
{
    public class RequeteAppelImportRepository : IRequeteAppelImportRepository
    {
        private readonly ApplicationDbContext _context;
        public RequeteAppelImportRepository(ApplicationDbContext context)
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

        public Task<DatatableResponse<RequeteAppelTemp>> GetAllErrorsData(DtoPagination pagination)
        {
            throw new NotImplementedException();
        }

        public Task<DatatableResponse<RequeteAppelTemp>> GetAllValideData(DtoPagination pagination)
        {
            throw new NotImplementedException();
        }

        public Task<bool> Insert(List<RequeteAppelTemp> list)
        {
            throw new NotImplementedException();
        }

        public Task<bool> Valider()
        {
            throw new NotImplementedException();
        }
    }
}
