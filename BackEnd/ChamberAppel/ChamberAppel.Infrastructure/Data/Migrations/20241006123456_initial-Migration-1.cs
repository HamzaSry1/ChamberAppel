using System;
using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace ChamberAppel.Infrastructure.Migrations
{
    /// <inheritdoc />
    public partial class initialMigration1 : Migration
    {
        /// <inheritdoc />
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.AlterColumn<DateTime>(
                name: "Emis_En_Date_Du",
                table: "DisciplineBudgetaires",
                type: "TIMESTAMP(7)",
                nullable: true,
                oldClrType: typeof(string),
                oldType: "NVARCHAR2(2000)",
                oldNullable: true);

            migrationBuilder.AlterColumn<DateTime>(
                name: "Date_Transmission_Dossier_Ministere_Public",
                table: "DisciplineBudgetaires",
                type: "TIMESTAMP(7)",
                nullable: true,
                oldClrType: typeof(string),
                oldType: "NVARCHAR2(2000)",
                oldNullable: true);

            migrationBuilder.AlterColumn<DateTime>(
                name: "Date_Retour_Dossier_Greffe_Central",
                table: "DisciplineBudgetaires",
                type: "TIMESTAMP(7)",
                nullable: true,
                oldClrType: typeof(string),
                oldType: "NVARCHAR2(2000)",
                oldNullable: true);

            migrationBuilder.AlterColumn<DateTime>(
                name: "Date_Requisition_Ministere_Public",
                table: "DisciplineBudgetaires",
                type: "TIMESTAMP(7)",
                nullable: true,
                oldClrType: typeof(string),
                oldType: "NVARCHAR2(2000)",
                oldNullable: true);

            migrationBuilder.AlterColumn<DateTime>(
                name: "Date_Reception_Convocation_Interesse_Consultation",
                table: "DisciplineBudgetaires",
                type: "TIMESTAMP(7)",
                nullable: true,
                oldClrType: typeof(string),
                oldType: "NVARCHAR2(2000)",
                oldNullable: true);

            migrationBuilder.AlterColumn<DateTime>(
                name: "Date_Reception_Convocation_Avocat_Consultation",
                table: "DisciplineBudgetaires",
                type: "TIMESTAMP(7)",
                nullable: true,
                oldClrType: typeof(string),
                oldType: "NVARCHAR2(2000)",
                oldNullable: true);

            migrationBuilder.AlterColumn<DateTime>(
                name: "Date_Reception_Comptable_Copie_Decision",
                table: "DisciplineBudgetaires",
                type: "TIMESTAMP(7)",
                nullable: true,
                oldClrType: typeof(string),
                oldType: "NVARCHAR2(2000)",
                oldNullable: true);

            migrationBuilder.AlterColumn<DateTime>(
                name: "Date_Preparation_Rapport",
                table: "DisciplineBudgetaires",
                type: "TIMESTAMP(7)",
                nullable: true,
                oldClrType: typeof(string),
                oldType: "NVARCHAR2(2000)",
                oldNullable: true);

            migrationBuilder.AlterColumn<DateTime>(
                name: "Date_Ordonnance_Designation_Conseiller_Rapporteur_Remplacant",
                table: "DisciplineBudgetaires",
                type: "TIMESTAMP(7)",
                nullable: true,
                oldClrType: typeof(string),
                oldType: "NVARCHAR2(2000)",
                oldNullable: true);

            migrationBuilder.AlterColumn<DateTime>(
                name: "Date_Ordonnance_Designation_Conseiller_Rapporteur",
                table: "DisciplineBudgetaires",
                type: "TIMESTAMP(7)",
                nullable: true,
                oldClrType: typeof(string),
                oldType: "NVARCHAR2(2000)",
                oldNullable: true);

            migrationBuilder.AlterColumn<DateTime>(
                name: "Date_Envoi_Requete_Parties",
                table: "DisciplineBudgetaires",
                type: "TIMESTAMP(7)",
                nullable: true,
                oldClrType: typeof(string),
                oldType: "NVARCHAR2(2000)",
                oldNullable: true);

            migrationBuilder.AlterColumn<DateTime>(
                name: "Date_Envoi_Decision_Notification_Parties",
                table: "DisciplineBudgetaires",
                type: "TIMESTAMP(7)",
                nullable: true,
                oldClrType: typeof(string),
                oldType: "NVARCHAR2(2000)",
                oldNullable: true);

            migrationBuilder.AlterColumn<DateTime>(
                name: "Date_Enregistrement_Requete_Cour_Regionale_Des_Comptes",
                table: "DisciplineBudgetaires",
                type: "TIMESTAMP(7)",
                nullable: true,
                oldClrType: typeof(string),
                oldType: "NVARCHAR2(2000)",
                oldNullable: true);

            migrationBuilder.AlterColumn<DateTime>(
                name: "Date_Enquete_Sur_Le_Terrain",
                table: "DisciplineBudgetaires",
                type: "TIMESTAMP(7)",
                nullable: true,
                oldClrType: typeof(string),
                oldType: "NVARCHAR2(2000)",
                oldNullable: true);

            migrationBuilder.AlterColumn<DateTime>(
                name: "Date_Demande_Documents_Supplementaires",
                table: "DisciplineBudgetaires",
                type: "TIMESTAMP(7)",
                nullable: true,
                oldClrType: typeof(string),
                oldType: "NVARCHAR2(2000)",
                oldNullable: true);

            migrationBuilder.AlterColumn<DateTime>(
                name: "Date_Convocation_Interesse_Audience",
                table: "DisciplineBudgetaires",
                type: "TIMESTAMP(7)",
                nullable: true,
                oldClrType: typeof(string),
                oldType: "NVARCHAR2(2000)",
                oldNullable: true);

            migrationBuilder.AlterColumn<DateTime>(
                name: "Date_Consultation_Interesse",
                table: "DisciplineBudgetaires",
                type: "TIMESTAMP(7)",
                nullable: true,
                oldClrType: typeof(string),
                oldType: "NVARCHAR2(2000)",
                oldNullable: true);

            migrationBuilder.AlterColumn<DateTime>(
                name: "Date_Consultation_Avocat",
                table: "DisciplineBudgetaires",
                type: "TIMESTAMP(7)",
                nullable: true,
                oldClrType: typeof(string),
                oldType: "NVARCHAR2(2000)",
                oldNullable: true);

            migrationBuilder.AlterColumn<DateTime>(
                name: "Date_Conclusions_Ministere_Public",
                table: "DisciplineBudgetaires",
                type: "TIMESTAMP(7)",
                nullable: true,
                oldClrType: typeof(string),
                oldType: "NVARCHAR2(2000)",
                oldNullable: true);

            migrationBuilder.AlterColumn<DateTime>(
                name: "Date_Audience_Prononce_Jugement",
                table: "DisciplineBudgetaires",
                type: "TIMESTAMP(7)",
                nullable: true,
                oldClrType: typeof(string),
                oldType: "NVARCHAR2(2000)",
                oldNullable: true);

            migrationBuilder.AlterColumn<DateTime>(
                name: "Date_Audience_Jugement",
                table: "DisciplineBudgetaires",
                type: "TIMESTAMP(7)",
                nullable: true,
                oldClrType: typeof(string),
                oldType: "NVARCHAR2(2000)",
                oldNullable: true);
        }

        /// <inheritdoc />
        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.AlterColumn<string>(
                name: "Emis_En_Date_Du",
                table: "DisciplineBudgetaires",
                type: "NVARCHAR2(2000)",
                nullable: true,
                oldClrType: typeof(DateTime),
                oldType: "TIMESTAMP(7)",
                oldNullable: true);

            migrationBuilder.AlterColumn<string>(
                name: "Date_Transmission_Dossier_Ministere_Public",
                table: "DisciplineBudgetaires",
                type: "NVARCHAR2(2000)",
                nullable: true,
                oldClrType: typeof(DateTime),
                oldType: "TIMESTAMP(7)",
                oldNullable: true);

            migrationBuilder.AlterColumn<string>(
                name: "Date_Retour_Dossier_Greffe_Central",
                table: "DisciplineBudgetaires",
                type: "NVARCHAR2(2000)",
                nullable: true,
                oldClrType: typeof(DateTime),
                oldType: "TIMESTAMP(7)",
                oldNullable: true);

            migrationBuilder.AlterColumn<string>(
                name: "Date_Requisition_Ministere_Public",
                table: "DisciplineBudgetaires",
                type: "NVARCHAR2(2000)",
                nullable: true,
                oldClrType: typeof(DateTime),
                oldType: "TIMESTAMP(7)",
                oldNullable: true);

            migrationBuilder.AlterColumn<string>(
                name: "Date_Reception_Convocation_Interesse_Consultation",
                table: "DisciplineBudgetaires",
                type: "NVARCHAR2(2000)",
                nullable: true,
                oldClrType: typeof(DateTime),
                oldType: "TIMESTAMP(7)",
                oldNullable: true);

            migrationBuilder.AlterColumn<string>(
                name: "Date_Reception_Convocation_Avocat_Consultation",
                table: "DisciplineBudgetaires",
                type: "NVARCHAR2(2000)",
                nullable: true,
                oldClrType: typeof(DateTime),
                oldType: "TIMESTAMP(7)",
                oldNullable: true);

            migrationBuilder.AlterColumn<string>(
                name: "Date_Reception_Comptable_Copie_Decision",
                table: "DisciplineBudgetaires",
                type: "NVARCHAR2(2000)",
                nullable: true,
                oldClrType: typeof(DateTime),
                oldType: "TIMESTAMP(7)",
                oldNullable: true);

            migrationBuilder.AlterColumn<string>(
                name: "Date_Preparation_Rapport",
                table: "DisciplineBudgetaires",
                type: "NVARCHAR2(2000)",
                nullable: true,
                oldClrType: typeof(DateTime),
                oldType: "TIMESTAMP(7)",
                oldNullable: true);

            migrationBuilder.AlterColumn<string>(
                name: "Date_Ordonnance_Designation_Conseiller_Rapporteur_Remplacant",
                table: "DisciplineBudgetaires",
                type: "NVARCHAR2(2000)",
                nullable: true,
                oldClrType: typeof(DateTime),
                oldType: "TIMESTAMP(7)",
                oldNullable: true);

            migrationBuilder.AlterColumn<string>(
                name: "Date_Ordonnance_Designation_Conseiller_Rapporteur",
                table: "DisciplineBudgetaires",
                type: "NVARCHAR2(2000)",
                nullable: true,
                oldClrType: typeof(DateTime),
                oldType: "TIMESTAMP(7)",
                oldNullable: true);

            migrationBuilder.AlterColumn<string>(
                name: "Date_Envoi_Requete_Parties",
                table: "DisciplineBudgetaires",
                type: "NVARCHAR2(2000)",
                nullable: true,
                oldClrType: typeof(DateTime),
                oldType: "TIMESTAMP(7)",
                oldNullable: true);

            migrationBuilder.AlterColumn<string>(
                name: "Date_Envoi_Decision_Notification_Parties",
                table: "DisciplineBudgetaires",
                type: "NVARCHAR2(2000)",
                nullable: true,
                oldClrType: typeof(DateTime),
                oldType: "TIMESTAMP(7)",
                oldNullable: true);

            migrationBuilder.AlterColumn<string>(
                name: "Date_Enregistrement_Requete_Cour_Regionale_Des_Comptes",
                table: "DisciplineBudgetaires",
                type: "NVARCHAR2(2000)",
                nullable: true,
                oldClrType: typeof(DateTime),
                oldType: "TIMESTAMP(7)",
                oldNullable: true);

            migrationBuilder.AlterColumn<string>(
                name: "Date_Enquete_Sur_Le_Terrain",
                table: "DisciplineBudgetaires",
                type: "NVARCHAR2(2000)",
                nullable: true,
                oldClrType: typeof(DateTime),
                oldType: "TIMESTAMP(7)",
                oldNullable: true);

            migrationBuilder.AlterColumn<string>(
                name: "Date_Demande_Documents_Supplementaires",
                table: "DisciplineBudgetaires",
                type: "NVARCHAR2(2000)",
                nullable: true,
                oldClrType: typeof(DateTime),
                oldType: "TIMESTAMP(7)",
                oldNullable: true);

            migrationBuilder.AlterColumn<string>(
                name: "Date_Convocation_Interesse_Audience",
                table: "DisciplineBudgetaires",
                type: "NVARCHAR2(2000)",
                nullable: true,
                oldClrType: typeof(DateTime),
                oldType: "TIMESTAMP(7)",
                oldNullable: true);

            migrationBuilder.AlterColumn<string>(
                name: "Date_Consultation_Interesse",
                table: "DisciplineBudgetaires",
                type: "NVARCHAR2(2000)",
                nullable: true,
                oldClrType: typeof(DateTime),
                oldType: "TIMESTAMP(7)",
                oldNullable: true);

            migrationBuilder.AlterColumn<string>(
                name: "Date_Consultation_Avocat",
                table: "DisciplineBudgetaires",
                type: "NVARCHAR2(2000)",
                nullable: true,
                oldClrType: typeof(DateTime),
                oldType: "TIMESTAMP(7)",
                oldNullable: true);

            migrationBuilder.AlterColumn<string>(
                name: "Date_Conclusions_Ministere_Public",
                table: "DisciplineBudgetaires",
                type: "NVARCHAR2(2000)",
                nullable: true,
                oldClrType: typeof(DateTime),
                oldType: "TIMESTAMP(7)",
                oldNullable: true);

            migrationBuilder.AlterColumn<string>(
                name: "Date_Audience_Prononce_Jugement",
                table: "DisciplineBudgetaires",
                type: "NVARCHAR2(2000)",
                nullable: true,
                oldClrType: typeof(DateTime),
                oldType: "TIMESTAMP(7)",
                oldNullable: true);

            migrationBuilder.AlterColumn<string>(
                name: "Date_Audience_Jugement",
                table: "DisciplineBudgetaires",
                type: "NVARCHAR2(2000)",
                nullable: true,
                oldClrType: typeof(DateTime),
                oldType: "TIMESTAMP(7)",
                oldNullable: true);
        }
    }
}
