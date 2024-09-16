namespace ChamberAppel.Api.Config
{
    public static class CROSService
    {
        public static IServiceCollection RegisterCROS(this IServiceCollection services, IConfiguration configuration)
        {
            //TODO : add CROS policy
            services.AddCors(options =>
            {
                options.AddPolicy("AllowOnlyChamberAppel",
                    builder =>
                    {
                        builder.AllowAnyOrigin()
                               .AllowAnyHeader()
                               .AllowAnyMethod();
                    });
            });

            return services;
        }
    }
}
