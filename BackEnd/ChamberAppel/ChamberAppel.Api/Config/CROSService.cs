namespace ChamberAppel.Api.Config
{
    public static class CROSService
    {
        public static IServiceCollection RegisterCROS(this IServiceCollection services, IConfiguration configuration)
        {
            //TODO : add CROS policy

            //string allowedOrigins = configuration.GetValue<string>("AllowedOrigins");

            //services.AddCors(options =>
            //{
            //    options.AddPolicy("AllowOnlyChamberAppel",
            //        builder =>
            //        {
            //            builder.AllowAnyOrigin()
            //                   .AllowAnyHeader()
            //                   .AllowAnyMethod();
            //        });
            //});

            return services;
        }
    }
}
