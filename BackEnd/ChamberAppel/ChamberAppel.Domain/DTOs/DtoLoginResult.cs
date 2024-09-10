using ChamberAppel.Domain.Models;

namespace ChamberAppel.Domain.DTOs
{
    public class DtoLoginResult
    {
        public string? Token { get; set; }
        public List<Permission>? Permissions { get; set; }
    }
}
