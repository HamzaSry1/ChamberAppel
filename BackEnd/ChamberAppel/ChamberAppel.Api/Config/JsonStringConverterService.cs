using System.Text.Json.Serialization;

namespace ChamberAppel.Api.Config
{
    public static class JsonStringConverterService
    {
        public static IServiceCollection RegisterJsonStringFormatter(this IServiceCollection services)
        {
            services.AddControllers()
                .AddJsonOptions(options =>
                {
                    options.JsonSerializerOptions.Converters.Add(new JsonStringEnumConverter());
                });

            return services;
        }
    }
}
