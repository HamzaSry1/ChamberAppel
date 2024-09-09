using ChamberAppel.Application.Services;
using Microsoft.AspNetCore.Http;
using System.Security.Claims;

namespace ChamberAppel.Infrastructure.Services
{
    public class UserSessionService : IUserSessionService
    {
        private readonly IHttpContextAccessor _httpContext;

        public UserSessionService(IHttpContextAccessor httpContextAccessor)
        {
            _httpContext = httpContextAccessor ?? throw new ArgumentNullException(nameof(httpContextAccessor));
        }

        public async Task<Guid> GetCurrentUserIdAsync()
        {
            var userId = _httpContext.HttpContext.User?.FindFirst(ClaimTypes.NameIdentifier)?.Value;

            if (userId == null)
            {
                return Guid.Empty;
            }

            return Guid.Parse(userId);
        }

        public async Task<string?> GetCurrentUserNameAsync()
        {
            var userName = _httpContext.HttpContext.User?.Identity?.Name;

            return userName;
        }
    }

}
