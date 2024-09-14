using Microsoft.AspNetCore.CookiePolicy;

namespace ChamberAppel.Api.Config
{
    public static class MiddlewareExtensions
    {
        public static IApplicationBuilder UseSecurityHeaders(this IApplicationBuilder app)
        {
            return app.Use(async (context, next) =>
            {
                context.Response.Headers.Add("X-Frame-Options", "DENY");
                context.Response.Headers.Add("X-Content-Type-Options", "nosniff");
                context.Response.Headers.Add("X-XSS-Protection", "1; mode=block");
                context.Response.Headers.Add("Strict-Transport-Security", "max-age=31536000; includeSubDomains; preload");
                context.Response.Headers.Add("Referrer-Policy", "no-referrer");
                await next();
            });
        }

        public static IApplicationBuilder UseCspHeaders(this IApplicationBuilder app)
        {
            return app.Use(async (context, next) =>
            {
                context.Response.Headers.Add("Content-Security-Policy", "default-src 'self'; script-src 'self'; style-src 'self'; img-src 'self'; font-src 'self'");
                await next();
            });
        }

        public static IApplicationBuilder UseCsrfProtection(this IApplicationBuilder app)
        {
            return app.Use(next => context =>
            {
                if (string.Equals(context.Request.Method, "POST", StringComparison.OrdinalIgnoreCase) &&
                    context.Request.Headers["X-XSRF-TOKEN"].FirstOrDefault() != null)
                {
                    // CSRF token validation logic
                }
                return next(context);
            });
        }

        public static IApplicationBuilder UseSecureCookies(this IApplicationBuilder app)
        {
            return app.UseCookiePolicy(new CookiePolicyOptions
            {
                Secure = CookieSecurePolicy.Always,
                HttpOnly = HttpOnlyPolicy.Always,
                MinimumSameSitePolicy = SameSiteMode.Strict
            });
        }

        public static IApplicationBuilder UseCorsPolicy(this IApplicationBuilder app)
        {
            //return app.UseCors("AllowOnlyChamberAppel");

            return app.UseCors(x => x
                .AllowAnyOrigin()
                .AllowAnyMethod()
                .AllowAnyHeader());
        }

        public static IApplicationBuilder UseHstsInProduction(this IApplicationBuilder app, IWebHostEnvironment env)
        {
            if (!env.IsDevelopment())
            {
                app.UseHsts();
            }
            return app;
        }

        public static IApplicationBuilder UseSwaggerInDevelopment(this IApplicationBuilder app, IWebHostEnvironment env)
        {
            if (env.IsDevelopment())
            {
                app.UseSwagger();
                app.UseSwaggerUI();
            }
            return app;
        }
    }
}
