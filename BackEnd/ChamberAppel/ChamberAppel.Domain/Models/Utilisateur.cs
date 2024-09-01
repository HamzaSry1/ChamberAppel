using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace ChamberAppel.Domain.Models
{
    public class Utilisateur
    {
        [Key]
        public Guid Id { get; set; }
        [Required]
        public Guid PersonnePhysiqueId { get; set; }
        [Required, MaxLength(50), MinLength(5)]
        public string Login { get; set; } = null!;
        [Required, MaxLength(50), MinLength(5)]
        public string Password { get; set; } = null!;
        [Column(TypeName = "NUMBER(1)")]
        public bool? IsActive { get; set; }
        [ForeignKey(nameof(PersonnePhysiqueId))]
        public PersonnePhysique? PersonnePhysique { get; set; }
    }
}
