using ChamberAppel.Domain.DTOs;
using ChamberAppel.Domain.Models;
using ChamberAppel.Domain.Repository;
using ChamberAppel.Domain.Services;

namespace ChamberAppel.Infrastructure.Services
{
    public class CRCService : BaseService<CRC>, ICRCService
    {
        private readonly ICRCRepository _repository;
        public CRCService(ICRCRepository repository) : base(repository)
        {
            _repository = repository;
        }

        public async Task<DatatableResponse<CRC>> GetAllFiltredAsync(DtoFiltreMotsCle? filter, DtoPagination? pagination)
            => await _repository.GetAllFiltredAsync(filter, pagination);
    }
}
