using ChamberAppel.Domain.Enums;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

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
        [DataType(DataType.Date)]
        public DateTime DateNaissance { get; set; }
        [Required, MaxLength(10), MinLength(10)]
        public string Cin { get; set; } = null!;
        public SituationFamilialeEnum SituationFamiliale { get; set; }
        public GendersEnum Sexe { get; set; }
        [MaxLength(255), MinLength(10)]
        public string? Adresse { get; set; }
        [Required, DataType(DataType.EmailAddress), MaxLength(80), MinLength(10)]
        public string? Email { get; set; }
        [DataType(DataType.PhoneNumber), MaxLength(10), MinLength(10)]
        public string? Gsm { get; set; }
        public string? UpdatedBy { get; set; }
        [DataType(DataType.DateTime)]
        public DateTime? UpdateTime { get; set; } = DateTime.Now;
        [Column(TypeName = "NUMBER(1)")]
        public bool? IsActive { get; set; }
    }
}
