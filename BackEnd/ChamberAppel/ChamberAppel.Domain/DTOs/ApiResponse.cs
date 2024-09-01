using System.Net;

namespace ChamberAppel.Domain.DTOs
{
    public class ApiResponse<T>
    {
        public T? Data { get; set; }
        public HttpStatusCode StatusCode { get; set; }
        public string? Message { get; set; }
        public List<FluentValidationErrors>? ValidationErrors { get; set; }
    }
}
