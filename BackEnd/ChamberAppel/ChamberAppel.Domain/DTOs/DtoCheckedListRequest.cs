namespace ChamberAppel.Domain.DTOs
{
    public class DtoCheckedListRequest
    {
        public Guid Id { get; set; }
        public List<Guid>? ListCheckedId { get; set; }
    }
}
