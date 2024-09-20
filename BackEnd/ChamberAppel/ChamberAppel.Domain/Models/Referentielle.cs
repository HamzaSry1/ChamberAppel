using System.ComponentModel.DataAnnotations;

namespace ChamberAppel.Domain.Models
{
    public class Referentielle
    {
        [Key]
        public Guid Id { get; set; }
        [MaxLength(80)]
        public string? Code { get; set; }
        [Required, MaxLength(150)]
        public string Label { get; set; } = null!;
        [MaxLength(255)]
        public string? Description { get; set; }
        public int IsActive { get; set; }
    }
}
