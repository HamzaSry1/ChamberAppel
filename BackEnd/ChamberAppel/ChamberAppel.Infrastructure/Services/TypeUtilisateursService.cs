using ChamberAppel.Domain.DTOs;
using ChamberAppel.Domain.Models;
using ChamberAppel.Domain.Repository;
using ChamberAppel.Domain.Services;

namespace ChamberAppel.Infrastructure.Services
{
    public class TypeUtilisateursService : BaseService<TypeUtilisateur>, ITypeUtilisateursService
    {
        private readonly ITypeUtilisateursRepository _repository;
        public TypeUtilisateursService(ITypeUtilisateursRepository repository) : base(repository)
        {
            _repository = repository;
        }

        public async Task<DatatableResponse<TypeUtilisateur>> GetAllFiltredAsync(DtoFiltreMotsCle? filter, DtoPagination? pagination)
            => await _repository.GetAllFiltredAsync(filter, pagination);
    }
}
