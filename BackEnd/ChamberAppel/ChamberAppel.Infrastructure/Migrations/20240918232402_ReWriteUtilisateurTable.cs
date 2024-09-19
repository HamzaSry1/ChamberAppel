using System;
using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace ChamberAppel.Infrastructure.Migrations
{
    /// <inheritdoc />
    public partial class ReWriteUtilisateurTable : Migration
    {
        /// <inheritdoc />
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropColumn(
                name: "Adresse",
                table: "PersonnePhysiques");

            migrationBuilder.DropColumn(
                name: "Cin",
                table: "PersonnePhysiques");

            migrationBuilder.DropColumn(
                name: "DateNaissance",
                table: "PersonnePhysiques");

            migrationBuilder.DropColumn(
                name: "Gsm",
                table: "PersonnePhysiques");

            migrationBuilder.DropColumn(
                name: "Sexe",
                table: "PersonnePhysiques");

            migrationBuilder.AlterColumn<string>(
                name: "UpdatedBy",
                table: "PersonnePhysiques",
                type: "NVARCHAR2(10)",
                maxLength: 10,
                nullable: true,
                oldClrType: typeof(string),
                oldType: "NVARCHAR2(2000)",
                oldNullable: true);
        }

        /// <inheritdoc />
        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.AlterColumn<string>(
                name: "UpdatedBy",
                table: "PersonnePhysiques",
                type: "NVARCHAR2(2000)",
                nullable: true,
                oldClrType: typeof(string),
                oldType: "NVARCHAR2(10)",
                oldMaxLength: 10,
                oldNullable: true);

            migrationBuilder.AddColumn<string>(
                name: "Adresse",
                table: "PersonnePhysiques",
                type: "NVARCHAR2(255)",
                maxLength: 255,
                nullable: true);

            migrationBuilder.AddColumn<string>(
                name: "Cin",
                table: "PersonnePhysiques",
                type: "NVARCHAR2(10)",
                maxLength: 10,
                nullable: false,
                defaultValue: "");

            migrationBuilder.AddColumn<DateTime>(
                name: "DateNaissance",
                table: "PersonnePhysiques",
                type: "TIMESTAMP(7)",
                nullable: true);

            migrationBuilder.AddColumn<string>(
                name: "Gsm",
                table: "PersonnePhysiques",
                type: "NVARCHAR2(10)",
                maxLength: 10,
                nullable: true);

            migrationBuilder.AddColumn<int>(
                name: "Sexe",
                table: "PersonnePhysiques",
                type: "NUMBER(10)",
                nullable: true);
        }
    }
}
