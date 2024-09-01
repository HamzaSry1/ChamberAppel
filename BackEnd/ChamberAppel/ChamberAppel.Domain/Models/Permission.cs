using System.ComponentModel.DataAnnotations;

namespace ChamberAppel.Domain.Models
{
    public class Permission : Referentielle
    {
        [Required]
        public string? Groupe { get; set; } 
    }
}
