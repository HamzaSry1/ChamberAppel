using ChamberAppel.Domain.DTOs;
using ChamberAppel.Domain.Repository;
using ChamberAppel.Infrastructure.Data;
using Microsoft.EntityFrameworkCore;

namespace ChamberAppel.Infrastructure.Repository
{
    public abstract class BaseRepository<T> : IBaseRepository<T> where T : class
    {
        private readonly ApplicationDbContext _database;

        public BaseRepository(ApplicationDbContext database)
        {
            _database = database;
        }

        public virtual async Task<T> CreateAsync(T entity)
        {
            if (entity == null)
            {
                throw new ArgumentNullException(nameof(entity));
            }

            await _database.Set<T>().AddAsync(entity);
            await _database.SaveChangesAsync();
            return entity;
        }

        public virtual async Task<T> UpdateAsync(T entity)
        {
            if (entity == null)
            {
                throw new ArgumentNullException(nameof(entity));
            }

            _database.Set<T>().Update(entity);
            await _database.SaveChangesAsync();
            return entity;
        }

        public virtual async Task<T?> DeleteAsync(T entity)
        {
            if (entity == null)
            {
                throw new ArgumentNullException(nameof(entity));
            }

            var idProperty = typeof(T).GetProperty("Id");
            if (idProperty == null || idProperty.PropertyType != typeof(Guid))
            {
                throw new InvalidOperationException("Entity does not have a valid Id property.");
            }

            var id = (Guid)idProperty.GetValue(entity)!;
            return await DeleteByIdAsync(id);
        }

        public virtual async Task<T?> DeleteByIdAsync(Guid id)
        {
            var entity = await GetByIdAsync(id);
            if (entity == null)
            {
                return null;
            }

            _database.Set<T>().Remove(entity);
            await _database.SaveChangesAsync();
            return entity;
        }

        public virtual async Task<List<T>> GetAllAsync()
        {
            return await _database.Set<T>().ToListAsync();
        }

        public virtual async Task<T?> GetByIdAsync(Guid id)
        {
            return await _database.Set<T>().FindAsync(id);
        }
    }
}
