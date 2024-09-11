using AspNetCoreRateLimit;

namespace ChamberAppel.Api.Config
{
    public static class RateLimitService
    {
        public static IServiceCollection RegisterRateLimit(this IServiceCollection services)
        {
            // Add memory cache services (required for AspNetCoreRateLimit)
            services.AddMemoryCache();

            // Rate limiting can protect  API from brute-force attacks or abuse by limiting the number of requests allowed from a single IP.
            services.Configure<IpRateLimitOptions>(options =>
            {
                options.GeneralRules = new List<RateLimitRule>
                {
                    new RateLimitRule
                    {
                        Period = "1m",
                        Limit = 10 // Limit to 10 requests per minute per IP
                    }
                };
            });

            services.AddSingleton<IRateLimitConfiguration, RateLimitConfiguration>();
            services.AddInMemoryRateLimiting();

            return services;
        }
    }
}
