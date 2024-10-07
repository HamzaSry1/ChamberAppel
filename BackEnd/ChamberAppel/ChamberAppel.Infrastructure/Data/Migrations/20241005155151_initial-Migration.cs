using System;
using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace ChamberAppel.Infrastructure.Migrations
{
    /// <inheritdoc />
    public partial class initialMigration : Migration
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
                name: "DisciplineBudgetaireTemp",
                columns: table => new
                {
                    Id = table.Column<Guid>(type: "RAW(16)", nullable: false),
                    Numero_Dossier = table.Column<string>(type: "NVARCHAR2(2000)", nullable: true),
                    Appelant = table.Column<string>(type: "NVARCHAR2(2000)", nullable: true),
                    Numero_Jugement_Faisant_Objet_De_Appel = table.Column<string>(type: "NVARCHAR2(2000)", nullable: true),
                    Emis_En_Date_Du = table.Column<string>(type: "NVARCHAR2(2000)", nullable: true),
                    CRC = table.Column<string>(type: "NVARCHAR2(2000)", nullable: true),
                    Centre_Comptable = table.Column<string>(type: "NVARCHAR2(2000)", nullable: true),
                    Date_Enregistrement_Requete_Cour_Regionale_Des_Comptes = table.Column<string>(type: "NVARCHAR2(2000)", nullable: true),
                    Date_Requisition_Ministere_Public = table.Column<string>(type: "NVARCHAR2(2000)", nullable: true),
                    Numero_Requisition_Ministere_Public = table.Column<string>(type: "NVARCHAR2(2000)", nullable: true),
                    Date_Ordonnance_Designation_Conseiller_Rapporteur = table.Column<string>(type: "NVARCHAR2(2000)", nullable: true),
                    Numero_Ordonnance_Designation_Conseiller_Rapporteur = table.Column<string>(type: "NVARCHAR2(2000)", nullable: true),
                    Conseiller_Rapporteur = table.Column<string>(type: "NVARCHAR2(2000)", nullable: true),
                    Date_Ordonnance_Designation_Conseiller_Rapporteur_Remplacant = table.Column<string>(type: "NVARCHAR2(2000)", nullable: true),
                    Numero_Ordonnance_Designation_Conseiller_Rapporteur_Remplacant = table.Column<string>(type: "NVARCHAR2(2000)", nullable: true),
                    Conseiller_Rapporteur_Remplacant = table.Column<string>(type: "NVARCHAR2(2000)", nullable: true),
                    Date_Envoi_Requete_Parties = table.Column<string>(type: "NVARCHAR2(2000)", nullable: true),
                    Parties_Agent_du_Roi_au_CRC = table.Column<string>(type: "NVARCHAR2(2000)", nullable: true),
                    Parties_Entrepot_Regional = table.Column<string>(type: "NVARCHAR2(2000)", nullable: true),
                    Parties_Travailleur_du_territoire = table.Column<string>(type: "NVARCHAR2(2000)", nullable: true),
                    Parties_President_de_la_Commune = table.Column<string>(type: "NVARCHAR2(2000)", nullable: true),
                    Date_de_reception_par_les_parties_Agent_du_Roi_au_CRC = table.Column<string>(type: "NVARCHAR2(2000)", nullable: true),
                    Date_de_reception_par_les_parties_Entrepot_Regional = table.Column<string>(type: "NVARCHAR2(2000)", nullable: true),
                    Date_de_reception_par_les_parties_Travailleur_du_territoire = table.Column<string>(type: "NVARCHAR2(2000)", nullable: true),
                    Date_de_reception_par_les_parties_President_de_la_Commune = table.Column<string>(type: "NVARCHAR2(2000)", nullable: true),
                    Reponse_au_memoire_d_appel_Agent_du_Roi_au_CRC = table.Column<string>(type: "NVARCHAR2(2000)", nullable: true),
                    Reponse_au_memoire_d_appel_Entrepot_Regional = table.Column<string>(type: "NVARCHAR2(2000)", nullable: true),
                    Reponse_au_memoire_d_appel_Travailleur_du_territoire = table.Column<string>(type: "NVARCHAR2(2000)", nullable: true),
                    Reponse_au_memoire_d_appel_President_de_la_Commune = table.Column<string>(type: "NVARCHAR2(2000)", nullable: true),
                    Date_Demande_Documents_Supplementaires = table.Column<string>(type: "NVARCHAR2(2000)", nullable: true),
                    Date_Convocation_Interesse_Audience = table.Column<string>(type: "NVARCHAR2(2000)", nullable: true),
                    Date_Enquete_Sur_Le_Terrain = table.Column<string>(type: "NVARCHAR2(2000)", nullable: true),
                    Date_Preparation_Rapport = table.Column<string>(type: "NVARCHAR2(2000)", nullable: true),
                    Date_Transmission_Dossier_Ministere_Public = table.Column<string>(type: "NVARCHAR2(2000)", nullable: true),
                    Date_Conclusions_Ministere_Public = table.Column<string>(type: "NVARCHAR2(2000)", nullable: true),
                    Numero_Conclusions_Ministere_Public = table.Column<string>(type: "NVARCHAR2(2000)", nullable: true),
                    Date_Reception_Convocation_Interesse_Consultation = table.Column<string>(type: "NVARCHAR2(2000)", nullable: true),
                    Date_Reception_Convocation_Avocat_Consultation = table.Column<string>(type: "NVARCHAR2(2000)", nullable: true),
                    Date_Consultation_Interesse = table.Column<string>(type: "NVARCHAR2(2000)", nullable: true),
                    Date_Consultation_Avocat = table.Column<string>(type: "NVARCHAR2(2000)", nullable: true),
                    Date_Retour_Dossier_Greffe_Central = table.Column<string>(type: "NVARCHAR2(2000)", nullable: true),
                    Convocation_Interesse_Audience_Jugement = table.Column<string>(type: "NVARCHAR2(2000)", nullable: true),
                    Convocation_Avocat_Audience_Jugement = table.Column<string>(type: "NVARCHAR2(2000)", nullable: true),
                    Date_Audience_Jugement = table.Column<string>(type: "NVARCHAR2(2000)", nullable: true),
                    Convocation_Avocat_Prononce_Jugement = table.Column<string>(type: "NVARCHAR2(2000)", nullable: true),
                    Convocation_Interesse_Prononce_Jugement = table.Column<string>(type: "NVARCHAR2(2000)", nullable: true),
                    Date_Audience_Prononce_Jugement = table.Column<string>(type: "NVARCHAR2(2000)", nullable: true),
                    Dispositif_Decision = table.Column<string>(type: "NVARCHAR2(2000)", nullable: true),
                    Numero_Decision = table.Column<string>(type: "NVARCHAR2(2000)", nullable: true),
                    Date_Envoi_Decision_Notification_Parties = table.Column<string>(type: "NVARCHAR2(2000)", nullable: true),
                    Date_Reception_Comptable_Copie_Decision = table.Column<string>(type: "NVARCHAR2(2000)", nullable: true),
                    UpdatedBy = table.Column<string>(type: "NVARCHAR2(2000)", nullable: true),
                    UpdateTime = table.Column<string>(type: "NVARCHAR2(2000)", nullable: true),
                    RowNumber = table.Column<int>(type: "NUMBER(10)", nullable: false),
                    RowError = table.Column<string>(type: "NVARCHAR2(2000)", nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_DisciplineBudgetaireTemp", x => x.Id);
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
                    DateLogging = table.Column<DateTime>(type: "TIMESTAMP(7)", nullable: false),
                    Description = table.Column<string>(type: "NVARCHAR2(500)", maxLength: 500, nullable: true),
                    IpAddress = table.Column<string>(type: "NVARCHAR2(45)", maxLength: 45, nullable: true),
                    RequestPath = table.Column<string>(type: "NVARCHAR2(2000)", maxLength: 2000, nullable: true),
                    HttpMethod = table.Column<string>(type: "NVARCHAR2(10)", maxLength: 10, nullable: true),
                    UserAgent = table.Column<string>(type: "NVARCHAR2(500)", maxLength: 500, nullable: true),
                    JwtToken = table.Column<string>(type: "NCLOB", maxLength: 2500, nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_UtilisateurLoggings", x => x.Id);
                });

            migrationBuilder.CreateTable(
                name: "DisciplineBudgetaires",
                columns: table => new
                {
                    Id = table.Column<Guid>(type: "RAW(16)", nullable: false),
                    Numero_Dossier = table.Column<string>(type: "NVARCHAR2(2000)", nullable: true),
                    Appelant = table.Column<string>(type: "NVARCHAR2(2000)", nullable: true),
                    Numero_Jugement_Faisant_Objet_De_Appel = table.Column<string>(type: "NVARCHAR2(2000)", nullable: true),
                    Emis_En_Date_Du = table.Column<string>(type: "NVARCHAR2(2000)", nullable: true),
                    IdCRC = table.Column<Guid>(type: "RAW(16)", nullable: false),
                    Centre_Comptable = table.Column<string>(type: "NVARCHAR2(2000)", nullable: true),
                    Date_Enregistrement_Requete_Cour_Regionale_Des_Comptes = table.Column<string>(type: "NVARCHAR2(2000)", nullable: true),
                    Date_Requisition_Ministere_Public = table.Column<string>(type: "NVARCHAR2(2000)", nullable: true),
                    Numero_Requisition_Ministere_Public = table.Column<string>(type: "NVARCHAR2(2000)", nullable: true),
                    Date_Ordonnance_Designation_Conseiller_Rapporteur = table.Column<string>(type: "NVARCHAR2(2000)", nullable: true),
                    Numero_Ordonnance_Designation_Conseiller_Rapporteur = table.Column<string>(type: "NVARCHAR2(2000)", nullable: true),
                    Conseiller_Rapporteur = table.Column<string>(type: "NVARCHAR2(2000)", nullable: true),
                    Date_Ordonnance_Designation_Conseiller_Rapporteur_Remplacant = table.Column<string>(type: "NVARCHAR2(2000)", nullable: true),
                    Numero_Ordonnance_Designation_Conseiller_Rapporteur_Remplacant = table.Column<string>(type: "NVARCHAR2(2000)", nullable: true),
                    Conseiller_Rapporteur_Remplacant = table.Column<string>(type: "NVARCHAR2(2000)", nullable: true),
                    Date_Envoi_Requete_Parties = table.Column<string>(type: "NVARCHAR2(2000)", nullable: true),
                    Parties_Agent_du_Roi_au_CRC = table.Column<string>(type: "NVARCHAR2(2000)", nullable: true),
                    Parties_Entrepot_Regional = table.Column<string>(type: "NVARCHAR2(2000)", nullable: true),
                    Parties_Travailleur_du_territoire = table.Column<string>(type: "NVARCHAR2(2000)", nullable: true),
                    Parties_President_de_la_Commune = table.Column<string>(type: "NVARCHAR2(2000)", nullable: true),
                    Date_de_reception_par_les_parties_Agent_du_Roi_au_CRC = table.Column<DateTime>(type: "TIMESTAMP(7)", nullable: true),
                    Date_de_reception_par_les_parties_Entrepot_Regional = table.Column<DateTime>(type: "TIMESTAMP(7)", nullable: true),
                    Date_de_reception_par_les_parties_Travailleur_du_territoire = table.Column<DateTime>(type: "TIMESTAMP(7)", nullable: true),
                    Date_de_reception_par_les_parties_President_de_la_Commune = table.Column<DateTime>(type: "TIMESTAMP(7)", nullable: true),
                    Reponse_au_memoire_d_appel_Agent_du_Roi_au_CRC = table.Column<string>(type: "NVARCHAR2(2000)", nullable: true),
                    Reponse_au_memoire_d_appel_Entrepot_Regional = table.Column<string>(type: "NVARCHAR2(2000)", nullable: true),
                    Reponse_au_memoire_d_appel_Travailleur_du_territoire = table.Column<string>(type: "NVARCHAR2(2000)", nullable: true),
                    Reponse_au_memoire_d_appel_President_de_la_Commune = table.Column<string>(type: "NVARCHAR2(2000)", nullable: true),
                    Date_Demande_Documents_Supplementaires = table.Column<string>(type: "NVARCHAR2(2000)", nullable: true),
                    Date_Convocation_Interesse_Audience = table.Column<string>(type: "NVARCHAR2(2000)", nullable: true),
                    Date_Enquete_Sur_Le_Terrain = table.Column<string>(type: "NVARCHAR2(2000)", nullable: true),
                    Date_Preparation_Rapport = table.Column<string>(type: "NVARCHAR2(2000)", nullable: true),
                    Date_Transmission_Dossier_Ministere_Public = table.Column<string>(type: "NVARCHAR2(2000)", nullable: true),
                    Date_Conclusions_Ministere_Public = table.Column<string>(type: "NVARCHAR2(2000)", nullable: true),
                    Numero_Conclusions_Ministere_Public = table.Column<string>(type: "NVARCHAR2(2000)", nullable: true),
                    Date_Reception_Convocation_Interesse_Consultation = table.Column<string>(type: "NVARCHAR2(2000)", nullable: true),
                    Date_Reception_Convocation_Avocat_Consultation = table.Column<string>(type: "NVARCHAR2(2000)", nullable: true),
                    Date_Consultation_Interesse = table.Column<string>(type: "NVARCHAR2(2000)", nullable: true),
                    Date_Consultation_Avocat = table.Column<string>(type: "NVARCHAR2(2000)", nullable: true),
                    Date_Retour_Dossier_Greffe_Central = table.Column<string>(type: "NVARCHAR2(2000)", nullable: true),
                    Convocation_Interesse_Audience_Jugement = table.Column<string>(type: "NVARCHAR2(2000)", nullable: true),
                    Convocation_Avocat_Audience_Jugement = table.Column<string>(type: "NVARCHAR2(2000)", nullable: true),
                    Date_Audience_Jugement = table.Column<string>(type: "NVARCHAR2(2000)", nullable: true),
                    Convocation_Avocat_Prononce_Jugement = table.Column<string>(type: "NVARCHAR2(2000)", nullable: true),
                    Convocation_Interesse_Prononce_Jugement = table.Column<string>(type: "NVARCHAR2(2000)", nullable: true),
                    Date_Audience_Prononce_Jugement = table.Column<string>(type: "NVARCHAR2(2000)", nullable: true),
                    Dispositif_Decision = table.Column<string>(type: "NVARCHAR2(2000)", nullable: true),
                    Numero_Decision = table.Column<string>(type: "NVARCHAR2(2000)", nullable: true),
                    Date_Envoi_Decision_Notification_Parties = table.Column<string>(type: "NVARCHAR2(2000)", nullable: true),
                    Date_Reception_Comptable_Copie_Decision = table.Column<string>(type: "NVARCHAR2(2000)", nullable: true),
                    UpdatedBy = table.Column<string>(type: "NVARCHAR2(80)", maxLength: 80, nullable: true),
                    UpdateTime = table.Column<DateTime>(type: "TIMESTAMP(7)", nullable: true),
                    IsActive = table.Column<int>(type: "NUMBER(10)", nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_DisciplineBudgetaires", x => x.Id);
                    table.ForeignKey(
                        name: "FK_DisciplineBudgetaires_CRCs_IdCRC",
                        column: x => x.IdCRC,
                        principalTable: "CRCs",
                        principalColumn: "Id",
                        onDelete: ReferentialAction.Cascade);
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
                    table.ForeignKey(
                        name: "FK_Utilisateurs_TypeGrades_TypeGradeId",
                        column: x => x.TypeGradeId,
                        principalTable: "TypeGrades",
                        principalColumn: "Id",
                        onDelete: ReferentialAction.Cascade);
                    table.ForeignKey(
                        name: "FK_Utilisateurs_TypeUtilisateurs_TypeUtilisateurId",
                        column: x => x.TypeUtilisateurId,
                        principalTable: "TypeUtilisateurs",
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
                name: "IX_DisciplineBudgetaires_IdCRC",
                table: "DisciplineBudgetaires",
                column: "IdCRC");

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

            migrationBuilder.CreateIndex(
                name: "IX_Utilisateurs_TypeGradeId",
                table: "Utilisateurs",
                column: "TypeGradeId");

            migrationBuilder.CreateIndex(
                name: "IX_Utilisateurs_TypeUtilisateurId",
                table: "Utilisateurs",
                column: "TypeUtilisateurId");
        }

        /// <inheritdoc />
        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropTable(
                name: "DisciplineBudgetaireTemp");

            migrationBuilder.DropTable(
                name: "DisciplineBudgetaires");

            migrationBuilder.DropTable(
                name: "RolePermissions");

            migrationBuilder.DropTable(
                name: "UtilisateurLoggings");

            migrationBuilder.DropTable(
                name: "UtilisateurPermissions");

            migrationBuilder.DropTable(
                name: "UtilisateurRoles");

            migrationBuilder.DropTable(
                name: "CRCs");

            migrationBuilder.DropTable(
                name: "Permissions");

            migrationBuilder.DropTable(
                name: "Roles");

            migrationBuilder.DropTable(
                name: "Utilisateurs");

            migrationBuilder.DropTable(
                name: "TypeGrades");

            migrationBuilder.DropTable(
                name: "TypeUtilisateurs");
        }
    }
}
