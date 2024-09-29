using ChamberAppel.Domain.Enums;
using Microsoft.AspNetCore.Http;

namespace ChamberAppel.Domain.DTOs
{
    public class DtoImporte
    {
        public IFormFile? file { get; set; }
        public EnumFileType? fileType { get; set; }
    }
}
