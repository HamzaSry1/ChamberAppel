using ChamberAppel.Domain.Enums;

namespace ChamberAppel.Domain.DTOs
{
    public class DtoUtilisateur
    {
        public Guid Id { get; set; }
        public Guid? PersonnePhysiqueId { get; set; }
        public string Nom { get; set; } = null!;
        public string Prenom { get; set; } = null!;
        public string NomArabe { get; set; } = null!;
        public string PrenomArabe { get; set; } = null!;
        public string Cin { get; set; } = null!;
        public string Adresse { get; set; } = null!;
        public string Email { get; set; } = null!;
        public string Gsm { get; set; } = null!;
        public SituationFamilialeEnum? SituationFamiliale { get; set; }
        public GendersEnum? Sexe { get; set; }
        public DateTime? DateNaissance { get; set; }
        public string Login { get; set; } = null!;
        public string Password { get; set; } = null!;
        public string UpdatedBy { get; set; } = null!;
        public DateTime? UpdateTime { get; set; }
        public int IsActive { get; set; }
    }
}
