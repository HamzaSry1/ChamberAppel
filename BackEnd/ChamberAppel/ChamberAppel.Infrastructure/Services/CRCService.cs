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
    }
}
