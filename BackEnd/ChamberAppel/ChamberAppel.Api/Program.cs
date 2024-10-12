using ChamberAppel.Api;
using ChamberAppel.Api.Config;

var builder = WebApplication.CreateBuilder(args);

// Excel parser encoding
System.Text.Encoding.RegisterProvider(System.Text.CodePagesEncodingProvider.Instance);

// Add services to the container.
builder.Services.AddControllers();
builder.Services.RegisterJsonStringFormatter();
builder.Services.AddEndpointsApiExplorer();

builder.Services.RegisterSwagger();
builder.Services.RegisterCROS();
//builder.Services.RegisterRateLimit();
//builder.Services.RegisterCSRF();
builder.Services.RegisterApi(builder.Configuration);
builder.Services.AddHttpContextAccessor();

var app = builder.Build();

// Use extension methods for middleware
app.UseSwaggerInDevelopment(app.Environment);

// Ensure HTTPS and CORS
app.UseHttpsRedirection();
app.UseCors("AllowOnlyChamberAppel");

// Security and authentication
app.UseAuthentication();
app.UseAuthorization();
app.UseStaticFiles();

// Custom security headers
//app.UseCspHeaders();
//app.UseCsrfProtection();
//app.UseSecureCookies();
//app.UseSecurityHeaders();
app.UseHstsInProduction(app.Environment);

// Map routes
app.MapControllers();

// Start the app
app.Run();