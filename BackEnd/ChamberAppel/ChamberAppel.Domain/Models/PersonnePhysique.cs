using System.ComponentModel.DataAnnotations;

namespace ChamberAppel.Domain.Models
{
    public class PersonnePhysique
    {
        [Key]
        public Guid Id { get; set; }
        [Required, MaxLength(20), MinLength(3)]
        public string Nom { get; set; } = null!;
        [Required, MaxLength(20), MinLength(3)]
        public string Prenom { get; set; } = null!;
        [MaxLength(20), MinLength(3)]
        public string? NomArabe { get; set; }
        [MaxLength(20), MinLength(3)]
        public string? PrenomArabe { get; set; }
        [Required, DataType(DataType.EmailAddress), MaxLength(80), MinLength(10)]
        public string? Email { get; set; }
        [DataType(DataType.PhoneNumber), MaxLength(10), MinLength(10)]
        public string? UpdatedBy { get; set; }
        [DataType(DataType.DateTime)]
        public DateTime? UpdateTime { get; set; } = DateTime.Now;
        public int IsActive { get; set; }
    }
}
