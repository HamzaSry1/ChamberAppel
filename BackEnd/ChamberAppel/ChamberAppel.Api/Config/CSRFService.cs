namespace ChamberAppel.Api.Config
{
    public static class CSRFService
    {
        public static IServiceCollection RegisterCSRF(this IServiceCollection services)
        {
            // Cross-Site Request Forgery (CSRF) Protection
            services.AddAntiforgery(options =>
            {
                options.HeaderName = "X-XSRF-TOKEN";
            });

            return services;
        }
    }
}
