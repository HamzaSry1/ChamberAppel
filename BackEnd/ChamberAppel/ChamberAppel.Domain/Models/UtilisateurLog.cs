using System.ComponentModel.DataAnnotations;

namespace ChamberAppel.Domain.Models
{
    public class UtilisateurLog
    {
        [Key]
        public Guid Id { get; set; }
        [Required]
        public Guid UtilisateurId { get; set; }
        [Required, MaxLength(255)]
        public string Action { get; set; } = null!;
        [Required]
        public DateTime Timestamp { get; set; }
        [MaxLength(500)]
        public string Description { get; set; } = null!;
    }
}
