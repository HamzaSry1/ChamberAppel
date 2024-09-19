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
        public string Email { get; set; } = null!;
        public string Login { get; set; } = null!;
        public string? Password { get; set; }
        public string UpdatedBy { get; set; } = null!;
        public DateTime? UpdateTime { get; set; }
        public int IsActive { get; set; }
    }
}
