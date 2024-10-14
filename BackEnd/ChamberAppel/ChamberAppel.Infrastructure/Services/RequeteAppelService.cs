using ChamberAppel.Domain.DTOs;
using ChamberAppel.Domain.Models;
using ChamberAppel.Domain.Repository;
using ChamberAppel.Domain.Services;

namespace ChamberAppel.Infrastructure.Services
{
    public class RequeteAppelService : BaseService<RequeteAppel>, IRequeteAppelService
    {
        private readonly IRequeteAppelRepository _repository;
        public RequeteAppelService(IRequeteAppelRepository repository) : base(repository)
        {
            _repository = repository;
        }

        public async Task<DatatableResponse<RequeteAppel>> GetAllAsync(DtoFiltreRequeteAppele? filter, DtoPagination? pagination)
        {
            return await _repository.GetAllAsync(filter, pagination);
        }
    }
}
