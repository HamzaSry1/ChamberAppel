using ChamberAppel.Domain.DTOs;
using ChamberAppel.Domain.Models;
using ChamberAppel.Domain.Repository;
using ChamberAppel.Domain.Services;
using ChamberAppel.Infrastructure.Repository;
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
            Utilisateur user = await _repository.GetByResetToken(token);
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
            if (!int.TryParse(_configuration["Jwt:ExpireDays"], out int nbrDays))
            {
                nbrDays = 1;
            }
            var expirationDate = DateTime.UtcNow.AddDays(nbrDays);
            var claims = new List<Claim>
            {
                new Claim(ClaimTypes.Name, user.Login),
                new Claim(ClaimTypes.NameIdentifier, user.Id.ToString()),
                new Claim(ClaimTypes.Email, user.PersonnePhysique.Email ?? ""),
                new Claim(ClaimTypes.Expiration, expirationDate.ToString()),
            };

            var key = new SymmetricSecurityKey(Encoding.UTF8.GetBytes(_configuration["Jwt:Key"]));
            var creds = new SigningCredentials(key, SecurityAlgorithms.HmacSha256);

            var token = new JwtSecurityToken(
                issuer: _configuration["Jwt:Issuer"],
                audience: _configuration["Jwt:Audience"],
                claims: claims,
                expires: expirationDate,
                signingCredentials: creds
            );

            var tokenString = new JwtSecurityTokenHandler().WriteToken(token);
            return tokenString;
        }

        public async Task<string> GenerateTokenResetPassword(Utilisateur user)
        {
            if (!int.TryParse(_configuration["Jwt:ExpireDays"], out int nbrDays))
            {
                nbrDays = 1;
            }
            var expirtationDate = DateTime.UtcNow.AddDays(nbrDays);
            // Create a claim for the user (you can customize this as needed)
            var claims = new[]
            {
                new Claim(ClaimTypes.Name, user.Login),
                new Claim(ClaimTypes.NameIdentifier, user.Id.ToString()),
                new Claim(ClaimTypes.Expiration, expirtationDate.ToString())
            };

            // Create a security key from your secret key
            var key = new SymmetricSecurityKey(System.Text.Encoding.UTF8.GetBytes(_configuration["Jwt:KeyReset"]));

            // Create signing credentials using the key and the algorithm
            var creds = new SigningCredentials(key, SecurityAlgorithms.HmacSha256);

            // Create a JWT token with claims and signing credentials
            var token = new JwtSecurityToken(
                issuer: _configuration["Jwt:Issuer"],
                audience: _configuration["Jwt:Audience"],
                claims: claims,
                expires: expirtationDate,
                signingCredentials: creds
            );

            // Serialize the token to a string
            var tokenString = new JwtSecurityTokenHandler().WriteToken(token);
            /* Save token in the user record */
            var userRecord = await _repository.GetByIdAsync(user.Id);
            if (userRecord != null)
            {
                //userRecord.ResetToken = tokenString;
                //userRecord.ResetTokenExpiration = expirtationDate;
                await _repository.UpdateAsync(userRecord);
            }
            return tokenString;
        }
    }
}
