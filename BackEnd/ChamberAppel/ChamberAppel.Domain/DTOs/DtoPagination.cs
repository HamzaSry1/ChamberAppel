namespace ChamberAppel.Domain.DTOs
{
    public class DtoPagination
    {
        public int PageNumber { get; set; }
        public int PageSize { get; set; }
        public string? OrderByDirection { get; set; }
        public string? OrderBy { get; set; }
    }
}
