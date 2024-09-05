using ChamberAppel.Domain.DTOs;
using ChamberAppel.Domain.Models;
using ChamberAppel.Domain.Services;
using Microsoft.AspNetCore.Mvc;
using System.Net;

namespace ChamberAppel.Api.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class UtilisateursController : ControllerBase
    {
        private readonly IUtilisateurService _service;
        public UtilisateursController(IUtilisateurService service)
        {
            _service = service;
        }

        #region CRUD Operations
        [HttpGet("GetAllAysnc")]
        public async Task<ApiResponse<List<Utilisateur>>> GetAllAysnc()
        {
            var users = await _service.GetAllAsync();

            if (!users.Any())
                return new ApiResponse<List<Utilisateur>> { Data = new List<Utilisateur>(), StatusCode = HttpStatusCode.NoContent };

            return new ApiResponse<List<Utilisateur>> { Data = users, StatusCode = HttpStatusCode.OK };
        }

        #endregion CRUD Operations
    }
}
