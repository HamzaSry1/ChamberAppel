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
        {
            return await _repository.CreateAsync(entity);
        }

        public async Task<T> DeleteAsync(T entity)
        {
            return await _repository.DeleteAsync(entity);
        }

        public async Task<T> DeleteByIdAsync(Guid id)
        {
            return await _repository.DeleteByIdAsync(id);
        }

        public async Task<List<T>> GetAllAsync()
        {
            return await _repository.GetAllAsync();
        }

        public Task<List<T>> GetAllFiltredAsync(T filter, DtoPagination pagination)
        {
            return _repository.GetAllFiltredAsync(filter, pagination);
        }

        public Task<T> GetByIdAsync(Guid id)
        {
            return _repository.GetByIdAsync(id);
        }

        public async Task<T> UpdateAsync(T entity)
        {
            return await _repository.UpdateAsync(entity);
        }
    }
}
