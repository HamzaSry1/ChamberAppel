namespace ChamberAppel.Api.Config
{
    public static class CROSService
    {
        public static IServiceCollection RegisterCROS(this IServiceCollection services)
        {
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
