using ChamberAppel.Domain.DTOs;
using ChamberAppel.Domain.Repository;
using ChamberAppel.Domain.Services;

namespace ChamberAppel.Infrastructure.Services
{
    public abstract class BaseService<T> : IBaseService<T> where T : class
    {
        private readonly IBaseRepository<T> _repository;
        public BaseService(IBaseRepository<T> repository)
        {
            _repository = repository;
        }

        public virtual async Task<T> CreateAsync(T entity)
        => await _repository.CreateAsync(entity);

        public virtual async Task<T> DeleteAsync(T entity)
        => await _repository.DeleteAsync(entity);

        public virtual async Task<T> DeleteByIdAsync(Guid id) => await _repository.DeleteByIdAsync(id);

        public virtual async Task<List<T>> GetAllAsync() => await _repository.GetAllAsync();

        public virtual Task<List<T>> GetAllFiltredAsync(T filter, DtoPagination pagination) => _repository.GetAllFiltredAsync(filter, pagination);

        public virtual Task<T> GetByIdAsync(Guid id) => _repository.GetByIdAsync(id);

        public virtual async Task<T> UpdateAsync(T entity)
        => await _repository.UpdateAsync(entity);
    }
}
