using Microsoft.Extensions.DependencyInjection;

namespace ChamberAppel.Application
{
    public static class RegisterServices
    {
        public static IServiceCollection RegisterApplication(this IServiceCollection service)
        {
            return service;
        }
    }
}
