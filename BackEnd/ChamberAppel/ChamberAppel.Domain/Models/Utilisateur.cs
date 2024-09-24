using System.ComponentModel.DataAnnotations;

namespace ChamberAppel.Domain.Models
{
    public class Utilisateur
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
        [Required, MaxLength(80), MinLength(5)]
        public string Login { get; set; } = null!;
        [Required, MaxLength(255), MinLength(5)]
        public string Password { get; set; } = null!;
        [Required]
        public Guid TypeUtilisateurId { get; set; }
        [Required]
        public Guid TypeGradeId { get; set; }

        [MaxLength(80)]
        [Length(3, 80)]
        public string? UpdatedBy { get; set; }
        [DataType(DataType.DateTime)]
        public DateTime? UpdateTime { get; set; }
        public int IsActive { get; set; }
    }
}
