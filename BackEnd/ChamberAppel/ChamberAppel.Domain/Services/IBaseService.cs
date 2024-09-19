using ChamberAppel.Domain.DTOs;

namespace ChamberAppel.Domain.Services
{
    public interface IBaseService<T> where T : class
    {
        //Task<List<T>> GetAllFiltredAsync(T filter, DtoPagination pagination);
        Task<List<T>> GetAllAsync();
        Task<T> GetByIdAsync(Guid id);
        Task<T> CreateAsync(T entity);
        Task<T> UpdateAsync(T entity);
        Task<T> DeleteAsync(T entity);
        Task<T> DeleteByIdAsync(Guid id);
    }
}
