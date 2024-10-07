namespace ChamberAppel.Domain.DTOs
{
    public class DtoFiltreDisciplineBudgetaire
    {
        public string? MotsCle { get; set; }
        public string? Numero_Dossier { get; set; }
        public string? Appelant { get; set; }
        public DateTime? Emis_En_Date_Du { get; set; }
        public Guid? IdCRC { get; set; }
        public string? Centre_Comptable { get; set; }
        public string? Conseiller_Rapporteur { get; set; }
    }
}
