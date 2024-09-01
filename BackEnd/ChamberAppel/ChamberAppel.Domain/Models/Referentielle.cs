using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace ChamberAppel.Domain.Models
{
    public class Referentielle
    {
        [Key]
        public Guid Id { get; set; }
        [MaxLength(20)]
        public string? Code { get; set; }
        [Required, MaxLength(150)]
        public string Label { get; set; } = null!;
        [MaxLength(255)]
        public string? Description { get; set; }
        [Column(TypeName = "NUMBER(1)")]
        public bool? IsActive { get; set; }
    }
}
