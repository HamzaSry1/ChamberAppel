using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace ChamberAppel.Infrastructure.Migrations
{
    /// <inheritdoc />
    public partial class RemovePropertyfromUtilisateurTable : Migration
    {
        /// <inheritdoc />
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropColumn(
                name: "SituationFamiliale",
                table: "PersonnePhysiques");

            migrationBuilder.AlterColumn<int>(
                name: "Sexe",
                table: "PersonnePhysiques",
                type: "NUMBER(10)",
                nullable: true,
                oldClrType: typeof(int),
                oldType: "NUMBER(10)");
        }

        /// <inheritdoc />
        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.AlterColumn<int>(
                name: "Sexe",
                table: "PersonnePhysiques",
                type: "NUMBER(10)",
                nullable: false,
                defaultValue: 0,
                oldClrType: typeof(int),
                oldType: "NUMBER(10)",
                oldNullable: true);

            migrationBuilder.AddColumn<int>(
                name: "SituationFamiliale",
                table: "PersonnePhysiques",
                type: "NUMBER(10)",
                nullable: false,
                defaultValue: 0);
        }
    }
}
