namespace ChamberAppel.Application.Services
{
    public interface IUserSessionService
    {
        Task<Guid> GetCurrentUserIdAsync();
        Task<string?> GetCurrentUserNameAsync();
    }
}
