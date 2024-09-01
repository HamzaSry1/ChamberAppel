using Microsoft.Extensions.DependencyInjection;

namespace ChamberAppel.Domain
{
    public static class RegisterServices
    {
        public static IServiceCollection RegisterDomain(this IServiceCollection service)
        {
            return service;
        }
    }
}
