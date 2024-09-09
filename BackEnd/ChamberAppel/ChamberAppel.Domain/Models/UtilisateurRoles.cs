using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace ChamberAppel.Domain.Models
{
    public class UtilisateurRoles
    {
        [Key]
        public Guid Id { get; set; }
        public Guid UtilisateurId { get; set; }
        public Guid RoleId { get; set; }
        [ForeignKey(nameof(UtilisateurId))]
        public Utilisateur? Utilisateur { get; set; }
        [ForeignKey(nameof(RoleId))]
        public Role? Role { get; set; }
    }
}
