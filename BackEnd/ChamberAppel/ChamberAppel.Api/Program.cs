using ChamberAppel.Api;
using ChamberAppel.Api.Config;
using Microsoft.AspNetCore.CookiePolicy;

var builder = WebApplication.CreateBuilder(args);

// Add services to the container.
builder.Services.AddControllers();
builder.Services.AddEndpointsApiExplorer();

builder.Services.RegisterSwagger();
builder.Services.RegisterCROS(builder.Configuration);
builder.Services.RegisterRateLimit();
builder.Services.RegisterCSRF();
builder.Services.RegisterApi(builder.Configuration);
builder.Services.AddHttpContextAccessor();

var app = builder.Build();

// Use extension methods for middleware
app.UseSwaggerInDevelopment(app.Environment);

app.UseHttpsRedirection();
app.UseAuthentication();
app.UseAuthorization();
app.UseStaticFiles();

app.UseCorsPolicy();
//app.UseCspHeaders();
//app.UseCsrfProtection();
//app.UseSecureCookies();
//app.UseSecurityHeaders();
app.UseHstsInProduction(app.Environment);

app.MapControllers();

// Enable documentation to be used in production
app.UseSwagger();
app.UseSwaggerUI();

app.Run();