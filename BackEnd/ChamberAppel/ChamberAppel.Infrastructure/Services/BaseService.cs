using ChamberAppel.Domain.DTOs;
using ChamberAppel.Domain.Services;
using ChamberAppel.Infrastructure.Repository;

namespace ChamberAppel.Infrastructure.Services
{
    public class BaseService<T> : IBaseService<T> where T : class
    {
        private readonly BaseRepository<T> _repository;
        public BaseService(BaseRepository<T> repository)
        {
            _repository = repository;
        }

        public async Task<T> CreateAsync(T entity)
        => await _repository.CreateAsync(entity);

        public async Task<T> DeleteAsync(T entity)
        => await _repository.DeleteAsync(entity);

        public async Task<T> DeleteByIdAsync(Guid id) => await _repository.DeleteByIdAsync(id);

        public async Task<List<T>> GetAllAsync() => await _repository.GetAllAsync();

        public Task<List<T>> GetAllFiltredAsync(T filter, DtoPagination pagination) => _repository.GetAllFiltredAsync(filter, pagination);

        public Task<T> GetByIdAsync(Guid id) => _repository.GetByIdAsync(id);

        public async Task<T> UpdateAsync(T entity)
        => await _repository.UpdateAsync(entity);
    }
}
