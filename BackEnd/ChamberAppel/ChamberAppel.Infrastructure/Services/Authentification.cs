using ChamberAppel.Domain.DTOs;
using ChamberAppel.Domain.Models;
using ChamberAppel.Domain.Repository;
using ChamberAppel.Domain.Services;
using Microsoft.Extensions.Configuration;
using Microsoft.IdentityModel.Tokens;
using System.IdentityModel.Tokens.Jwt;
using System.Security.Claims;
using System.Text;

namespace ChamberAppel.Infrastructure.Services
{
    public class Authentification : IAuthentification
    {
        private readonly IConfiguration _configuration;
        private readonly IUtilisateurRepository _repository;
        public Authentification(IUtilisateurRepository repository, IConfiguration configuration)
        {
            _repository = repository;
            _configuration = configuration;
        }

        public async Task<DtoResetPassword> DecodeTokenResetPassword(string token)
        {
            Utilisateur user = await _repository.GetByResetTokenAsync(token);
            if (user != null)
            {
                return new DtoResetPassword
                {
                    UserId = user.Id,
                    //ExpirationDateToken = user.ResetTokenExpiration ?? DateTime.Now.AddDays(-1),
                };
            }
            return null;
        }

        public string GenerateJwtToken(Utilisateur user)
        {
            if (!int.TryParse(_configuration["JwtSettings:ExpireDays"], out int nbrDays))
            {
                nbrDays = 1;
            }
            var expirationDate = DateTime.UtcNow.AddDays(nbrDays);
            var claims = new List<Claim>
            {
                new Claim(ClaimTypes.Name, user.Login),
                new Claim(ClaimTypes.NameIdentifier, user.Id.ToString()),
                new Claim(ClaimTypes.Email, user.Email ?? ""),
                new Claim(ClaimTypes.Expiration, expirationDate.ToString()),
            };

            var key = new SymmetricSecurityKey(Encoding.UTF8.GetBytes(_configuration["JwtSettings:Key"]));
            var creds = new SigningCredentials(key, SecurityAlgorithms.HmacSha256);

            var token = new JwtSecurityToken(
                issuer: _configuration["JwtSettings:Issuer"],
                audience: _configuration["JwtSettings:Audience"],
                claims: claims,
                expires: expirationDate,
                signingCredentials: creds
            );

            var tokenString = new JwtSecurityTokenHandler().WriteToken(token);
            return tokenString;
        }
    }
}
