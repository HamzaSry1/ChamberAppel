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

        #region CRUD 

        [HttpGet("GetAllAysnc")]
        public async Task<ApiResponse<List<Utilisateur>>> GetAllAsync()
        {
            var users = await _service.GetAllAsync();

            if (!users.Any())
                return new ApiResponse<List<Utilisateur>> { Data = new List<Utilisateur>(), StatusCode = HttpStatusCode.NoContent };

            return new ApiResponse<List<Utilisateur>> { Data = users, StatusCode = HttpStatusCode.OK };
        }

        [HttpGet("GetByIdAsync/{Id}")]
        public async Task<ApiResponse<Utilisateur>> GetByIdAsync(Guid Id)
        {
            if (Id == Guid.Empty)
                return new ApiResponse<Utilisateur> { Data = null, StatusCode = HttpStatusCode.NoContent };

            var user = await _service.GetByIdAsync(Id);

            if (user == null)
                return new ApiResponse<Utilisateur> { Data = null, StatusCode = HttpStatusCode.NoContent };

            return new ApiResponse<Utilisateur> { Data = user, StatusCode = HttpStatusCode.OK };
        }

        [HttpPost("CreateAsync")]
        public async Task<ApiResponse<Utilisateur>> CreateAsync(Utilisateur request)
        {
            if (request == null)
                return new ApiResponse<Utilisateur> { Data = null, StatusCode = HttpStatusCode.BadRequest };

            // add fluent validation

            var user = await _service.CreateAsync(request);

            if (user == null)
                return new ApiResponse<Utilisateur> { Data = null, StatusCode = HttpStatusCode.BadRequest };

            return new ApiResponse<Utilisateur> { Data = user, StatusCode = HttpStatusCode.OK };
        }

        [HttpPut("UpdateAsync")]
        public async Task<ApiResponse<Utilisateur>> UpdateAsync(Utilisateur request)
        {
            if (request == null)
                return new ApiResponse<Utilisateur> { Data = null, StatusCode = HttpStatusCode.BadRequest };

            // add fluent validation

            var user = await _service.UpdateAsync(request);

            if (user == null)
                return new ApiResponse<Utilisateur> { Data = null, StatusCode = HttpStatusCode.BadRequest };

            return new ApiResponse<Utilisateur> { Data = user, StatusCode = HttpStatusCode.OK };
        }

        [HttpDelete("DeleteAsync")]
        public async Task<ApiResponse<Utilisateur>> DeleteAsync(Guid Id)
        {
            if (Id == Guid.Empty)
                return new ApiResponse<Utilisateur> { Data = null, StatusCode = HttpStatusCode.BadRequest };

            // add fluent validation

            var user = await _service.DeleteByIdAsync(Id);

            if (user == null)
                return new ApiResponse<Utilisateur> { Data = null, StatusCode = HttpStatusCode.BadRequest };

            return new ApiResponse<Utilisateur> { Data = user, StatusCode = HttpStatusCode.OK };
        }

        #endregion CRUD 
    }
}