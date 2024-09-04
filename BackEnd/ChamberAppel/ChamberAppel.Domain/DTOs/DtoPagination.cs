namespace ChamberAppel.Domain.DTOs
{
    public class DtoPagination
    {
        public int PageNumber { get; set; }
        public int PageSize { get; set; }
        public string? ColumnDirection { get; set; }
        public string? ColumnName { get; set; }
    }
}
