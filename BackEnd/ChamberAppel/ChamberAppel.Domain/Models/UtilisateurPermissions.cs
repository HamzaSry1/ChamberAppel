using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace ChamberAppel.Domain.Models
{
    public class UtilisateurPermissions
    {
        [Key]
        public Guid Id { get; set; }
        public Guid UtilisateurId { get; set; }
        public Guid PermissionId { get; set; }
        [ForeignKey(nameof(UtilisateurId))]
        public Utilisateur? Utilisateur { get; set; }
        [ForeignKey(nameof(PermissionId))]
        public Permission? Permission { get; set; }
    }
}
