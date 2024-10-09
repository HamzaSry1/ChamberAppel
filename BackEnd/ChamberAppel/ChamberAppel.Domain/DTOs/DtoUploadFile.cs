using ChamberAppel.Domain.Enums;
using Microsoft.AspNetCore.Http;

namespace ChamberAppel.Domain.DTOs
{
    public class DtoUploadFile
    {
        public IFormFile? file { get; set; }
        public string? UpdatedBy { get; set; }
        public EnumFileType? FileType { get; set; }
    }
}
