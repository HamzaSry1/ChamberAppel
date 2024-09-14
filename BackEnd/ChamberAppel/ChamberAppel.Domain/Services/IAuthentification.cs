using ChamberAppel.Domain.DTOs;
using ChamberAppel.Domain.Models;

namespace ChamberAppel.Domain.Services
{
    public interface IAuthentification
    {
        string GenerateJwtToken(Utilisateur user);
        Task<DtoResetPassword> DecodeTokenResetPassword(string token);
    }
}
