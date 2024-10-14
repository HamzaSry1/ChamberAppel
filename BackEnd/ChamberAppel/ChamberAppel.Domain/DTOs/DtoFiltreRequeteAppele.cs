namespace ChamberAppel.Domain.DTOs
{
    public class DtoFiltreRequeteAppele
    {
        public string? MotsCle { get; set; }
        public string? Appelant { get; set; }
        public string? Numero_Dossier { get; set; }
        public string? Numero_Jugement_Faisant_Objet_De_Appel { get; set; }
        public DateTime? Emis_En_Date_Du { get; set; }
        public Guid? IdCRC { get; set; }
        public string? Centre_Comptable { get; set; }
        public DateTime? Exercice_fiscal { get; set; }
    }
}
