namespace ChamberAppel.Domain.DTOs
{
    public class DatatableResponse<T>
    {
        public List<T>? Data { get; set; }
        public int RecordTotal { get; set; }
        public int RecordFiltred { get; set; }
    }
}
