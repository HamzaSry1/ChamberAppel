--------------------------------------------------------
--  Fichier créé - jeudi-septembre-26-2024   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table CRCs
--------------------------------------------------------

  CREATE TABLE "SRAIDIHAMZA"."CRCs" 
   (	"Id" RAW(16), 
	"Code" NVARCHAR2(80), 
	"Label" NVARCHAR2(150), 
	"Description" NVARCHAR2(255), 
	"IsActive" NUMBER(10,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table DisciplineBudgetaires
--------------------------------------------------------

  CREATE TABLE "SRAIDIHAMZA"."DisciplineBudgetaires" 
   (	"Id" RAW(16), 
	"Numero_Dossier" NVARCHAR2(2000), 
	"Appelant" NVARCHAR2(2000), 
	"Numero_Jugement_Faisant_Objet_De_Appel" NVARCHAR2(2000), 
	"Emis_En_Date_Du" NVARCHAR2(2000), 
	"IdCRC" RAW(16), 
	"Centre_Comptable" NVARCHAR2(2000), 
	"Date_Enregistrement_Requete_Cour_Regionale_Des_Comptes" NVARCHAR2(2000), 
	"Date_Requisition_Ministere_Public" NVARCHAR2(2000), 
	"Numero_Requisition_Ministere_Public" NVARCHAR2(2000), 
	"Date_Ordonnance_Designation_Conseiller_Rapporteur" NVARCHAR2(2000), 
	"Numero_Ordonnance_Designation_Conseiller_Rapporteur" NVARCHAR2(2000), 
	"Conseiller_Rapporteur" NVARCHAR2(2000), 
	"Date_Ordonnance_Designation_Conseiller_Rapporteur_Remplacant" NVARCHAR2(2000), 
	"Numero_Ordonnance_Designation_Conseiller_Rapporteur_Remplacant" NVARCHAR2(2000), 
	"Conseiller_Rapporteur_Remplacant" NVARCHAR2(2000), 
	"Date_Envoi_Requete_Parties" NVARCHAR2(2000), 
	"Parties_Agent_du_Roi_au_CRC" NVARCHAR2(2000), 
	"Parties_Entrepot_Regional" NVARCHAR2(2000), 
	"Parties_Travailleur_du_territoire" NVARCHAR2(2000), 
	"Parties_President_de_la_Commune" NVARCHAR2(2000), 
	"Date_de_reception_par_les_parties_Agent_du_Roi_au_CRC" TIMESTAMP (7), 
	"Date_de_reception_par_les_parties_Entrepot_Regional" TIMESTAMP (7), 
	"Date_de_reception_par_les_parties_Travailleur_du_territoire" TIMESTAMP (7), 
	"Date_de_reception_par_les_parties_President_de_la_Commune" TIMESTAMP (7), 
	"Reponse_au_memoire_d_appel_Agent_du_Roi_au_CRC" NVARCHAR2(2000), 
	"Reponse_au_memoire_d_appel_Entrepot_Regional" NVARCHAR2(2000), 
	"Reponse_au_memoire_d_appel_Travailleur_du_territoire" NVARCHAR2(2000), 
	"Reponse_au_memoire_d_appel_President_de_la_Commune" NVARCHAR2(2000), 
	"Date_Demande_Documents_Supplementaires" NVARCHAR2(2000), 
	"Date_Convocation_Interesse_Audience" NVARCHAR2(2000), 
	"Date_Enquete_Sur_Le_Terrain" NVARCHAR2(2000), 
	"Date_Preparation_Rapport" NVARCHAR2(2000), 
	"Date_Transmission_Dossier_Ministere_Public" NVARCHAR2(2000), 
	"Date_Conclusions_Ministere_Public" NVARCHAR2(2000), 
	"Numero_Conclusions_Ministere_Public" NVARCHAR2(2000), 
	"Date_Reception_Convocation_Interesse_Consultation" NVARCHAR2(2000), 
	"Date_Reception_Convocation_Avocat_Consultation" NVARCHAR2(2000), 
	"Date_Consultation_Interesse" NVARCHAR2(2000), 
	"Date_Consultation_Avocat" NVARCHAR2(2000), 
	"Date_Retour_Dossier_Greffe_Central" NVARCHAR2(2000), 
	"Convocation_Interesse_Audience_Jugement" NVARCHAR2(2000), 
	"Convocation_Avocat_Audience_Jugement" NVARCHAR2(2000), 
	"Date_Audience_Jugement" NVARCHAR2(2000), 
	"Convocation_Avocat_Prononce_Jugement" NVARCHAR2(2000), 
	"Convocation_Interesse_Prononce_Jugement" NVARCHAR2(2000), 
	"Date_Audience_Prononce_Jugement" NVARCHAR2(2000), 
	"Dispositif_Decision" NVARCHAR2(2000), 
	"Numero_Decision" NVARCHAR2(2000), 
	"Date_Envoi_Decision_Notification_Parties" NVARCHAR2(2000), 
	"Date_Reception_Comptable_Copie_Decision" NVARCHAR2(2000)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table __EFMigrationsHistory
--------------------------------------------------------

  CREATE TABLE "SRAIDIHAMZA"."__EFMigrationsHistory" 
   (	"MigrationId" NVARCHAR2(150), 
	"ProductVersion" NVARCHAR2(32)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table Permissions
--------------------------------------------------------

  CREATE TABLE "SRAIDIHAMZA"."Permissions" 
   (	"Id" RAW(16), 
	"Groupe" NVARCHAR2(2000), 
	"Code" NVARCHAR2(80), 
	"Label" NVARCHAR2(150), 
	"Description" NVARCHAR2(255), 
	"IsActive" NUMBER(10,0)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table RolePermissions
--------------------------------------------------------

  CREATE TABLE "SRAIDIHAMZA"."RolePermissions" 
   (	"Id" RAW(16), 
	"RoleId" RAW(16), 
	"PermissionId" RAW(16)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table Roles
--------------------------------------------------------

  CREATE TABLE "SRAIDIHAMZA"."Roles" 
   (	"Id" RAW(16), 
	"Code" NVARCHAR2(80), 
	"Label" NVARCHAR2(150), 
	"Description" NVARCHAR2(255), 
	"IsActive" NUMBER(10,0)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table TypeGrades
--------------------------------------------------------

  CREATE TABLE "SRAIDIHAMZA"."TypeGrades" 
   (	"Id" RAW(16), 
	"Code" NVARCHAR2(80), 
	"Label" NVARCHAR2(150), 
	"Description" NVARCHAR2(255), 
	"IsActive" NUMBER(10,0)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table TypeUtilisateurs
--------------------------------------------------------

  CREATE TABLE "SRAIDIHAMZA"."TypeUtilisateurs" 
   (	"Id" RAW(16), 
	"Code" NVARCHAR2(80), 
	"Label" NVARCHAR2(150), 
	"Description" NVARCHAR2(255), 
	"IsActive" NUMBER(10,0)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table UtilisateurLoggings
--------------------------------------------------------

  CREATE TABLE "SRAIDIHAMZA"."UtilisateurLoggings" 
   (	"Id" RAW(16), 
	"UtilisateurId" RAW(16), 
	"Action" NVARCHAR2(255), 
	"DateLog" TIMESTAMP (7), 
	"Description" NVARCHAR2(500)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table UtilisateurPermissions
--------------------------------------------------------

  CREATE TABLE "SRAIDIHAMZA"."UtilisateurPermissions" 
   (	"Id" RAW(16), 
	"UtilisateurId" RAW(16), 
	"PermissionId" RAW(16)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table UtilisateurRoles
--------------------------------------------------------

  CREATE TABLE "SRAIDIHAMZA"."UtilisateurRoles" 
   (	"Id" RAW(16), 
	"UtilisateurId" RAW(16), 
	"RoleId" RAW(16)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table Utilisateurs
--------------------------------------------------------

  CREATE TABLE "SRAIDIHAMZA"."Utilisateurs" 
   (	"Id" RAW(16), 
	"Nom" NVARCHAR2(20), 
	"Prenom" NVARCHAR2(20), 
	"NomArabe" NVARCHAR2(20), 
	"PrenomArabe" NVARCHAR2(20), 
	"Email" NVARCHAR2(80), 
	"Login" NVARCHAR2(80), 
	"Password" NVARCHAR2(255), 
	"TypeUtilisateurId" RAW(16), 
	"TypeGradeId" RAW(16), 
	"UpdatedBy" NVARCHAR2(80), 
	"UpdateTime" TIMESTAMP (7), 
	"IsActive" NUMBER(10,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
REM INSERTING into SRAIDIHAMZA."CRCs"
SET DEFINE OFF;
Insert into SRAIDIHAMZA."CRCs" ("Id","Code","Label","Description","IsActive") values ('4316EFC9F3E94E248AC01C641121C5B5',null,'Cour régionale des comptes de Rabat-Salé-Kénitra',null,'1');
Insert into SRAIDIHAMZA."CRCs" ("Id","Code","Label","Description","IsActive") values ('6A128049F3AF4AAB9C969122A345134A',null,'Cour régionale des comptes de Casablanca-Settat',null,'1');
Insert into SRAIDIHAMZA."CRCs" ("Id","Code","Label","Description","IsActive") values ('449205EE09504236B7A4C98D4393F23E',null,'Cour régionale des comptes de Fès-Meknès',null,'1');
Insert into SRAIDIHAMZA."CRCs" ("Id","Code","Label","Description","IsActive") values ('0B1DAF8F4FA04C8E99728459954D1C35',null,'Cour régionale des comptes de Marrakech-Safi',null,'1');
Insert into SRAIDIHAMZA."CRCs" ("Id","Code","Label","Description","IsActive") values ('521A71275E144B9CAF549AD14FBAC045',null,'Cour régionale des comptes de Tanger-Tétouan-Al Hoceima',null,'1');
Insert into SRAIDIHAMZA."CRCs" ("Id","Code","Label","Description","IsActive") values ('63F64E824C5D47799EA8631E8568A70E',null,'Cour régionale des comptes de Souss-Massa',null,'1');
Insert into SRAIDIHAMZA."CRCs" ("Id","Code","Label","Description","IsActive") values ('A3D1AA1C546243BB9E0722D09B7AA13E',null,'Cour régionale des comptes de l Oriental',null,'1');
Insert into SRAIDIHAMZA."CRCs" ("Id","Code","Label","Description","IsActive") values ('E382137CC408492CA6AA58D38CE249A8',null,'Cour régionale des comptes de Drâa-Tafilalet',null,'1');
Insert into SRAIDIHAMZA."CRCs" ("Id","Code","Label","Description","IsActive") values ('237107619B6249A6ABCD01F8E82D4D10',null,'Cour régionale des comptes de Beni Mellal-Khénifra',null,'1');
Insert into SRAIDIHAMZA."CRCs" ("Id","Code","Label","Description","IsActive") values ('23480B0E25E6451E888CC8B4B1C0A741',null,'Cour régionale des comptes de Guelmim-Oued Noun',null,'1');
Insert into SRAIDIHAMZA."CRCs" ("Id","Code","Label","Description","IsActive") values ('B44752F5335D48899445140B9B4E34D0',null,'Cour régionale des comptes de Laâyoune-Sakia El Hamra',null,'1');
Insert into SRAIDIHAMZA."CRCs" ("Id","Code","Label","Description","IsActive") values ('6C7510427F1841139BF0EBFC5F9BCB74',null,'Cour régionale des comptes de Dakhla-Oued Ed-Dahab',null,'1');
REM INSERTING into SRAIDIHAMZA."DisciplineBudgetaires"
SET DEFINE OFF;
REM INSERTING into SRAIDIHAMZA."__EFMigrationsHistory"
SET DEFINE OFF;
Insert into SRAIDIHAMZA."__EFMigrationsHistory" ("MigrationId","ProductVersion") values ('20240925182758_Initial-Migration','8.0.8');
REM INSERTING into SRAIDIHAMZA."Permissions"
SET DEFINE OFF;
REM INSERTING into SRAIDIHAMZA."RolePermissions"
SET DEFINE OFF;
REM INSERTING into SRAIDIHAMZA."Roles"
SET DEFINE OFF;
REM INSERTING into SRAIDIHAMZA."TypeGrades"
SET DEFINE OFF;
REM INSERTING into SRAIDIHAMZA."TypeUtilisateurs"
SET DEFINE OFF;
REM INSERTING into SRAIDIHAMZA."UtilisateurLoggings"
SET DEFINE OFF;
REM INSERTING into SRAIDIHAMZA."UtilisateurPermissions"
SET DEFINE OFF;
REM INSERTING into SRAIDIHAMZA."UtilisateurRoles"
SET DEFINE OFF;
REM INSERTING into SRAIDIHAMZA."Utilisateurs"
SET DEFINE OFF;
Insert into SRAIDIHAMZA."Utilisateurs" ("Id","Nom","Prenom","NomArabe","PrenomArabe","Email","Login","Password","TypeUtilisateurId","TypeGradeId","UpdatedBy","UpdateTime","IsActive") values ('645FA83F17576245B3FC2C963F66AFA6','system','administrateur',null,null,'admin@courdescomptes.ma','admin','17-D9-B7-C0-6B-78-58-19-82-0C-F0-F4-98-F2-0C-DF','00000000000000000000000000000000','00000000000000000000000000000000','admin',to_timestamp('26/09/24 19:21:26,341741900','DD/MM/RR HH24:MI:SSXFF'),'1');
--------------------------------------------------------
--  DDL for Index IX_UtilisateurRoles_RoleId
--------------------------------------------------------

  CREATE INDEX "SRAIDIHAMZA"."IX_UtilisateurRoles_RoleId" ON "SRAIDIHAMZA"."UtilisateurRoles" ("RoleId") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index IX_RolePermissions_PermissionId
--------------------------------------------------------

  CREATE INDEX "SRAIDIHAMZA"."IX_RolePermissions_PermissionId" ON "SRAIDIHAMZA"."RolePermissions" ("PermissionId") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index PK_Utilisateurs
--------------------------------------------------------

  CREATE UNIQUE INDEX "SRAIDIHAMZA"."PK_Utilisateurs" ON "SRAIDIHAMZA"."Utilisateurs" ("Id") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index PK_RolePermissions
--------------------------------------------------------

  CREATE UNIQUE INDEX "SRAIDIHAMZA"."PK_RolePermissions" ON "SRAIDIHAMZA"."RolePermissions" ("Id") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index PK___EFMigrationsHistory
--------------------------------------------------------

  CREATE UNIQUE INDEX "SRAIDIHAMZA"."PK___EFMigrationsHistory" ON "SRAIDIHAMZA"."__EFMigrationsHistory" ("MigrationId") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index PK_Roles
--------------------------------------------------------

  CREATE UNIQUE INDEX "SRAIDIHAMZA"."PK_Roles" ON "SRAIDIHAMZA"."Roles" ("Id") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index IX_UtilisateurRoles_UtilisateurId
--------------------------------------------------------

  CREATE INDEX "SRAIDIHAMZA"."IX_UtilisateurRoles_UtilisateurId" ON "SRAIDIHAMZA"."UtilisateurRoles" ("UtilisateurId") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index PK_UtilisateurPermissions
--------------------------------------------------------

  CREATE UNIQUE INDEX "SRAIDIHAMZA"."PK_UtilisateurPermissions" ON "SRAIDIHAMZA"."UtilisateurPermissions" ("Id") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index PK_DisciplineBudgetaires
--------------------------------------------------------

  CREATE UNIQUE INDEX "SRAIDIHAMZA"."PK_DisciplineBudgetaires" ON "SRAIDIHAMZA"."DisciplineBudgetaires" ("Id") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index PK_TypeUtilisateurs
--------------------------------------------------------

  CREATE UNIQUE INDEX "SRAIDIHAMZA"."PK_TypeUtilisateurs" ON "SRAIDIHAMZA"."TypeUtilisateurs" ("Id") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index PK_UtilisateurLoggings
--------------------------------------------------------

  CREATE UNIQUE INDEX "SRAIDIHAMZA"."PK_UtilisateurLoggings" ON "SRAIDIHAMZA"."UtilisateurLoggings" ("Id") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index PK_Permissions
--------------------------------------------------------

  CREATE UNIQUE INDEX "SRAIDIHAMZA"."PK_Permissions" ON "SRAIDIHAMZA"."Permissions" ("Id") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index IX_UtilisateurPermissions_UtilisateurId
--------------------------------------------------------

  CREATE INDEX "SRAIDIHAMZA"."IX_UtilisateurPermissions_UtilisateurId" ON "SRAIDIHAMZA"."UtilisateurPermissions" ("UtilisateurId") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index PK_CRCs
--------------------------------------------------------

  CREATE UNIQUE INDEX "SRAIDIHAMZA"."PK_CRCs" ON "SRAIDIHAMZA"."CRCs" ("Id") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index IX_RolePermissions_RoleId
--------------------------------------------------------

  CREATE INDEX "SRAIDIHAMZA"."IX_RolePermissions_RoleId" ON "SRAIDIHAMZA"."RolePermissions" ("RoleId") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index PK_UtilisateurRoles
--------------------------------------------------------

  CREATE UNIQUE INDEX "SRAIDIHAMZA"."PK_UtilisateurRoles" ON "SRAIDIHAMZA"."UtilisateurRoles" ("Id") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index PK_TypeGrades
--------------------------------------------------------

  CREATE UNIQUE INDEX "SRAIDIHAMZA"."PK_TypeGrades" ON "SRAIDIHAMZA"."TypeGrades" ("Id") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index IX_DisciplineBudgetaires_IdCRC
--------------------------------------------------------

  CREATE INDEX "SRAIDIHAMZA"."IX_DisciplineBudgetaires_IdCRC" ON "SRAIDIHAMZA"."DisciplineBudgetaires" ("IdCRC") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index IX_UtilisateurPermissions_PermissionId
--------------------------------------------------------

  CREATE INDEX "SRAIDIHAMZA"."IX_UtilisateurPermissions_PermissionId" ON "SRAIDIHAMZA"."UtilisateurPermissions" ("PermissionId") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  Constraints for Table CRCs
--------------------------------------------------------

  ALTER TABLE "SRAIDIHAMZA"."CRCs" MODIFY ("Id" NOT NULL ENABLE);
  ALTER TABLE "SRAIDIHAMZA"."CRCs" MODIFY ("Label" NOT NULL ENABLE);
  ALTER TABLE "SRAIDIHAMZA"."CRCs" MODIFY ("IsActive" NOT NULL ENABLE);
  ALTER TABLE "SRAIDIHAMZA"."CRCs" ADD CONSTRAINT "PK_CRCs" PRIMARY KEY ("Id")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table Roles
--------------------------------------------------------

  ALTER TABLE "SRAIDIHAMZA"."Roles" MODIFY ("Id" NOT NULL ENABLE);
  ALTER TABLE "SRAIDIHAMZA"."Roles" MODIFY ("Label" NOT NULL ENABLE);
  ALTER TABLE "SRAIDIHAMZA"."Roles" MODIFY ("IsActive" NOT NULL ENABLE);
  ALTER TABLE "SRAIDIHAMZA"."Roles" ADD CONSTRAINT "PK_Roles" PRIMARY KEY ("Id")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table UtilisateurLoggings
--------------------------------------------------------

  ALTER TABLE "SRAIDIHAMZA"."UtilisateurLoggings" MODIFY ("Id" NOT NULL ENABLE);
  ALTER TABLE "SRAIDIHAMZA"."UtilisateurLoggings" MODIFY ("UtilisateurId" NOT NULL ENABLE);
  ALTER TABLE "SRAIDIHAMZA"."UtilisateurLoggings" MODIFY ("Action" NOT NULL ENABLE);
  ALTER TABLE "SRAIDIHAMZA"."UtilisateurLoggings" MODIFY ("DateLog" NOT NULL ENABLE);
  ALTER TABLE "SRAIDIHAMZA"."UtilisateurLoggings" ADD CONSTRAINT "PK_UtilisateurLoggings" PRIMARY KEY ("Id")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table DisciplineBudgetaires
--------------------------------------------------------

  ALTER TABLE "SRAIDIHAMZA"."DisciplineBudgetaires" MODIFY ("Id" NOT NULL ENABLE);
  ALTER TABLE "SRAIDIHAMZA"."DisciplineBudgetaires" MODIFY ("IdCRC" NOT NULL ENABLE);
  ALTER TABLE "SRAIDIHAMZA"."DisciplineBudgetaires" ADD CONSTRAINT "PK_DisciplineBudgetaires" PRIMARY KEY ("Id")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table UtilisateurRoles
--------------------------------------------------------

  ALTER TABLE "SRAIDIHAMZA"."UtilisateurRoles" MODIFY ("Id" NOT NULL ENABLE);
  ALTER TABLE "SRAIDIHAMZA"."UtilisateurRoles" MODIFY ("UtilisateurId" NOT NULL ENABLE);
  ALTER TABLE "SRAIDIHAMZA"."UtilisateurRoles" MODIFY ("RoleId" NOT NULL ENABLE);
  ALTER TABLE "SRAIDIHAMZA"."UtilisateurRoles" ADD CONSTRAINT "PK_UtilisateurRoles" PRIMARY KEY ("Id")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table __EFMigrationsHistory
--------------------------------------------------------

  ALTER TABLE "SRAIDIHAMZA"."__EFMigrationsHistory" MODIFY ("MigrationId" NOT NULL ENABLE);
  ALTER TABLE "SRAIDIHAMZA"."__EFMigrationsHistory" MODIFY ("ProductVersion" NOT NULL ENABLE);
  ALTER TABLE "SRAIDIHAMZA"."__EFMigrationsHistory" ADD CONSTRAINT "PK___EFMigrationsHistory" PRIMARY KEY ("MigrationId")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table Utilisateurs
--------------------------------------------------------

  ALTER TABLE "SRAIDIHAMZA"."Utilisateurs" MODIFY ("Id" NOT NULL ENABLE);
  ALTER TABLE "SRAIDIHAMZA"."Utilisateurs" MODIFY ("Nom" NOT NULL ENABLE);
  ALTER TABLE "SRAIDIHAMZA"."Utilisateurs" MODIFY ("Prenom" NOT NULL ENABLE);
  ALTER TABLE "SRAIDIHAMZA"."Utilisateurs" MODIFY ("Email" NOT NULL ENABLE);
  ALTER TABLE "SRAIDIHAMZA"."Utilisateurs" MODIFY ("Login" NOT NULL ENABLE);
  ALTER TABLE "SRAIDIHAMZA"."Utilisateurs" MODIFY ("Password" NOT NULL ENABLE);
  ALTER TABLE "SRAIDIHAMZA"."Utilisateurs" MODIFY ("TypeUtilisateurId" NOT NULL ENABLE);
  ALTER TABLE "SRAIDIHAMZA"."Utilisateurs" MODIFY ("TypeGradeId" NOT NULL ENABLE);
  ALTER TABLE "SRAIDIHAMZA"."Utilisateurs" MODIFY ("IsActive" NOT NULL ENABLE);
  ALTER TABLE "SRAIDIHAMZA"."Utilisateurs" ADD CONSTRAINT "PK_Utilisateurs" PRIMARY KEY ("Id")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table Permissions
--------------------------------------------------------

  ALTER TABLE "SRAIDIHAMZA"."Permissions" MODIFY ("Id" NOT NULL ENABLE);
  ALTER TABLE "SRAIDIHAMZA"."Permissions" MODIFY ("Groupe" NOT NULL ENABLE);
  ALTER TABLE "SRAIDIHAMZA"."Permissions" MODIFY ("Label" NOT NULL ENABLE);
  ALTER TABLE "SRAIDIHAMZA"."Permissions" MODIFY ("IsActive" NOT NULL ENABLE);
  ALTER TABLE "SRAIDIHAMZA"."Permissions" ADD CONSTRAINT "PK_Permissions" PRIMARY KEY ("Id")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table RolePermissions
--------------------------------------------------------

  ALTER TABLE "SRAIDIHAMZA"."RolePermissions" MODIFY ("Id" NOT NULL ENABLE);
  ALTER TABLE "SRAIDIHAMZA"."RolePermissions" MODIFY ("RoleId" NOT NULL ENABLE);
  ALTER TABLE "SRAIDIHAMZA"."RolePermissions" MODIFY ("PermissionId" NOT NULL ENABLE);
  ALTER TABLE "SRAIDIHAMZA"."RolePermissions" ADD CONSTRAINT "PK_RolePermissions" PRIMARY KEY ("Id")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table UtilisateurPermissions
--------------------------------------------------------

  ALTER TABLE "SRAIDIHAMZA"."UtilisateurPermissions" MODIFY ("Id" NOT NULL ENABLE);
  ALTER TABLE "SRAIDIHAMZA"."UtilisateurPermissions" MODIFY ("UtilisateurId" NOT NULL ENABLE);
  ALTER TABLE "SRAIDIHAMZA"."UtilisateurPermissions" MODIFY ("PermissionId" NOT NULL ENABLE);
  ALTER TABLE "SRAIDIHAMZA"."UtilisateurPermissions" ADD CONSTRAINT "PK_UtilisateurPermissions" PRIMARY KEY ("Id")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table TypeGrades
--------------------------------------------------------

  ALTER TABLE "SRAIDIHAMZA"."TypeGrades" MODIFY ("Id" NOT NULL ENABLE);
  ALTER TABLE "SRAIDIHAMZA"."TypeGrades" MODIFY ("Label" NOT NULL ENABLE);
  ALTER TABLE "SRAIDIHAMZA"."TypeGrades" MODIFY ("IsActive" NOT NULL ENABLE);
  ALTER TABLE "SRAIDIHAMZA"."TypeGrades" ADD CONSTRAINT "PK_TypeGrades" PRIMARY KEY ("Id")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table TypeUtilisateurs
--------------------------------------------------------

  ALTER TABLE "SRAIDIHAMZA"."TypeUtilisateurs" MODIFY ("Id" NOT NULL ENABLE);
  ALTER TABLE "SRAIDIHAMZA"."TypeUtilisateurs" MODIFY ("Label" NOT NULL ENABLE);
  ALTER TABLE "SRAIDIHAMZA"."TypeUtilisateurs" MODIFY ("IsActive" NOT NULL ENABLE);
  ALTER TABLE "SRAIDIHAMZA"."TypeUtilisateurs" ADD CONSTRAINT "PK_TypeUtilisateurs" PRIMARY KEY ("Id")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table DisciplineBudgetaires
--------------------------------------------------------

  ALTER TABLE "SRAIDIHAMZA"."DisciplineBudgetaires" ADD CONSTRAINT "FK_DisciplineBudgetaires_CRCs_IdCRC" FOREIGN KEY ("IdCRC")
	  REFERENCES "SRAIDIHAMZA"."CRCs" ("Id") ON DELETE CASCADE ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table RolePermissions
--------------------------------------------------------

  ALTER TABLE "SRAIDIHAMZA"."RolePermissions" ADD CONSTRAINT "FK_RolePermissions_Permissions_PermissionId" FOREIGN KEY ("PermissionId")
	  REFERENCES "SRAIDIHAMZA"."Permissions" ("Id") ON DELETE CASCADE ENABLE;
  ALTER TABLE "SRAIDIHAMZA"."RolePermissions" ADD CONSTRAINT "FK_RolePermissions_Roles_RoleId" FOREIGN KEY ("RoleId")
	  REFERENCES "SRAIDIHAMZA"."Roles" ("Id") ON DELETE CASCADE ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table UtilisateurPermissions
--------------------------------------------------------

  ALTER TABLE "SRAIDIHAMZA"."UtilisateurPermissions" ADD CONSTRAINT "FK_UtilisateurPermissions_Permissions_PermissionId" FOREIGN KEY ("PermissionId")
	  REFERENCES "SRAIDIHAMZA"."Permissions" ("Id") ON DELETE CASCADE ENABLE;
  ALTER TABLE "SRAIDIHAMZA"."UtilisateurPermissions" ADD CONSTRAINT "FK_UtilisateurPermissions_Utilisateurs_UtilisateurId" FOREIGN KEY ("UtilisateurId")
	  REFERENCES "SRAIDIHAMZA"."Utilisateurs" ("Id") ON DELETE CASCADE ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table UtilisateurRoles
--------------------------------------------------------

  ALTER TABLE "SRAIDIHAMZA"."UtilisateurRoles" ADD CONSTRAINT "FK_UtilisateurRoles_Roles_RoleId" FOREIGN KEY ("RoleId")
	  REFERENCES "SRAIDIHAMZA"."Roles" ("Id") ON DELETE CASCADE ENABLE;
  ALTER TABLE "SRAIDIHAMZA"."UtilisateurRoles" ADD CONSTRAINT "FK_UtilisateurRoles_Utilisateurs_UtilisateurId" FOREIGN KEY ("UtilisateurId")
	  REFERENCES "SRAIDIHAMZA"."Utilisateurs" ("Id") ON DELETE CASCADE ENABLE;
