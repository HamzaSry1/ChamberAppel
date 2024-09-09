namespace ChamberAppel.Domain.DTOs
{
    public class DtoUtilisateur
    {
        public Guid Id { get; set; }
        public Guid PersonnePhysiqueId { get; set; }
        public string? Nom { get; set; }
        public string? Prenom { get; set; }
        public string? NomArabe { get; set; }
        public string? PrenomArabe { get; set; }
        public string? Cin { get; set; }
        public string? Adresse { get; set; }
        public string? Email { get; set; }
        public string? Gsm { get; set; }
        public string? SituationFamiliale { get; set; }
        public string? Sexe { get; set; }
        public string? DateNaissance { get; set; }
        public string? Login { get; set; }
        public string? Password { get; set; }
        public string? UpdatedBy { get; set; }
        public string? UpdateTime { get; set; }
        public bool? IsActive { get; set; }
    }
}
