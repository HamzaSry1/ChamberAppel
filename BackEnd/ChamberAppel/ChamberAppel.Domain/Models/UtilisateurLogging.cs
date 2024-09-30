using System.ComponentModel.DataAnnotations;

namespace ChamberAppel.Domain.Models
{

    // get the most of information from httpContextAccessor

    public class UtilisateurLogging
    {
        [Key]
        public Guid Id { get; set; }

        [Required]
        public Guid UtilisateurId { get; set; }

        // Action: Specifies the action performed by the user.
        [Required, MaxLength(255)]
        public string Action { get; set; } = null!;

        // DateLogging: Captures the date and time when the action was logged.
        [Required]
        public DateTime DateLogging { get; set; }

        // Description: Provides additional information or details about the action (e.g., error details or specific context).
        [MaxLength(500)]
        public string? Description { get; set; }

        // IpAddress: Tracks the IP address from which the request originated.
        [MaxLength(45)]
        public string? IpAddress { get; set; }

        // RequestPath: Logs the URL or route accessed during the request.
        [MaxLength(2000)]
        public string? RequestPath { get; set; }

        // HttpMethod: Logs the HTTP method used (e.g., GET, POST, PUT).
        [MaxLength(10)]
        public string? HttpMethod { get; set; }

        // UserAgent: Logs the browser or client application making the request.
        [MaxLength(500)]
        public string? UserAgent { get; set; }

        // JwtToken: Captures the JWT token used for authentication during the request, if available.
        [MaxLength(2500)]
        public string? JwtToken { get; set; }
    }
}
