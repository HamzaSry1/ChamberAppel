using ChamberAppel.Domain.DTOs;
using ChamberAppel.Domain.Models;
using ChamberAppel.Domain.Repository;
using ChamberAppel.Domain.Services;

namespace ChamberAppel.Infrastructure.Services
{
    public class ChamberAppelService : BaseService<ChamberAppele>, IChamberAppelService
    {
        private readonly IChamberAppelRepository _repository;
        public ChamberAppelService(IChamberAppelRepository repository) : base(repository)
        {
            _repository = repository;
        }

        public async Task<DatatableResponse<ChamberAppele>> GetAllAsync(DtoFiltreChamberAppele? filter, DtoPagination? pagination)
        {
            return await _repository.GetAllAsync(filter, pagination);
        }
    }
}
