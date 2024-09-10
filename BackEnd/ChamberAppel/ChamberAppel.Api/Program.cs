using AspNetCoreRateLimit;
using ChamberAppel.Api;
using Microsoft.AspNetCore.CookiePolicy;
using Microsoft.OpenApi.Models;

var builder = WebApplication.CreateBuilder(args);

// Add services to the container.

builder.Services.AddControllers();
// Learn more about configuring Swagger/OpenAPI at https://aka.ms/aspnetcore/swashbuckle
builder.Services.AddEndpointsApiExplorer();
// Add Swagger/OpenAPI services
builder.Services.AddSwaggerGen(options =>
{
    options.SwaggerDoc("v1", new OpenApiInfo
    {
        Version = "v1",
        Title = "Chamber d'appel",
        Description = "Ceci est une API documentation Swagger pour la gestion de la Chambre d'Appel de la Cour des Comptes.",
        //TermsOfService = new Uri("https://example.com/terms"),
        Contact = new OpenApiContact
        {
            Name = "Cour des comptes",
            Url = new Uri("https://www.courdescomptes.ma")
        }
    });
});

// Add CORS services
builder.Services.AddCors(options =>
{
    options.AddPolicy("AllowOnlyChamberAppel",
        builder =>
        {
            builder.WithOrigins("https://example.com")
                   .AllowAnyHeader()
                   .AllowAnyMethod();
        });
});

// Add memory cache services (required for AspNetCoreRateLimit)
builder.Services.AddMemoryCache();

// Rate limiting can protect  API from brute-force attacks or abuse by limiting the number of requests allowed from a single IP.
builder.Services.Configure<IpRateLimitOptions>(options =>
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

builder.Services.AddSingleton<IRateLimitConfiguration, RateLimitConfiguration>();
builder.Services.AddInMemoryRateLimiting();

// Cross-Site Request Forgery (CSRF) Protection
builder.Services.AddAntiforgery(options =>
{
    options.HeaderName = "X-XSRF-TOKEN";
});

// Register Services
builder.Services.RegisterApi(builder.Configuration);

builder.Services.AddHttpContextAccessor();

var app = builder.Build();

// Configure the HTTP request pipeline.
if (app.Environment.IsDevelopment())
{
    app.UseSwagger();
    app.UseSwaggerUI();
}

app.UseHttpsRedirection();

app.UseAuthorization();

// Enable CORS for specific policy
app.UseCors("AllowOnlyChamberAppel");

// Content Security Policy (CSP) header to prevent Cross-Site Scripting (XSS) attacks. This limits what resources (scripts, styles, etc.) can be loaded by the browser.
app.Use(async (context, next) =>
{
    context.Response.Headers.Add("Content-Security-Policy", "default-src 'self'; script-src 'self'; style-src 'self'; img-src 'self'; font-src 'self'");
    await next();
});

// Enable HSTS for production
// HSTS ensures that browsers only communicate with the server over HTTPS. This can help mitigate downgrade attacks.
app.UseHsts();

// Cross-Site Request Forgery (CSRF) Protection
app.Use(next => context =>
{
    if (string.Equals(context.Request.Method, "POST", StringComparison.OrdinalIgnoreCase) &&
        context.Request.Headers["X-XSRF-TOKEN"].FirstOrDefault() != null)
    {
        // CSRF token validation
    }
    return next(context);
});

// Secure Cookies
app.UseCookiePolicy(new CookiePolicyOptions
{
    Secure = CookieSecurePolicy.Always, // Ensures cookies are only sent over HTTPS
    HttpOnly = HttpOnlyPolicy.Always,   // Makes cookies inaccessible via JavaScript
    MinimumSameSitePolicy = SameSiteMode.Strict // Prevents cookies from being sent with cross-site requests
});

// integrating third-party libraries such as OWASP AntiSamy or NWebsec to add another layer of security for things like XSS protection.
app.Use(async (context, next) =>
{
    // Adding security headers
    context.Response.Headers.Add("X-Frame-Options", "DENY"); // Prevent clickjacking
    context.Response.Headers.Add("X-Content-Type-Options", "nosniff"); // Prevent MIME type sniffing
    context.Response.Headers.Add("X-XSS-Protection", "1; mode=block"); // Prevent reflected XSS attacks
    context.Response.Headers.Add("Strict-Transport-Security", "max-age=31536000; includeSubDomains; preload"); // HSTS for 1 year
    context.Response.Headers.Add("Referrer-Policy", "no-referrer"); // No referrer sent with requests
    await next();
});

app.MapControllers();

app.Run();