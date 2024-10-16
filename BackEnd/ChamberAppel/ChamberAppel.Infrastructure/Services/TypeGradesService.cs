using ChamberAppel.Domain.DTOs;
using ChamberAppel.Domain.Models;
using ChamberAppel.Domain.Repository;
using ChamberAppel.Domain.Services;

namespace ChamberAppel.Infrastructure.Services
{
    public class TypeGradesService : BaseService<TypeGrade>, ITypeGradesService
    {
        private readonly ITypeGradesRepository _repository;
        public TypeGradesService(ITypeGradesRepository repository) : base(repository)
        {
            _repository = repository;
        }

        public async Task<DatatableResponse<TypeGrade>> GetAllFiltredAsync(DtoFiltreMotsCle? filter, DtoPagination? pagination)
            => await _repository.GetAllFiltredAsync(filter, pagination);

    }
}
