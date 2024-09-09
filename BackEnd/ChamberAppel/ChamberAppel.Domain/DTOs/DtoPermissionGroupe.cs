using ChamberAppel.Domain.Models;

namespace ChamberAppel.Domain.DTOs
{
    public class DtoPermissionGroupe
    {
        public string? Groupe { get; set; }
        public List<Permission>? Permissions { get; set; }
    }
}
