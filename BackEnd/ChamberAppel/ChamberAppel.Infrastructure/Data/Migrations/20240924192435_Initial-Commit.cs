using System;
using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace ChamberAppel.Infrastructure.Migrations
{
    /// <inheritdoc />
    public partial class InitialCommit : Migration
    {
        /// <inheritdoc />
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.CreateTable(
                name: "CRCs",
                columns: table => new
                {
                    Id = table.Column<Guid>(type: "RAW(16)", nullable: false),
                    Code = table.Column<string>(type: "NVARCHAR2(80)", maxLength: 80, nullable: true),
                    Label = table.Column<string>(type: "NVARCHAR2(150)", maxLength: 150, nullable: false),
                    Description = table.Column<string>(type: "NVARCHAR2(255)", maxLength: 255, nullable: true),
                    IsActive = table.Column<int>(type: "NUMBER(10)", nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_CRCs", x => x.Id);
                });

            migrationBuilder.CreateTable(
                name: "DisciplineBudgetaires",
                columns: table => new
                {
                    Id = table.Column<Guid>(type: "RAW(16)", nullable: false),
                    Numero_de_dossier = table.Column<string>(type: "NVARCHAR2(2000)", nullable: true),
                    Appelant = table.Column<string>(type: "NVARCHAR2(2000)", nullable: true),
                    Numero_de_verdict_appelant = table.Column<string>(type: "NVARCHAR2(2000)", nullable: true),
                    Publie_le = table.Column<DateTime>(type: "TIMESTAMP(7)", nullable: true),
                    A_propos_du_CRC_de_la_region = table.Column<string>(type: "NVARCHAR2(2000)", nullable: true),
                    Centre_comptable = table.Column<string>(type: "NVARCHAR2(2000)", nullable: true),
                    Date_enregistrement_de_la_requete_aupres_du_CRC = table.Column<DateTime>(type: "TIMESTAMP(7)", nullable: true),
                    Date_et_numero_de_la_requete_du_ministere_public = table.Column<string>(type: "NVARCHAR2(2000)", nullable: true),
                    Date_et_numero_de_ordre_de_nomination_du_conseiller_programme = table.Column<string>(type: "NVARCHAR2(2000)", nullable: true),
                    Conseiller_rapporteur = table.Column<string>(type: "NVARCHAR2(2000)", nullable: true),
                    Date_et_numero_de_arrete_designant_le_rapporteur_successeur = table.Column<string>(type: "NVARCHAR2(2000)", nullable: true),
                    Conseiller_rapporteur_successeur = table.Column<string>(type: "NVARCHAR2(2000)", nullable: true),
                    La_date_a_laquelle_la_petition_a_ete_envoyee_aux_parties = table.Column<string>(type: "NVARCHAR2(2000)", nullable: true),
                    Parties = table.Column<string>(type: "NVARCHAR2(2000)", nullable: true),
                    Date_de_demande_de_documents_complementaires = table.Column<DateTime>(type: "TIMESTAMP(7)", nullable: true),
                    La_date_a_laquelle_observateur_a_ete_convoque_a_audience = table.Column<DateTime>(type: "TIMESTAMP(7)", nullable: true),
                    Date_de_realisation_de_la_recherche_sur_le_terrain = table.Column<DateTime>(type: "TIMESTAMP(7)", nullable: true),
                    Date_a_laquelle_le_rapport_a_ete_prepare = table.Column<DateTime>(type: "TIMESTAMP(7)", nullable: true),
                    La_date_a_laquelle_le_dossier_a_ete_transmis_au_ministere_public = table.Column<DateTime>(type: "TIMESTAMP(7)", nullable: true),
                    Date_et_numero_des_conclusions_du_ministere_public = table.Column<string>(type: "NVARCHAR2(2000)", nullable: true),
                    Date_et_numero_des_conclusions_du_parquet = table.Column<string>(type: "NVARCHAR2(2000)", nullable: true),
                    Date_a_laquelle_le_suiveur_a_reçu_la_convocation_pour_inspection = table.Column<DateTime>(type: "TIMESTAMP(7)", nullable: true),
                    Date_a_laquelle_avocat_a_recu_la_convocation_pour_inspection = table.Column<DateTime>(type: "TIMESTAMP(7)", nullable: true),
                    Date_a_laquelle_le_suiveur_a_ete_informe = table.Column<DateTime>(type: "TIMESTAMP(7)", nullable: true),
                    Date_a_laquelle_avocat_a_ete_informe = table.Column<DateTime>(type: "TIMESTAMP(7)", nullable: true),
                    Date_a_laquelle_le_dossier_a_ete_renvoye_par_le_bureau_central_de_contrôle = table.Column<DateTime>(type: "TIMESTAMP(7)", nullable: true),
                    Convoquer_observateur_et_avocat_pour_assister_a_audience_de_determination_de_la_peine = table.Column<string>(type: "NVARCHAR2(2000)", nullable: true),
                    Date_audience_du_jugement = table.Column<DateTime>(type: "TIMESTAMP(7)", nullable: true),
                    Date_de_audience_de_determination_de_la_peine = table.Column<DateTime>(type: "TIMESTAMP(7)", nullable: true),
                    Operateur_de_decision = table.Column<string>(type: "NVARCHAR2(2000)", nullable: true),
                    Numero_de_resolution = table.Column<string>(type: "NVARCHAR2(2000)", nullable: true),
                    La_date_a_laquelle_la_decision_a_ete_envoyee_pour_notification_aux_parties = table.Column<DateTime>(type: "TIMESTAMP(7)", nullable: true),
                    La_date_a_laquelle_le_comptable_a_reçu_une_copie_de_la_decision = table.Column<DateTime>(type: "TIMESTAMP(7)", nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_DisciplineBudgetaires", x => x.Id);
                });

            migrationBuilder.CreateTable(
                name: "Permissions",
                columns: table => new
                {
                    Id = table.Column<Guid>(type: "RAW(16)", nullable: false),
                    Groupe = table.Column<string>(type: "NVARCHAR2(2000)", nullable: false),
                    Code = table.Column<string>(type: "NVARCHAR2(80)", maxLength: 80, nullable: true),
                    Label = table.Column<string>(type: "NVARCHAR2(150)", maxLength: 150, nullable: false),
                    Description = table.Column<string>(type: "NVARCHAR2(255)", maxLength: 255, nullable: true),
                    IsActive = table.Column<int>(type: "NUMBER(10)", nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_Permissions", x => x.Id);
                });

            migrationBuilder.CreateTable(
                name: "Roles",
                columns: table => new
                {
                    Id = table.Column<Guid>(type: "RAW(16)", nullable: false),
                    Code = table.Column<string>(type: "NVARCHAR2(80)", maxLength: 80, nullable: true),
                    Label = table.Column<string>(type: "NVARCHAR2(150)", maxLength: 150, nullable: false),
                    Description = table.Column<string>(type: "NVARCHAR2(255)", maxLength: 255, nullable: true),
                    IsActive = table.Column<int>(type: "NUMBER(10)", nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_Roles", x => x.Id);
                });

            migrationBuilder.CreateTable(
                name: "TypeGrades",
                columns: table => new
                {
                    Id = table.Column<Guid>(type: "RAW(16)", nullable: false),
                    Code = table.Column<string>(type: "NVARCHAR2(80)", maxLength: 80, nullable: true),
                    Label = table.Column<string>(type: "NVARCHAR2(150)", maxLength: 150, nullable: false),
                    Description = table.Column<string>(type: "NVARCHAR2(255)", maxLength: 255, nullable: true),
                    IsActive = table.Column<int>(type: "NUMBER(10)", nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_TypeGrades", x => x.Id);
                });

            migrationBuilder.CreateTable(
                name: "TypeUtilisateurs",
                columns: table => new
                {
                    Id = table.Column<Guid>(type: "RAW(16)", nullable: false),
                    Code = table.Column<string>(type: "NVARCHAR2(80)", maxLength: 80, nullable: true),
                    Label = table.Column<string>(type: "NVARCHAR2(150)", maxLength: 150, nullable: false),
                    Description = table.Column<string>(type: "NVARCHAR2(255)", maxLength: 255, nullable: true),
                    IsActive = table.Column<int>(type: "NUMBER(10)", nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_TypeUtilisateurs", x => x.Id);
                });

            migrationBuilder.CreateTable(
                name: "UtilisateurLoggings",
                columns: table => new
                {
                    Id = table.Column<Guid>(type: "RAW(16)", nullable: false),
                    UtilisateurId = table.Column<Guid>(type: "RAW(16)", nullable: false),
                    Action = table.Column<string>(type: "NVARCHAR2(255)", maxLength: 255, nullable: false),
                    DateLog = table.Column<DateTime>(type: "TIMESTAMP(7)", nullable: false),
                    Description = table.Column<string>(type: "NVARCHAR2(500)", maxLength: 500, nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_UtilisateurLoggings", x => x.Id);
                });

            migrationBuilder.CreateTable(
                name: "Utilisateurs",
                columns: table => new
                {
                    Id = table.Column<Guid>(type: "RAW(16)", nullable: false),
                    Nom = table.Column<string>(type: "NVARCHAR2(20)", maxLength: 20, nullable: false),
                    Prenom = table.Column<string>(type: "NVARCHAR2(20)", maxLength: 20, nullable: false),
                    NomArabe = table.Column<string>(type: "NVARCHAR2(20)", maxLength: 20, nullable: true),
                    PrenomArabe = table.Column<string>(type: "NVARCHAR2(20)", maxLength: 20, nullable: true),
                    Email = table.Column<string>(type: "NVARCHAR2(80)", maxLength: 80, nullable: false),
                    Login = table.Column<string>(type: "NVARCHAR2(80)", maxLength: 80, nullable: false),
                    Password = table.Column<string>(type: "NVARCHAR2(255)", maxLength: 255, nullable: false),
                    TypeUtilisateurId = table.Column<Guid>(type: "RAW(16)", nullable: false),
                    TypeGradeId = table.Column<Guid>(type: "RAW(16)", nullable: false),
                    UpdatedBy = table.Column<string>(type: "NVARCHAR2(80)", maxLength: 80, nullable: true),
                    UpdateTime = table.Column<DateTime>(type: "TIMESTAMP(7)", nullable: true),
                    IsActive = table.Column<int>(type: "NUMBER(10)", nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_Utilisateurs", x => x.Id);
                });

            migrationBuilder.CreateTable(
                name: "RolePermissions",
                columns: table => new
                {
                    Id = table.Column<Guid>(type: "RAW(16)", nullable: false),
                    RoleId = table.Column<Guid>(type: "RAW(16)", nullable: false),
                    PermissionId = table.Column<Guid>(type: "RAW(16)", nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_RolePermissions", x => x.Id);
                    table.ForeignKey(
                        name: "FK_RolePermissions_Permissions_PermissionId",
                        column: x => x.PermissionId,
                        principalTable: "Permissions",
                        principalColumn: "Id",
                        onDelete: ReferentialAction.Cascade);
                    table.ForeignKey(
                        name: "FK_RolePermissions_Roles_RoleId",
                        column: x => x.RoleId,
                        principalTable: "Roles",
                        principalColumn: "Id",
                        onDelete: ReferentialAction.Cascade);
                });

            migrationBuilder.CreateTable(
                name: "UtilisateurPermissions",
                columns: table => new
                {
                    Id = table.Column<Guid>(type: "RAW(16)", nullable: false),
                    UtilisateurId = table.Column<Guid>(type: "RAW(16)", nullable: false),
                    PermissionId = table.Column<Guid>(type: "RAW(16)", nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_UtilisateurPermissions", x => x.Id);
                    table.ForeignKey(
                        name: "FK_UtilisateurPermissions_Permissions_PermissionId",
                        column: x => x.PermissionId,
                        principalTable: "Permissions",
                        principalColumn: "Id",
                        onDelete: ReferentialAction.Cascade);
                    table.ForeignKey(
                        name: "FK_UtilisateurPermissions_Utilisateurs_UtilisateurId",
                        column: x => x.UtilisateurId,
                        principalTable: "Utilisateurs",
                        principalColumn: "Id",
                        onDelete: ReferentialAction.Cascade);
                });

            migrationBuilder.CreateTable(
                name: "UtilisateurRoles",
                columns: table => new
                {
                    Id = table.Column<Guid>(type: "RAW(16)", nullable: false),
                    UtilisateurId = table.Column<Guid>(type: "RAW(16)", nullable: false),
                    RoleId = table.Column<Guid>(type: "RAW(16)", nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_UtilisateurRoles", x => x.Id);
                    table.ForeignKey(
                        name: "FK_UtilisateurRoles_Roles_RoleId",
                        column: x => x.RoleId,
                        principalTable: "Roles",
                        principalColumn: "Id",
                        onDelete: ReferentialAction.Cascade);
                    table.ForeignKey(
                        name: "FK_UtilisateurRoles_Utilisateurs_UtilisateurId",
                        column: x => x.UtilisateurId,
                        principalTable: "Utilisateurs",
                        principalColumn: "Id",
                        onDelete: ReferentialAction.Cascade);
                });

            migrationBuilder.CreateIndex(
                name: "IX_RolePermissions_PermissionId",
                table: "RolePermissions",
                column: "PermissionId");

            migrationBuilder.CreateIndex(
                name: "IX_RolePermissions_RoleId",
                table: "RolePermissions",
                column: "RoleId");

            migrationBuilder.CreateIndex(
                name: "IX_UtilisateurPermissions_PermissionId",
                table: "UtilisateurPermissions",
                column: "PermissionId");

            migrationBuilder.CreateIndex(
                name: "IX_UtilisateurPermissions_UtilisateurId",
                table: "UtilisateurPermissions",
                column: "UtilisateurId");

            migrationBuilder.CreateIndex(
                name: "IX_UtilisateurRoles_RoleId",
                table: "UtilisateurRoles",
                column: "RoleId");

            migrationBuilder.CreateIndex(
                name: "IX_UtilisateurRoles_UtilisateurId",
                table: "UtilisateurRoles",
                column: "UtilisateurId");
        }

        /// <inheritdoc />
        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropTable(
                name: "CRCs");

            migrationBuilder.DropTable(
                name: "DisciplineBudgetaires");

            migrationBuilder.DropTable(
                name: "RolePermissions");

            migrationBuilder.DropTable(
                name: "TypeGrades");

            migrationBuilder.DropTable(
                name: "TypeUtilisateurs");

            migrationBuilder.DropTable(
                name: "UtilisateurLoggings");

            migrationBuilder.DropTable(
                name: "UtilisateurPermissions");

            migrationBuilder.DropTable(
                name: "UtilisateurRoles");

            migrationBuilder.DropTable(
                name: "Permissions");

            migrationBuilder.DropTable(
                name: "Roles");

            migrationBuilder.DropTable(
                name: "Utilisateurs");
        }
    }
}
