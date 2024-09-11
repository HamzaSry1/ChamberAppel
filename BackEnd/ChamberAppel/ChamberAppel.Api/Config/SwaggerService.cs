using Microsoft.OpenApi.Models;

namespace ChamberAppel.Api.Config
{
    public static class SwaggerService
    {
        public static IServiceCollection RegisterSwagger(this IServiceCollection services)
        {
            services.AddSwaggerGen(options =>
            {
                options.SwaggerDoc("v1", new OpenApiInfo
                {
                    Version = "v1",
                    Title = "Chamber d'appel",
                    Description = "Ceci est une documentation d'API Swagger pour la gestion de la Chambre d'Appel de la Cour des Comptes.",
                    Contact = new OpenApiContact
                    {
                        Name = "Cour des comptes",
                        Url = new Uri("https://www.courdescomptes.ma")
                    }
                });
            });

            return services;
        }
    }
}
