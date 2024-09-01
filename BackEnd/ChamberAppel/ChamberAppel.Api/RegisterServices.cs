using ChamberAppel.Application;
using ChamberAppel.Infrastructure;

namespace ChamberAppel.Api
{
    public static class RegisterServices
    {
        public static IServiceCollection RegisterApi(this IServiceCollection service, IConfiguration configuration)
        {
            service.RegisterApplication()
                   .RegisterInfrastructure(configuration);
            return service;
        }
    }
}
