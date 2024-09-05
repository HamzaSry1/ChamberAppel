using ChamberAppel.Domain.DTOs;
using ChamberAppel.Domain.Repository;
using ChamberAppel.Domain.Services;

namespace ChamberAppel.Infrastructure.Services
{
    public class BaseService<T> : IBaseService<T> where T : class
    {
        private readonly IBaseRepository<T> _repository;
        public BaseService(IBaseRepository<T> repository)
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
