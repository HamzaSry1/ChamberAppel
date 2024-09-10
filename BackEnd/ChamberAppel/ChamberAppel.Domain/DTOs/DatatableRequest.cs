namespace ChamberAppel.Domain.DTOs
{
    public class DatatableRequest<T>
    {
        public T? Filtre { get; set; }
        public DtoPagination? Pagination { get; set; }
    }
}
