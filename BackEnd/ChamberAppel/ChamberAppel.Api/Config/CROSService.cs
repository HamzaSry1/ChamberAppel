namespace ChamberAppel.Api.Config
{
    public static class CROSService
    {
        public static IServiceCollection RegisterCROS(this IServiceCollection services, IConfiguration configuration)
        {
            string allowedOrigins = configuration.GetValue<string>("AllowedOrigins");

            services.AddCors(options =>
            {
                options.AddPolicy("AllowOnlyChamberAppel",
                    builder =>
                    {
                        builder.WithOrigins(allowedOrigins)
                               .AllowAnyHeader()
                               .AllowAnyMethod();
                    });
            });

            return services;
        }
    }
}
