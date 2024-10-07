--------------------------------------------------------
--  Fichier créé - lundi-octobre-07-2024   
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
	"Emis_En_Date_Du" TIMESTAMP (7), 
	"IdCRC" RAW(16), 
	"Centre_Comptable" NVARCHAR2(2000), 
	"Date_Enregistrement_Requete_Cour_Regionale_Des_Comptes" TIMESTAMP (7), 
	"Date_Requisition_Ministere_Public" TIMESTAMP (7), 
	"Numero_Requisition_Ministere_Public" NVARCHAR2(2000), 
	"Date_Ordonnance_Designation_Conseiller_Rapporteur" TIMESTAMP (7), 
	"Numero_Ordonnance_Designation_Conseiller_Rapporteur" NVARCHAR2(2000), 
	"Conseiller_Rapporteur" NVARCHAR2(2000), 
	"Date_Ordonnance_Designation_Conseiller_Rapporteur_Remplacant" TIMESTAMP (7), 
	"Numero_Ordonnance_Designation_Conseiller_Rapporteur_Remplacant" NVARCHAR2(2000), 
	"Conseiller_Rapporteur_Remplacant" NVARCHAR2(2000), 
	"Date_Envoi_Requete_Parties" TIMESTAMP (7), 
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
	"Date_Demande_Documents_Supplementaires" TIMESTAMP (7), 
	"Date_Convocation_Interesse_Audience" TIMESTAMP (7), 
	"Date_Enquete_Sur_Le_Terrain" TIMESTAMP (7), 
	"Date_Preparation_Rapport" TIMESTAMP (7), 
	"Date_Transmission_Dossier_Ministere_Public" TIMESTAMP (7), 
	"Date_Conclusions_Ministere_Public" TIMESTAMP (7), 
	"Numero_Conclusions_Ministere_Public" NVARCHAR2(2000), 
	"Date_Reception_Convocation_Interesse_Consultation" TIMESTAMP (7), 
	"Date_Reception_Convocation_Avocat_Consultation" TIMESTAMP (7), 
	"Date_Consultation_Interesse" TIMESTAMP (7), 
	"Date_Consultation_Avocat" TIMESTAMP (7), 
	"Date_Retour_Dossier_Greffe_Central" TIMESTAMP (7), 
	"Convocation_Interesse_Audience_Jugement" NVARCHAR2(2000), 
	"Convocation_Avocat_Audience_Jugement" NVARCHAR2(2000), 
	"Date_Audience_Jugement" TIMESTAMP (7), 
	"Convocation_Avocat_Prononce_Jugement" NVARCHAR2(2000), 
	"Convocation_Interesse_Prononce_Jugement" NVARCHAR2(2000), 
	"Date_Audience_Prononce_Jugement" TIMESTAMP (7), 
	"Dispositif_Decision" NVARCHAR2(2000), 
	"Numero_Decision" NVARCHAR2(2000), 
	"Date_Envoi_Decision_Notification_Parties" TIMESTAMP (7), 
	"Date_Reception_Comptable_Copie_Decision" TIMESTAMP (7), 
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
--------------------------------------------------------
--  DDL for Table DisciplineBudgetaireTemp
--------------------------------------------------------

  CREATE TABLE "SRAIDIHAMZA"."DisciplineBudgetaireTemp" 
   (	"Id" RAW(16), 
	"Numero_Dossier" NVARCHAR2(2000), 
	"Appelant" NVARCHAR2(2000), 
	"Numero_Jugement_Faisant_Objet_De_Appel" NVARCHAR2(2000), 
	"Emis_En_Date_Du" NVARCHAR2(2000), 
	"CRC" NVARCHAR2(2000), 
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
	"Date_de_reception_par_les_parties_Agent_du_Roi_au_CRC" NVARCHAR2(2000), 
	"Date_de_reception_par_les_parties_Entrepot_Regional" NVARCHAR2(2000), 
	"Date_de_reception_par_les_parties_Travailleur_du_territoire" NVARCHAR2(2000), 
	"Date_de_reception_par_les_parties_President_de_la_Commune" NVARCHAR2(2000), 
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
	"Date_Reception_Comptable_Copie_Decision" NVARCHAR2(2000), 
	"UpdatedBy" NVARCHAR2(2000), 
	"UpdateTime" NVARCHAR2(2000), 
	"RowNumber" NUMBER(10,0), 
	"RowError" NVARCHAR2(2000)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
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
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
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
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
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
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
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
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table UtilisateurLoggings
--------------------------------------------------------

  CREATE TABLE "SRAIDIHAMZA"."UtilisateurLoggings" 
   (	"Id" RAW(16), 
	"UtilisateurId" RAW(16), 
	"Action" NVARCHAR2(255), 
	"DateLogging" TIMESTAMP (7), 
	"Description" NVARCHAR2(500), 
	"IpAddress" NVARCHAR2(45), 
	"RequestPath" NVARCHAR2(2000), 
	"HttpMethod" NVARCHAR2(10), 
	"UserAgent" NVARCHAR2(500), 
	"JwtToken" NCLOB
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "USERS" 
 LOB ("JwtToken") STORE AS SECUREFILE (
  TABLESPACE "USERS" ENABLE STORAGE IN ROW 4000 CHUNK 8192
  NOCACHE LOGGING  NOCOMPRESS  KEEP_DUPLICATES ) ;
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
Insert into SRAIDIHAMZA."CRCs" ("Id","Code","Label","Description","IsActive") values ('0F5778FB0D08464196D04C247503716B',null,'Cour régionale des comptes de Rabat-Salé-Kénitra',null,'1');
Insert into SRAIDIHAMZA."CRCs" ("Id","Code","Label","Description","IsActive") values ('581959408C2745FBA8D39B879EED848C',null,'Cour régionale des comptes de Casablanca-Settat',null,'1');
Insert into SRAIDIHAMZA."CRCs" ("Id","Code","Label","Description","IsActive") values ('BB0050ACD3FB4939B5CE5248D2717356',null,'Cour régionale des comptes de Fès-Meknès',null,'1');
Insert into SRAIDIHAMZA."CRCs" ("Id","Code","Label","Description","IsActive") values ('F123E7E83C504601866874B581C05062',null,'Cour régionale des comptes de Marrakech-Safi',null,'1');
Insert into SRAIDIHAMZA."CRCs" ("Id","Code","Label","Description","IsActive") values ('242311722FAA4FC5A666746EAFF536CA',null,'Cour régionale des comptes de Tanger-Tétouan-Al Hoceima',null,'1');
Insert into SRAIDIHAMZA."CRCs" ("Id","Code","Label","Description","IsActive") values ('CAAF67BDFFDF45C2974F6F7B005D2EDC',null,'Cour régionale des comptes de Souss-Massa',null,'1');
Insert into SRAIDIHAMZA."CRCs" ("Id","Code","Label","Description","IsActive") values ('CB953C98E8834189A48B94461E215B24',null,'Cour régionale des comptes de l Oriental',null,'1');
Insert into SRAIDIHAMZA."CRCs" ("Id","Code","Label","Description","IsActive") values ('AF793015289147B1AE354B716FD6611F',null,'Cour régionale des comptes de Drâa-Tafilalet',null,'1');
Insert into SRAIDIHAMZA."CRCs" ("Id","Code","Label","Description","IsActive") values ('7A6EDADE7B7F4DCFAAC2C60C66E026D3',null,'Cour régionale des comptes de Beni Mellal-Khénifra',null,'1');
Insert into SRAIDIHAMZA."CRCs" ("Id","Code","Label","Description","IsActive") values ('550C18FDE9314E9997DAB8B4DB6361F9',null,'Cour régionale des comptes de Guelmim-Oued Noun',null,'1');
Insert into SRAIDIHAMZA."CRCs" ("Id","Code","Label","Description","IsActive") values ('F1B779EC17984D7E855F5BE49BA93C1D',null,'Cour régionale des comptes de Laâyoune-Sakia El Hamra',null,'1');
Insert into SRAIDIHAMZA."CRCs" ("Id","Code","Label","Description","IsActive") values ('14B5763CB48446948B9D10C8B1E24B5F',null,'Cour régionale des comptes de Dakhla-Oued Ed-Dahab',null,'1');
REM INSERTING into SRAIDIHAMZA."DisciplineBudgetaires"
SET DEFINE OFF;
Insert into SRAIDIHAMZA."DisciplineBudgetaires" ("Id","Numero_Dossier","Appelant","Numero_Jugement_Faisant_Objet_De_Appel","Emis_En_Date_Du","IdCRC","Centre_Comptable","Date_Enregistrement_Requete_Cour_Regionale_Des_Comptes","Date_Requisition_Ministere_Public","Numero_Requisition_Ministere_Public","Date_Ordonnance_Designation_Conseiller_Rapporteur","Numero_Ordonnance_Designation_Conseiller_Rapporteur","Conseiller_Rapporteur","Date_Ordonnance_Designation_Conseiller_Rapporteur_Remplacant","Numero_Ordonnance_Designation_Conseiller_Rapporteur_Remplacant","Conseiller_Rapporteur_Remplacant","Date_Envoi_Requete_Parties","Parties_Agent_du_Roi_au_CRC","Parties_Entrepot_Regional","Parties_Travailleur_du_territoire","Parties_President_de_la_Commune","Date_de_reception_par_les_parties_Agent_du_Roi_au_CRC","Date_de_reception_par_les_parties_Entrepot_Regional","Date_de_reception_par_les_parties_Travailleur_du_territoire","Date_de_reception_par_les_parties_President_de_la_Commune","Reponse_au_memoire_d_appel_Agent_du_Roi_au_CRC","Reponse_au_memoire_d_appel_Entrepot_Regional","Reponse_au_memoire_d_appel_Travailleur_du_territoire","Reponse_au_memoire_d_appel_President_de_la_Commune","Date_Demande_Documents_Supplementaires","Date_Convocation_Interesse_Audience","Date_Enquete_Sur_Le_Terrain","Date_Preparation_Rapport","Date_Transmission_Dossier_Ministere_Public","Date_Conclusions_Ministere_Public","Numero_Conclusions_Ministere_Public","Date_Reception_Convocation_Interesse_Consultation","Date_Reception_Convocation_Avocat_Consultation","Date_Consultation_Interesse","Date_Consultation_Avocat","Date_Retour_Dossier_Greffe_Central","Convocation_Interesse_Audience_Jugement","Convocation_Avocat_Audience_Jugement","Date_Audience_Jugement","Convocation_Avocat_Prononce_Jugement","Convocation_Interesse_Prononce_Jugement","Date_Audience_Prononce_Jugement","Dispositif_Decision","Numero_Decision","Date_Envoi_Decision_Notification_Parties","Date_Reception_Comptable_Copie_Decision","UpdatedBy","UpdateTime","IsActive") values ('EA3E74C623804F699390B50F2A9CB6ED','1','???? 1','101',to_timestamp('01/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),'0F5778FB0D08464196D04C247503716B','???? 1',to_timestamp('02/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),to_timestamp('03/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),'201',to_timestamp('04/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),'301','?????? 1',to_timestamp('05/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),'401','?????? ??? 1',to_timestamp('06/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),'???? 1','???? 1','???? 1','???? 1',to_timestamp('07/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),to_timestamp('08/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),to_timestamp('09/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),to_timestamp('10/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),'?? ???? 1','?? ???? 1','?? ???? 1','?? ???? 1',to_timestamp('11/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),to_timestamp('12/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),to_timestamp('13/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),to_timestamp('14/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),to_timestamp('15/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),to_timestamp('16/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),'501',to_timestamp('17/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),to_timestamp('18/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),to_timestamp('19/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),to_timestamp('20/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),to_timestamp('21/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),'convocation 1','convocation 1',to_timestamp('24/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),'convocation 1 ','convocation 1 ',to_timestamp('27/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),'Dispositif Decision 1 ','???? 1',to_timestamp('29/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),to_timestamp('29/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),'admin',to_timestamp('07/10/24 11:41:01,805000000','DD/MM/RR HH24:MI:SSXFF'),'1');
Insert into SRAIDIHAMZA."DisciplineBudgetaires" ("Id","Numero_Dossier","Appelant","Numero_Jugement_Faisant_Objet_De_Appel","Emis_En_Date_Du","IdCRC","Centre_Comptable","Date_Enregistrement_Requete_Cour_Regionale_Des_Comptes","Date_Requisition_Ministere_Public","Numero_Requisition_Ministere_Public","Date_Ordonnance_Designation_Conseiller_Rapporteur","Numero_Ordonnance_Designation_Conseiller_Rapporteur","Conseiller_Rapporteur","Date_Ordonnance_Designation_Conseiller_Rapporteur_Remplacant","Numero_Ordonnance_Designation_Conseiller_Rapporteur_Remplacant","Conseiller_Rapporteur_Remplacant","Date_Envoi_Requete_Parties","Parties_Agent_du_Roi_au_CRC","Parties_Entrepot_Regional","Parties_Travailleur_du_territoire","Parties_President_de_la_Commune","Date_de_reception_par_les_parties_Agent_du_Roi_au_CRC","Date_de_reception_par_les_parties_Entrepot_Regional","Date_de_reception_par_les_parties_Travailleur_du_territoire","Date_de_reception_par_les_parties_President_de_la_Commune","Reponse_au_memoire_d_appel_Agent_du_Roi_au_CRC","Reponse_au_memoire_d_appel_Entrepot_Regional","Reponse_au_memoire_d_appel_Travailleur_du_territoire","Reponse_au_memoire_d_appel_President_de_la_Commune","Date_Demande_Documents_Supplementaires","Date_Convocation_Interesse_Audience","Date_Enquete_Sur_Le_Terrain","Date_Preparation_Rapport","Date_Transmission_Dossier_Ministere_Public","Date_Conclusions_Ministere_Public","Numero_Conclusions_Ministere_Public","Date_Reception_Convocation_Interesse_Consultation","Date_Reception_Convocation_Avocat_Consultation","Date_Consultation_Interesse","Date_Consultation_Avocat","Date_Retour_Dossier_Greffe_Central","Convocation_Interesse_Audience_Jugement","Convocation_Avocat_Audience_Jugement","Date_Audience_Jugement","Convocation_Avocat_Prononce_Jugement","Convocation_Interesse_Prononce_Jugement","Date_Audience_Prononce_Jugement","Dispositif_Decision","Numero_Decision","Date_Envoi_Decision_Notification_Parties","Date_Reception_Comptable_Copie_Decision","UpdatedBy","UpdateTime","IsActive") values ('6872273F042D407F9E491E26889EFBD1','10','???? 10','110',to_timestamp('01/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),'14B5763CB48446948B9D10C8B1E24B5F','???? 1',to_timestamp('02/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),to_timestamp('03/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),'210',to_timestamp('04/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),'310','?????? 10',to_timestamp('05/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),'410','?????? ??? 10',to_timestamp('06/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),'???? 10','???? 10','???? 10','???? 10',to_timestamp('07/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),to_timestamp('08/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),to_timestamp('09/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),to_timestamp('10/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),'?? ???? 10','?? ???? 10','?? ???? 10','?? ???? 10',to_timestamp('11/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),to_timestamp('12/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),to_timestamp('13/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),to_timestamp('14/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),to_timestamp('15/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),to_timestamp('16/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),'510',to_timestamp('17/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),to_timestamp('18/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),to_timestamp('19/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),to_timestamp('20/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),to_timestamp('21/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),'convocation 10','convocation 10',to_timestamp('24/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),'convocation 10','convocation 10',to_timestamp('27/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),'Dispositif Decision 10','???? 10',to_timestamp('29/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),to_timestamp('29/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),'admin',to_timestamp('07/10/24 11:41:01,805000000','DD/MM/RR HH24:MI:SSXFF'),'1');
Insert into SRAIDIHAMZA."DisciplineBudgetaires" ("Id","Numero_Dossier","Appelant","Numero_Jugement_Faisant_Objet_De_Appel","Emis_En_Date_Du","IdCRC","Centre_Comptable","Date_Enregistrement_Requete_Cour_Regionale_Des_Comptes","Date_Requisition_Ministere_Public","Numero_Requisition_Ministere_Public","Date_Ordonnance_Designation_Conseiller_Rapporteur","Numero_Ordonnance_Designation_Conseiller_Rapporteur","Conseiller_Rapporteur","Date_Ordonnance_Designation_Conseiller_Rapporteur_Remplacant","Numero_Ordonnance_Designation_Conseiller_Rapporteur_Remplacant","Conseiller_Rapporteur_Remplacant","Date_Envoi_Requete_Parties","Parties_Agent_du_Roi_au_CRC","Parties_Entrepot_Regional","Parties_Travailleur_du_territoire","Parties_President_de_la_Commune","Date_de_reception_par_les_parties_Agent_du_Roi_au_CRC","Date_de_reception_par_les_parties_Entrepot_Regional","Date_de_reception_par_les_parties_Travailleur_du_territoire","Date_de_reception_par_les_parties_President_de_la_Commune","Reponse_au_memoire_d_appel_Agent_du_Roi_au_CRC","Reponse_au_memoire_d_appel_Entrepot_Regional","Reponse_au_memoire_d_appel_Travailleur_du_territoire","Reponse_au_memoire_d_appel_President_de_la_Commune","Date_Demande_Documents_Supplementaires","Date_Convocation_Interesse_Audience","Date_Enquete_Sur_Le_Terrain","Date_Preparation_Rapport","Date_Transmission_Dossier_Ministere_Public","Date_Conclusions_Ministere_Public","Numero_Conclusions_Ministere_Public","Date_Reception_Convocation_Interesse_Consultation","Date_Reception_Convocation_Avocat_Consultation","Date_Consultation_Interesse","Date_Consultation_Avocat","Date_Retour_Dossier_Greffe_Central","Convocation_Interesse_Audience_Jugement","Convocation_Avocat_Audience_Jugement","Date_Audience_Jugement","Convocation_Avocat_Prononce_Jugement","Convocation_Interesse_Prononce_Jugement","Date_Audience_Prononce_Jugement","Dispositif_Decision","Numero_Decision","Date_Envoi_Decision_Notification_Parties","Date_Reception_Comptable_Copie_Decision","UpdatedBy","UpdateTime","IsActive") values ('6ABF23969E454A519CBA5E08F8D9617B','3','???? 3','103',to_timestamp('01/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),'581959408C2745FBA8D39B879EED848C','???? 1',to_timestamp('02/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),to_timestamp('03/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),'203',to_timestamp('04/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),'303','?????? 3',to_timestamp('05/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),'403','?????? ??? 3',to_timestamp('06/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),'???? 3','???? 3','???? 3','???? 3',to_timestamp('07/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),to_timestamp('08/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),to_timestamp('09/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),to_timestamp('10/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),'?? ???? 3','?? ???? 3','?? ???? 3','?? ???? 3',to_timestamp('11/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),to_timestamp('12/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),to_timestamp('13/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),to_timestamp('14/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),to_timestamp('15/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),to_timestamp('16/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),'503',to_timestamp('17/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),to_timestamp('18/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),to_timestamp('19/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),to_timestamp('20/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),to_timestamp('21/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),'convocation 3','convocation 3',to_timestamp('24/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),'convocation 3','convocation 3',to_timestamp('27/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),'Dispositif Decision 3','???? 3',to_timestamp('29/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),to_timestamp('29/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),'admin',to_timestamp('07/10/24 11:41:01,805000000','DD/MM/RR HH24:MI:SSXFF'),'1');
Insert into SRAIDIHAMZA."DisciplineBudgetaires" ("Id","Numero_Dossier","Appelant","Numero_Jugement_Faisant_Objet_De_Appel","Emis_En_Date_Du","IdCRC","Centre_Comptable","Date_Enregistrement_Requete_Cour_Regionale_Des_Comptes","Date_Requisition_Ministere_Public","Numero_Requisition_Ministere_Public","Date_Ordonnance_Designation_Conseiller_Rapporteur","Numero_Ordonnance_Designation_Conseiller_Rapporteur","Conseiller_Rapporteur","Date_Ordonnance_Designation_Conseiller_Rapporteur_Remplacant","Numero_Ordonnance_Designation_Conseiller_Rapporteur_Remplacant","Conseiller_Rapporteur_Remplacant","Date_Envoi_Requete_Parties","Parties_Agent_du_Roi_au_CRC","Parties_Entrepot_Regional","Parties_Travailleur_du_territoire","Parties_President_de_la_Commune","Date_de_reception_par_les_parties_Agent_du_Roi_au_CRC","Date_de_reception_par_les_parties_Entrepot_Regional","Date_de_reception_par_les_parties_Travailleur_du_territoire","Date_de_reception_par_les_parties_President_de_la_Commune","Reponse_au_memoire_d_appel_Agent_du_Roi_au_CRC","Reponse_au_memoire_d_appel_Entrepot_Regional","Reponse_au_memoire_d_appel_Travailleur_du_territoire","Reponse_au_memoire_d_appel_President_de_la_Commune","Date_Demande_Documents_Supplementaires","Date_Convocation_Interesse_Audience","Date_Enquete_Sur_Le_Terrain","Date_Preparation_Rapport","Date_Transmission_Dossier_Ministere_Public","Date_Conclusions_Ministere_Public","Numero_Conclusions_Ministere_Public","Date_Reception_Convocation_Interesse_Consultation","Date_Reception_Convocation_Avocat_Consultation","Date_Consultation_Interesse","Date_Consultation_Avocat","Date_Retour_Dossier_Greffe_Central","Convocation_Interesse_Audience_Jugement","Convocation_Avocat_Audience_Jugement","Date_Audience_Jugement","Convocation_Avocat_Prononce_Jugement","Convocation_Interesse_Prononce_Jugement","Date_Audience_Prononce_Jugement","Dispositif_Decision","Numero_Decision","Date_Envoi_Decision_Notification_Parties","Date_Reception_Comptable_Copie_Decision","UpdatedBy","UpdateTime","IsActive") values ('B0B126A8DFDB4AC7AFFD7EB3D5C5AC75','8','???? 8','108',to_timestamp('01/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),'14B5763CB48446948B9D10C8B1E24B5F','???? 1',to_timestamp('02/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),to_timestamp('03/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),'208',to_timestamp('04/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),'308','?????? 8',to_timestamp('05/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),'408','?????? ??? 8',to_timestamp('06/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),'???? 8','???? 8','???? 8','???? 8',to_timestamp('07/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),to_timestamp('08/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),to_timestamp('09/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),to_timestamp('10/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),'?? ???? 8','?? ???? 8','?? ???? 8','?? ???? 8',to_timestamp('11/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),to_timestamp('12/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),to_timestamp('13/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),to_timestamp('14/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),to_timestamp('15/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),to_timestamp('16/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),'508',to_timestamp('17/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),to_timestamp('18/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),to_timestamp('19/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),to_timestamp('20/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),to_timestamp('21/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),'convocation 8','convocation 8',to_timestamp('24/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),'convocation 8','convocation 8',to_timestamp('27/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),'Dispositif Decision 8','???? 8',to_timestamp('29/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),to_timestamp('29/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),'admin',to_timestamp('07/10/24 11:41:01,805000000','DD/MM/RR HH24:MI:SSXFF'),'1');
Insert into SRAIDIHAMZA."DisciplineBudgetaires" ("Id","Numero_Dossier","Appelant","Numero_Jugement_Faisant_Objet_De_Appel","Emis_En_Date_Du","IdCRC","Centre_Comptable","Date_Enregistrement_Requete_Cour_Regionale_Des_Comptes","Date_Requisition_Ministere_Public","Numero_Requisition_Ministere_Public","Date_Ordonnance_Designation_Conseiller_Rapporteur","Numero_Ordonnance_Designation_Conseiller_Rapporteur","Conseiller_Rapporteur","Date_Ordonnance_Designation_Conseiller_Rapporteur_Remplacant","Numero_Ordonnance_Designation_Conseiller_Rapporteur_Remplacant","Conseiller_Rapporteur_Remplacant","Date_Envoi_Requete_Parties","Parties_Agent_du_Roi_au_CRC","Parties_Entrepot_Regional","Parties_Travailleur_du_territoire","Parties_President_de_la_Commune","Date_de_reception_par_les_parties_Agent_du_Roi_au_CRC","Date_de_reception_par_les_parties_Entrepot_Regional","Date_de_reception_par_les_parties_Travailleur_du_territoire","Date_de_reception_par_les_parties_President_de_la_Commune","Reponse_au_memoire_d_appel_Agent_du_Roi_au_CRC","Reponse_au_memoire_d_appel_Entrepot_Regional","Reponse_au_memoire_d_appel_Travailleur_du_territoire","Reponse_au_memoire_d_appel_President_de_la_Commune","Date_Demande_Documents_Supplementaires","Date_Convocation_Interesse_Audience","Date_Enquete_Sur_Le_Terrain","Date_Preparation_Rapport","Date_Transmission_Dossier_Ministere_Public","Date_Conclusions_Ministere_Public","Numero_Conclusions_Ministere_Public","Date_Reception_Convocation_Interesse_Consultation","Date_Reception_Convocation_Avocat_Consultation","Date_Consultation_Interesse","Date_Consultation_Avocat","Date_Retour_Dossier_Greffe_Central","Convocation_Interesse_Audience_Jugement","Convocation_Avocat_Audience_Jugement","Date_Audience_Jugement","Convocation_Avocat_Prononce_Jugement","Convocation_Interesse_Prononce_Jugement","Date_Audience_Prononce_Jugement","Dispositif_Decision","Numero_Decision","Date_Envoi_Decision_Notification_Parties","Date_Reception_Comptable_Copie_Decision","UpdatedBy","UpdateTime","IsActive") values ('640048F771924A929E3AA5B2C192F3D7','4','???? 4','104',to_timestamp('01/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),'581959408C2745FBA8D39B879EED848C','???? 1',to_timestamp('02/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),to_timestamp('03/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),'204',to_timestamp('04/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),'304','?????? 4',to_timestamp('05/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),'404','?????? ??? 4',to_timestamp('06/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),'???? 4','???? 4','???? 4','???? 4',to_timestamp('07/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),to_timestamp('08/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),to_timestamp('09/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),to_timestamp('10/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),'?? ???? 4','?? ???? 4','?? ???? 4','?? ???? 4',to_timestamp('11/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),to_timestamp('12/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),to_timestamp('13/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),to_timestamp('14/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),to_timestamp('15/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),to_timestamp('16/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),'504',to_timestamp('17/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),to_timestamp('18/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),to_timestamp('19/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),to_timestamp('20/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),to_timestamp('21/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),'convocation 4','convocation 4',to_timestamp('24/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),'convocation 4','convocation 4',to_timestamp('27/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),'Dispositif Decision 4','???? 4',to_timestamp('29/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),to_timestamp('29/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),'admin',to_timestamp('07/10/24 11:41:01,805000000','DD/MM/RR HH24:MI:SSXFF'),'1');
Insert into SRAIDIHAMZA."DisciplineBudgetaires" ("Id","Numero_Dossier","Appelant","Numero_Jugement_Faisant_Objet_De_Appel","Emis_En_Date_Du","IdCRC","Centre_Comptable","Date_Enregistrement_Requete_Cour_Regionale_Des_Comptes","Date_Requisition_Ministere_Public","Numero_Requisition_Ministere_Public","Date_Ordonnance_Designation_Conseiller_Rapporteur","Numero_Ordonnance_Designation_Conseiller_Rapporteur","Conseiller_Rapporteur","Date_Ordonnance_Designation_Conseiller_Rapporteur_Remplacant","Numero_Ordonnance_Designation_Conseiller_Rapporteur_Remplacant","Conseiller_Rapporteur_Remplacant","Date_Envoi_Requete_Parties","Parties_Agent_du_Roi_au_CRC","Parties_Entrepot_Regional","Parties_Travailleur_du_territoire","Parties_President_de_la_Commune","Date_de_reception_par_les_parties_Agent_du_Roi_au_CRC","Date_de_reception_par_les_parties_Entrepot_Regional","Date_de_reception_par_les_parties_Travailleur_du_territoire","Date_de_reception_par_les_parties_President_de_la_Commune","Reponse_au_memoire_d_appel_Agent_du_Roi_au_CRC","Reponse_au_memoire_d_appel_Entrepot_Regional","Reponse_au_memoire_d_appel_Travailleur_du_territoire","Reponse_au_memoire_d_appel_President_de_la_Commune","Date_Demande_Documents_Supplementaires","Date_Convocation_Interesse_Audience","Date_Enquete_Sur_Le_Terrain","Date_Preparation_Rapport","Date_Transmission_Dossier_Ministere_Public","Date_Conclusions_Ministere_Public","Numero_Conclusions_Ministere_Public","Date_Reception_Convocation_Interesse_Consultation","Date_Reception_Convocation_Avocat_Consultation","Date_Consultation_Interesse","Date_Consultation_Avocat","Date_Retour_Dossier_Greffe_Central","Convocation_Interesse_Audience_Jugement","Convocation_Avocat_Audience_Jugement","Date_Audience_Jugement","Convocation_Avocat_Prononce_Jugement","Convocation_Interesse_Prononce_Jugement","Date_Audience_Prononce_Jugement","Dispositif_Decision","Numero_Decision","Date_Envoi_Decision_Notification_Parties","Date_Reception_Comptable_Copie_Decision","UpdatedBy","UpdateTime","IsActive") values ('4E6AB6A7906647BDB9682EC6BAE287BE','9','???? 9','109',to_timestamp('01/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),'0F5778FB0D08464196D04C247503716B','???? 1',to_timestamp('02/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),to_timestamp('03/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),'209',to_timestamp('04/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),'309','?????? 9',to_timestamp('05/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),'409','?????? ??? 9',to_timestamp('06/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),'???? 9','???? 9','???? 9','???? 9',to_timestamp('07/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),to_timestamp('08/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),to_timestamp('09/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),to_timestamp('10/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),'?? ???? 9','?? ???? 9','?? ???? 9','?? ???? 9',to_timestamp('11/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),to_timestamp('12/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),to_timestamp('13/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),to_timestamp('14/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),to_timestamp('15/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),to_timestamp('16/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),'509',to_timestamp('17/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),to_timestamp('18/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),to_timestamp('19/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),to_timestamp('20/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),to_timestamp('21/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),'convocation 9','convocation 9',to_timestamp('24/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),'convocation 9','convocation 9',to_timestamp('27/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),'Dispositif Decision 9','???? 9',to_timestamp('29/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),to_timestamp('29/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),'admin',to_timestamp('07/10/24 11:41:01,805000000','DD/MM/RR HH24:MI:SSXFF'),'1');
Insert into SRAIDIHAMZA."DisciplineBudgetaires" ("Id","Numero_Dossier","Appelant","Numero_Jugement_Faisant_Objet_De_Appel","Emis_En_Date_Du","IdCRC","Centre_Comptable","Date_Enregistrement_Requete_Cour_Regionale_Des_Comptes","Date_Requisition_Ministere_Public","Numero_Requisition_Ministere_Public","Date_Ordonnance_Designation_Conseiller_Rapporteur","Numero_Ordonnance_Designation_Conseiller_Rapporteur","Conseiller_Rapporteur","Date_Ordonnance_Designation_Conseiller_Rapporteur_Remplacant","Numero_Ordonnance_Designation_Conseiller_Rapporteur_Remplacant","Conseiller_Rapporteur_Remplacant","Date_Envoi_Requete_Parties","Parties_Agent_du_Roi_au_CRC","Parties_Entrepot_Regional","Parties_Travailleur_du_territoire","Parties_President_de_la_Commune","Date_de_reception_par_les_parties_Agent_du_Roi_au_CRC","Date_de_reception_par_les_parties_Entrepot_Regional","Date_de_reception_par_les_parties_Travailleur_du_territoire","Date_de_reception_par_les_parties_President_de_la_Commune","Reponse_au_memoire_d_appel_Agent_du_Roi_au_CRC","Reponse_au_memoire_d_appel_Entrepot_Regional","Reponse_au_memoire_d_appel_Travailleur_du_territoire","Reponse_au_memoire_d_appel_President_de_la_Commune","Date_Demande_Documents_Supplementaires","Date_Convocation_Interesse_Audience","Date_Enquete_Sur_Le_Terrain","Date_Preparation_Rapport","Date_Transmission_Dossier_Ministere_Public","Date_Conclusions_Ministere_Public","Numero_Conclusions_Ministere_Public","Date_Reception_Convocation_Interesse_Consultation","Date_Reception_Convocation_Avocat_Consultation","Date_Consultation_Interesse","Date_Consultation_Avocat","Date_Retour_Dossier_Greffe_Central","Convocation_Interesse_Audience_Jugement","Convocation_Avocat_Audience_Jugement","Date_Audience_Jugement","Convocation_Avocat_Prononce_Jugement","Convocation_Interesse_Prononce_Jugement","Date_Audience_Prononce_Jugement","Dispositif_Decision","Numero_Decision","Date_Envoi_Decision_Notification_Parties","Date_Reception_Comptable_Copie_Decision","UpdatedBy","UpdateTime","IsActive") values ('E9E6FCC203B641F993AF15A0ABC64154','7','???? 7','107',to_timestamp('01/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),'0F5778FB0D08464196D04C247503716B','???? 1',to_timestamp('02/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),to_timestamp('03/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),'207',to_timestamp('04/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),'307','?????? 7',to_timestamp('05/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),'407','?????? ??? 7',to_timestamp('06/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),'???? 7','???? 7','???? 7','???? 7',to_timestamp('07/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),to_timestamp('08/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),to_timestamp('09/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),to_timestamp('10/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),'?? ???? 7','?? ???? 7','?? ???? 7','?? ???? 7',to_timestamp('11/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),to_timestamp('12/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),to_timestamp('13/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),to_timestamp('14/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),to_timestamp('15/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),to_timestamp('16/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),'507',to_timestamp('17/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),to_timestamp('18/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),to_timestamp('19/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),to_timestamp('20/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),to_timestamp('21/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),'convocation 7','convocation 7',to_timestamp('24/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),'convocation 7','convocation 7',to_timestamp('27/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),'Dispositif Decision 7','???? 7',to_timestamp('29/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),to_timestamp('29/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),'admin',to_timestamp('07/10/24 11:41:01,805000000','DD/MM/RR HH24:MI:SSXFF'),'1');
Insert into SRAIDIHAMZA."DisciplineBudgetaires" ("Id","Numero_Dossier","Appelant","Numero_Jugement_Faisant_Objet_De_Appel","Emis_En_Date_Du","IdCRC","Centre_Comptable","Date_Enregistrement_Requete_Cour_Regionale_Des_Comptes","Date_Requisition_Ministere_Public","Numero_Requisition_Ministere_Public","Date_Ordonnance_Designation_Conseiller_Rapporteur","Numero_Ordonnance_Designation_Conseiller_Rapporteur","Conseiller_Rapporteur","Date_Ordonnance_Designation_Conseiller_Rapporteur_Remplacant","Numero_Ordonnance_Designation_Conseiller_Rapporteur_Remplacant","Conseiller_Rapporteur_Remplacant","Date_Envoi_Requete_Parties","Parties_Agent_du_Roi_au_CRC","Parties_Entrepot_Regional","Parties_Travailleur_du_territoire","Parties_President_de_la_Commune","Date_de_reception_par_les_parties_Agent_du_Roi_au_CRC","Date_de_reception_par_les_parties_Entrepot_Regional","Date_de_reception_par_les_parties_Travailleur_du_territoire","Date_de_reception_par_les_parties_President_de_la_Commune","Reponse_au_memoire_d_appel_Agent_du_Roi_au_CRC","Reponse_au_memoire_d_appel_Entrepot_Regional","Reponse_au_memoire_d_appel_Travailleur_du_territoire","Reponse_au_memoire_d_appel_President_de_la_Commune","Date_Demande_Documents_Supplementaires","Date_Convocation_Interesse_Audience","Date_Enquete_Sur_Le_Terrain","Date_Preparation_Rapport","Date_Transmission_Dossier_Ministere_Public","Date_Conclusions_Ministere_Public","Numero_Conclusions_Ministere_Public","Date_Reception_Convocation_Interesse_Consultation","Date_Reception_Convocation_Avocat_Consultation","Date_Consultation_Interesse","Date_Consultation_Avocat","Date_Retour_Dossier_Greffe_Central","Convocation_Interesse_Audience_Jugement","Convocation_Avocat_Audience_Jugement","Date_Audience_Jugement","Convocation_Avocat_Prononce_Jugement","Convocation_Interesse_Prononce_Jugement","Date_Audience_Prononce_Jugement","Dispositif_Decision","Numero_Decision","Date_Envoi_Decision_Notification_Parties","Date_Reception_Comptable_Copie_Decision","UpdatedBy","UpdateTime","IsActive") values ('76E5F41848BF4183B86247D14DB996AA','2','???? 2','102',to_timestamp('01/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),'0F5778FB0D08464196D04C247503716B','???? 1',to_timestamp('02/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),to_timestamp('03/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),'202',to_timestamp('04/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),'302','?????? 2',to_timestamp('05/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),'402','?????? ??? 2',to_timestamp('06/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),'???? 2','???? 2','???? 2','???? 2',to_timestamp('07/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),to_timestamp('08/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),to_timestamp('09/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),to_timestamp('10/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),'?? ???? 2','?? ???? 2','?? ???? 2','?? ???? 2',to_timestamp('11/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),to_timestamp('12/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),to_timestamp('13/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),to_timestamp('14/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),to_timestamp('15/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),to_timestamp('16/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),'502',to_timestamp('17/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),to_timestamp('18/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),to_timestamp('19/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),to_timestamp('20/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),to_timestamp('21/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),'convocation 2','convocation 2',to_timestamp('24/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),'convocation 2','convocation 2',to_timestamp('27/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),'Dispositif Decision 2','???? 2',to_timestamp('29/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),to_timestamp('29/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),'admin',to_timestamp('07/10/24 11:41:01,805000000','DD/MM/RR HH24:MI:SSXFF'),'1');
Insert into SRAIDIHAMZA."DisciplineBudgetaires" ("Id","Numero_Dossier","Appelant","Numero_Jugement_Faisant_Objet_De_Appel","Emis_En_Date_Du","IdCRC","Centre_Comptable","Date_Enregistrement_Requete_Cour_Regionale_Des_Comptes","Date_Requisition_Ministere_Public","Numero_Requisition_Ministere_Public","Date_Ordonnance_Designation_Conseiller_Rapporteur","Numero_Ordonnance_Designation_Conseiller_Rapporteur","Conseiller_Rapporteur","Date_Ordonnance_Designation_Conseiller_Rapporteur_Remplacant","Numero_Ordonnance_Designation_Conseiller_Rapporteur_Remplacant","Conseiller_Rapporteur_Remplacant","Date_Envoi_Requete_Parties","Parties_Agent_du_Roi_au_CRC","Parties_Entrepot_Regional","Parties_Travailleur_du_territoire","Parties_President_de_la_Commune","Date_de_reception_par_les_parties_Agent_du_Roi_au_CRC","Date_de_reception_par_les_parties_Entrepot_Regional","Date_de_reception_par_les_parties_Travailleur_du_territoire","Date_de_reception_par_les_parties_President_de_la_Commune","Reponse_au_memoire_d_appel_Agent_du_Roi_au_CRC","Reponse_au_memoire_d_appel_Entrepot_Regional","Reponse_au_memoire_d_appel_Travailleur_du_territoire","Reponse_au_memoire_d_appel_President_de_la_Commune","Date_Demande_Documents_Supplementaires","Date_Convocation_Interesse_Audience","Date_Enquete_Sur_Le_Terrain","Date_Preparation_Rapport","Date_Transmission_Dossier_Ministere_Public","Date_Conclusions_Ministere_Public","Numero_Conclusions_Ministere_Public","Date_Reception_Convocation_Interesse_Consultation","Date_Reception_Convocation_Avocat_Consultation","Date_Consultation_Interesse","Date_Consultation_Avocat","Date_Retour_Dossier_Greffe_Central","Convocation_Interesse_Audience_Jugement","Convocation_Avocat_Audience_Jugement","Date_Audience_Jugement","Convocation_Avocat_Prononce_Jugement","Convocation_Interesse_Prononce_Jugement","Date_Audience_Prononce_Jugement","Dispositif_Decision","Numero_Decision","Date_Envoi_Decision_Notification_Parties","Date_Reception_Comptable_Copie_Decision","UpdatedBy","UpdateTime","IsActive") values ('FAD829272E114FB9BD5F6B0B77C98227','5','???? 5','105',to_timestamp('01/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),'581959408C2745FBA8D39B879EED848C','???? 1',to_timestamp('02/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),to_timestamp('03/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),'205',to_timestamp('04/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),'305','?????? 5',to_timestamp('05/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),'405','?????? ??? 5',to_timestamp('06/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),'???? 5','???? 5','???? 5','???? 5',to_timestamp('07/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),to_timestamp('08/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),to_timestamp('09/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),to_timestamp('10/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),'?? ???? 5','?? ???? 5','?? ???? 5','?? ???? 5',to_timestamp('11/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),to_timestamp('12/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),to_timestamp('13/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),to_timestamp('14/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),to_timestamp('15/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),to_timestamp('16/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),'505',to_timestamp('17/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),to_timestamp('18/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),to_timestamp('19/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),to_timestamp('20/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),to_timestamp('21/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),'convocation 5','convocation 5',to_timestamp('24/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),'convocation 5','convocation 5',to_timestamp('27/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),'Dispositif Decision 5','???? 5',to_timestamp('29/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),to_timestamp('29/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),'admin',to_timestamp('07/10/24 11:41:01,805000000','DD/MM/RR HH24:MI:SSXFF'),'1');
Insert into SRAIDIHAMZA."DisciplineBudgetaires" ("Id","Numero_Dossier","Appelant","Numero_Jugement_Faisant_Objet_De_Appel","Emis_En_Date_Du","IdCRC","Centre_Comptable","Date_Enregistrement_Requete_Cour_Regionale_Des_Comptes","Date_Requisition_Ministere_Public","Numero_Requisition_Ministere_Public","Date_Ordonnance_Designation_Conseiller_Rapporteur","Numero_Ordonnance_Designation_Conseiller_Rapporteur","Conseiller_Rapporteur","Date_Ordonnance_Designation_Conseiller_Rapporteur_Remplacant","Numero_Ordonnance_Designation_Conseiller_Rapporteur_Remplacant","Conseiller_Rapporteur_Remplacant","Date_Envoi_Requete_Parties","Parties_Agent_du_Roi_au_CRC","Parties_Entrepot_Regional","Parties_Travailleur_du_territoire","Parties_President_de_la_Commune","Date_de_reception_par_les_parties_Agent_du_Roi_au_CRC","Date_de_reception_par_les_parties_Entrepot_Regional","Date_de_reception_par_les_parties_Travailleur_du_territoire","Date_de_reception_par_les_parties_President_de_la_Commune","Reponse_au_memoire_d_appel_Agent_du_Roi_au_CRC","Reponse_au_memoire_d_appel_Entrepot_Regional","Reponse_au_memoire_d_appel_Travailleur_du_territoire","Reponse_au_memoire_d_appel_President_de_la_Commune","Date_Demande_Documents_Supplementaires","Date_Convocation_Interesse_Audience","Date_Enquete_Sur_Le_Terrain","Date_Preparation_Rapport","Date_Transmission_Dossier_Ministere_Public","Date_Conclusions_Ministere_Public","Numero_Conclusions_Ministere_Public","Date_Reception_Convocation_Interesse_Consultation","Date_Reception_Convocation_Avocat_Consultation","Date_Consultation_Interesse","Date_Consultation_Avocat","Date_Retour_Dossier_Greffe_Central","Convocation_Interesse_Audience_Jugement","Convocation_Avocat_Audience_Jugement","Date_Audience_Jugement","Convocation_Avocat_Prononce_Jugement","Convocation_Interesse_Prononce_Jugement","Date_Audience_Prononce_Jugement","Dispositif_Decision","Numero_Decision","Date_Envoi_Decision_Notification_Parties","Date_Reception_Comptable_Copie_Decision","UpdatedBy","UpdateTime","IsActive") values ('A0371686E1604F049DA42126C38A0DF5','6','???? 6','106',to_timestamp('01/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),'581959408C2745FBA8D39B879EED848C','???? 1',to_timestamp('02/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),to_timestamp('03/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),'206',to_timestamp('04/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),'306','?????? 6',to_timestamp('05/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),'406','?????? ??? 6',to_timestamp('06/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),'???? 6','???? 6','???? 6','???? 6',to_timestamp('07/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),to_timestamp('08/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),to_timestamp('09/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),to_timestamp('10/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),'?? ???? 6','?? ???? 6','?? ???? 6','?? ???? 6',to_timestamp('11/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),to_timestamp('12/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),to_timestamp('13/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),to_timestamp('14/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),to_timestamp('15/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),to_timestamp('16/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),'506',to_timestamp('17/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),to_timestamp('18/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),to_timestamp('19/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),to_timestamp('20/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),to_timestamp('21/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),'convocation 6','convocation 6',to_timestamp('24/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),'convocation 6','convocation 6',to_timestamp('27/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),'Dispositif Decision 6','???? 6',to_timestamp('29/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),to_timestamp('29/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),'admin',to_timestamp('07/10/24 11:41:01,805000000','DD/MM/RR HH24:MI:SSXFF'),'1');
REM INSERTING into SRAIDIHAMZA."DisciplineBudgetaireTemp"
SET DEFINE OFF;
REM INSERTING into SRAIDIHAMZA."__EFMigrationsHistory"
SET DEFINE OFF;
Insert into SRAIDIHAMZA."__EFMigrationsHistory" ("MigrationId","ProductVersion") values ('20241007100510_generate-database','8.0.8');
REM INSERTING into SRAIDIHAMZA."Permissions"
SET DEFINE OFF;
Insert into SRAIDIHAMZA."Permissions" ("Id","Groupe","Code","Label","Description","IsActive") values ('63C1A977FBF04B569527495B2A38A48A','Permissions','GetById','PermissionsGetById',null,'1');
Insert into SRAIDIHAMZA."Permissions" ("Id","Groupe","Code","Label","Description","IsActive") values ('A6C4A1BDD88940A184D393F655453454','Permissions','GetAll','PermissionsGetAll',null,'1');
Insert into SRAIDIHAMZA."Permissions" ("Id","Groupe","Code","Label","Description","IsActive") values ('1B2D854D737C499296E6E84354E46C64','Permissions','Update','PermissionsUpdate',null,'1');
Insert into SRAIDIHAMZA."Permissions" ("Id","Groupe","Code","Label","Description","IsActive") values ('44B78933D522405CAC2FA5782D4C21A8','Permissions','Delete','PermissionsDelete',null,'1');
Insert into SRAIDIHAMZA."Permissions" ("Id","Groupe","Code","Label","Description","IsActive") values ('75045B861AE34AC194E5FD6C980080CE','Permissions','Create','PermissionsCreate',null,'1');
Insert into SRAIDIHAMZA."Permissions" ("Id","Groupe","Code","Label","Description","IsActive") values ('6FFAC3A42D244B06BC59352EFA7E33BB','Permissions','Exporter','PermissionsExporter',null,'1');
Insert into SRAIDIHAMZA."Permissions" ("Id","Groupe","Code","Label","Description","IsActive") values ('FB9F60BF2DEE402A8244AF3453084B34','Roles','GetById','RolesGetById',null,'1');
Insert into SRAIDIHAMZA."Permissions" ("Id","Groupe","Code","Label","Description","IsActive") values ('7D697C388D174AECA62C9CA2A33D4CDE','Roles','GetAll','RolesGetAll',null,'1');
Insert into SRAIDIHAMZA."Permissions" ("Id","Groupe","Code","Label","Description","IsActive") values ('D72BAC4E5E894782914B7AC1D8533852','Roles','Update','RolesUpdate',null,'1');
Insert into SRAIDIHAMZA."Permissions" ("Id","Groupe","Code","Label","Description","IsActive") values ('16D56A6B9C564BF9827CB6B535E0396E','Roles','Delete','RolesDelete',null,'1');
Insert into SRAIDIHAMZA."Permissions" ("Id","Groupe","Code","Label","Description","IsActive") values ('63A8962BAE224190998A57604D8F819D','Roles','Create','RolesCreate',null,'1');
Insert into SRAIDIHAMZA."Permissions" ("Id","Groupe","Code","Label","Description","IsActive") values ('A22144D1F63444ED9F2220825345003A','Roles','AddPermissions','RolesAddPermissions',null,'1');
Insert into SRAIDIHAMZA."Permissions" ("Id","Groupe","Code","Label","Description","IsActive") values ('F0E824EE17ED48F4A5A36EF73097D785','Roles','GetPermissions','RolesGetPermissions',null,'1');
Insert into SRAIDIHAMZA."Permissions" ("Id","Groupe","Code","Label","Description","IsActive") values ('8784F86D9711407DA470E4C8521C71EA','Roles','Exporter','RolesExporter',null,'1');
Insert into SRAIDIHAMZA."Permissions" ("Id","Groupe","Code","Label","Description","IsActive") values ('6152E48A819F49938A58A9720BEC33DD','PersonnePhysique','Create','PersonnePhysiqueCreate',null,'1');
Insert into SRAIDIHAMZA."Permissions" ("Id","Groupe","Code","Label","Description","IsActive") values ('EF93EF2C04CE47A2AFBF4D3EC0262744','PersonnePhysique','Delete','PersonnePhysiqueDelete',null,'1');
Insert into SRAIDIHAMZA."Permissions" ("Id","Groupe","Code","Label","Description","IsActive") values ('918AD853B2654B2EBB7B9EBC12E6ABA7','PersonnePhysique','GetById','PersonnePhysiqueGetById',null,'1');
Insert into SRAIDIHAMZA."Permissions" ("Id","Groupe","Code","Label","Description","IsActive") values ('9C572105F17B44859374889C7DA7ECC1','PersonnePhysique','GetAll','PersonnePhysiqueGetAll',null,'1');
Insert into SRAIDIHAMZA."Permissions" ("Id","Groupe","Code","Label","Description","IsActive") values ('05402BB4F22C42D387D35F5211496903','PersonnePhysique','Update','PersonnePhysiqueUpdate',null,'1');
Insert into SRAIDIHAMZA."Permissions" ("Id","Groupe","Code","Label","Description","IsActive") values ('3DB92AF83281465495A9ACD133610D28','PersonnePhysique','Exporter','PersonnePhysiqueExporter',null,'1');
Insert into SRAIDIHAMZA."Permissions" ("Id","Groupe","Code","Label","Description","IsActive") values ('C9064B20EC8A4D3D805A05C6567B1D21','Utilisateurs','AddPermissions','UtilisateursAddPermissions',null,'1');
Insert into SRAIDIHAMZA."Permissions" ("Id","Groupe","Code","Label","Description","IsActive") values ('C9C637150E89492495F9E2B8DE6A5B74','Utilisateurs','AddRoles','UtilisateursAddRoles',null,'1');
Insert into SRAIDIHAMZA."Permissions" ("Id","Groupe","Code","Label","Description","IsActive") values ('24DA788D84324925A599DA25C439BB4B','Utilisateurs','GetPermissions','UtilisateursGetPermissions',null,'1');
Insert into SRAIDIHAMZA."Permissions" ("Id","Groupe","Code","Label","Description","IsActive") values ('08408FFEF538409FA1DBF1AF3FA636FC','Utilisateurs','GetRoles','UtilisateursGetRoles',null,'1');
Insert into SRAIDIHAMZA."Permissions" ("Id","Groupe","Code","Label","Description","IsActive") values ('CAD7AB804E1A4623A689AF33A48A7BAD','Utilisateurs','Create','UtilisateursCreate',null,'1');
Insert into SRAIDIHAMZA."Permissions" ("Id","Groupe","Code","Label","Description","IsActive") values ('A13E1FE7FA314DACA44031AD169F9097','Utilisateurs','Delete','UtilisateursDelete',null,'1');
Insert into SRAIDIHAMZA."Permissions" ("Id","Groupe","Code","Label","Description","IsActive") values ('13C80C8F577143BE8D50E43F172C9B87','Utilisateurs','GetById','UtilisateursGetById',null,'1');
Insert into SRAIDIHAMZA."Permissions" ("Id","Groupe","Code","Label","Description","IsActive") values ('2C87E0EC34314B1AAC004F70290E64D0','Utilisateurs','GetAll','UtilisateursGetAll',null,'1');
Insert into SRAIDIHAMZA."Permissions" ("Id","Groupe","Code","Label","Description","IsActive") values ('2A5B1EC6C02245DB8E48A2CB274388E8','Utilisateurs','Update','UtilisateursUpdate',null,'1');
Insert into SRAIDIHAMZA."Permissions" ("Id","Groupe","Code","Label","Description","IsActive") values ('B8126805382846CDA2075987F997D4F3','Utilisateurs','ChangePassword','UtilisateursChangePassword',null,'1');
Insert into SRAIDIHAMZA."Permissions" ("Id","Groupe","Code","Label","Description","IsActive") values ('9F7F6E96889A4A0285F6D39BC65F29FD','Utilisateurs','ShowProfile','UtilisateursShowProfile',null,'1');
Insert into SRAIDIHAMZA."Permissions" ("Id","Groupe","Code","Label","Description","IsActive") values ('093C7A301DB4413794D9856B9A1F2AA5','Utilisateurs','Exporter','UtilisateursExporter',null,'1');
REM INSERTING into SRAIDIHAMZA."RolePermissions"
SET DEFINE OFF;
REM INSERTING into SRAIDIHAMZA."Roles"
SET DEFINE OFF;
Insert into SRAIDIHAMZA."Roles" ("Id","Code","Label","Description","IsActive") values ('488D582BE96C45B89534022B87D3DDF7','Admin','Admin',null,'1');
Insert into SRAIDIHAMZA."Roles" ("Id","Code","Label","Description","IsActive") values ('179C723F0E88446CBBFEFCB99148333D','Utilisateur','Utilisateur',null,'1');
REM INSERTING into SRAIDIHAMZA."TypeGrades"
SET DEFINE OFF;
Insert into SRAIDIHAMZA."TypeGrades" ("Id","Code","Label","Description","IsActive") values ('A3E9010A14064624810C2F17AD25C308',null,'Grade 1',null,'1');
Insert into SRAIDIHAMZA."TypeGrades" ("Id","Code","Label","Description","IsActive") values ('C031FD37E9784C20A46D6D43E71F9132',null,'Grade 2',null,'1');
REM INSERTING into SRAIDIHAMZA."TypeUtilisateurs"
SET DEFINE OFF;
Insert into SRAIDIHAMZA."TypeUtilisateurs" ("Id","Code","Label","Description","IsActive") values ('7FF72235DA7449978E03F62F148B4662',null,'Utilisateur 1',null,'1');
Insert into SRAIDIHAMZA."TypeUtilisateurs" ("Id","Code","Label","Description","IsActive") values ('B878150BEE4346C59C7ED0F3E8CB9F0C',null,'Utilisateur 2',null,'1');
REM INSERTING into SRAIDIHAMZA."UtilisateurLoggings"
SET DEFINE OFF;
REM INSERTING into SRAIDIHAMZA."UtilisateurPermissions"
SET DEFINE OFF;
REM INSERTING into SRAIDIHAMZA."UtilisateurRoles"
SET DEFINE OFF;
REM INSERTING into SRAIDIHAMZA."Utilisateurs"
SET DEFINE OFF;
Insert into SRAIDIHAMZA."Utilisateurs" ("Id","Nom","Prenom","NomArabe","PrenomArabe","Email","Login","Password","TypeUtilisateurId","TypeGradeId","UpdatedBy","UpdateTime","IsActive") values ('85B998BDEB2E418BB19763E117918786','system','administrateur',null,null,'admin@courdescomptes.ma','admin','17-D9-B7-C0-6B-78-58-19-82-0C-F0-F4-98-F2-0C-DF','7FF72235DA7449978E03F62F148B4662','A3E9010A14064624810C2F17AD25C308','admin',null,'1');
--------------------------------------------------------
--  DDL for Index IX_Utilisateurs_TypeUtilisateurId
--------------------------------------------------------

  CREATE INDEX "SRAIDIHAMZA"."IX_Utilisateurs_TypeUtilisateurId" ON "SRAIDIHAMZA"."Utilisateurs" ("TypeUtilisateurId") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
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
--  DDL for Index PK___EFMigrationsHistory
--------------------------------------------------------

  CREATE UNIQUE INDEX "SRAIDIHAMZA"."PK___EFMigrationsHistory" ON "SRAIDIHAMZA"."__EFMigrationsHistory" ("MigrationId") 
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
--  DDL for Index PK_Roles
--------------------------------------------------------

  CREATE UNIQUE INDEX "SRAIDIHAMZA"."PK_Roles" ON "SRAIDIHAMZA"."Roles" ("Id") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
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
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index PK_Permissions
--------------------------------------------------------

  CREATE UNIQUE INDEX "SRAIDIHAMZA"."PK_Permissions" ON "SRAIDIHAMZA"."Permissions" ("Id") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index PK_TypeUtilisateurs
--------------------------------------------------------

  CREATE UNIQUE INDEX "SRAIDIHAMZA"."PK_TypeUtilisateurs" ON "SRAIDIHAMZA"."TypeUtilisateurs" ("Id") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index PK_UtilisateurLoggings
--------------------------------------------------------

  CREATE UNIQUE INDEX "SRAIDIHAMZA"."PK_UtilisateurLoggings" ON "SRAIDIHAMZA"."UtilisateurLoggings" ("Id") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index IX_UtilisateurPermissions_UtilisateurId
--------------------------------------------------------

  CREATE INDEX "SRAIDIHAMZA"."IX_UtilisateurPermissions_UtilisateurId" ON "SRAIDIHAMZA"."UtilisateurPermissions" ("UtilisateurId") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index PK_DisciplineBudgetaireTemp
--------------------------------------------------------

  CREATE UNIQUE INDEX "SRAIDIHAMZA"."PK_DisciplineBudgetaireTemp" ON "SRAIDIHAMZA"."DisciplineBudgetaireTemp" ("Id") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
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
--  DDL for Index PK_TypeGrades
--------------------------------------------------------

  CREATE UNIQUE INDEX "SRAIDIHAMZA"."PK_TypeGrades" ON "SRAIDIHAMZA"."TypeGrades" ("Id") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index PK_UtilisateurRoles
--------------------------------------------------------

  CREATE UNIQUE INDEX "SRAIDIHAMZA"."PK_UtilisateurRoles" ON "SRAIDIHAMZA"."UtilisateurRoles" ("Id") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index IX_DisciplineBudgetaires_IdCRC
--------------------------------------------------------

  CREATE INDEX "SRAIDIHAMZA"."IX_DisciplineBudgetaires_IdCRC" ON "SRAIDIHAMZA"."DisciplineBudgetaires" ("IdCRC") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index IX_UtilisateurPermissions_PermissionId
--------------------------------------------------------

  CREATE INDEX "SRAIDIHAMZA"."IX_UtilisateurPermissions_PermissionId" ON "SRAIDIHAMZA"."UtilisateurPermissions" ("PermissionId") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index IX_Utilisateurs_TypeGradeId
--------------------------------------------------------

  CREATE INDEX "SRAIDIHAMZA"."IX_Utilisateurs_TypeGradeId" ON "SRAIDIHAMZA"."Utilisateurs" ("TypeGradeId") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Procedure SP_DISCIPLINEBUDGETAIRETEMP_CONFIRME
--------------------------------------------------------
set define off;

  CREATE OR REPLACE EDITIONABLE PROCEDURE "SRAIDIHAMZA"."SP_DISCIPLINEBUDGETAIRETEMP_CONFIRME" IS
BEGIN
  INSERT INTO "SRAIDIHAMZA"."DisciplineBudgetaires" (
      "Id", 
      "Numero_Dossier", 
      "Appelant", 
      "Numero_Jugement_Faisant_Objet_De_Appel", 
      "Emis_En_Date_Du", 
      "IdCRC", 
      "Centre_Comptable", 
      "Date_Enregistrement_Requete_Cour_Regionale_Des_Comptes", 
      "Date_Requisition_Ministere_Public", 
      "Numero_Requisition_Ministere_Public", 
      "Date_Ordonnance_Designation_Conseiller_Rapporteur", 
      "Numero_Ordonnance_Designation_Conseiller_Rapporteur", 
      "Conseiller_Rapporteur", 
      "Date_Ordonnance_Designation_Conseiller_Rapporteur_Remplacant", 
      "Numero_Ordonnance_Designation_Conseiller_Rapporteur_Remplacant", 
      "Conseiller_Rapporteur_Remplacant", 
      "Date_Envoi_Requete_Parties", 
      "Parties_Agent_du_Roi_au_CRC", 
      "Parties_Entrepot_Regional", 
      "Parties_Travailleur_du_territoire", 
      "Parties_President_de_la_Commune", 
      "Date_de_reception_par_les_parties_Agent_du_Roi_au_CRC", 
      "Date_de_reception_par_les_parties_Entrepot_Regional", 
      "Date_de_reception_par_les_parties_Travailleur_du_territoire", 
      "Date_de_reception_par_les_parties_President_de_la_Commune", 
      "Reponse_au_memoire_d_appel_Agent_du_Roi_au_CRC", 
      "Reponse_au_memoire_d_appel_Entrepot_Regional", 
      "Reponse_au_memoire_d_appel_Travailleur_du_territoire", 
      "Reponse_au_memoire_d_appel_President_de_la_Commune", 
      "Date_Demande_Documents_Supplementaires", 
      "Date_Convocation_Interesse_Audience", 
      "Date_Enquete_Sur_Le_Terrain", 
      "Date_Preparation_Rapport", 
      "Date_Transmission_Dossier_Ministere_Public", 
      "Date_Conclusions_Ministere_Public", 
      "Numero_Conclusions_Ministere_Public", 
      "Date_Reception_Convocation_Interesse_Consultation", 
      "Date_Reception_Convocation_Avocat_Consultation", 
      "Date_Consultation_Interesse", 
      "Date_Consultation_Avocat", 
      "Date_Retour_Dossier_Greffe_Central", 
      "Convocation_Interesse_Audience_Jugement", 
      "Convocation_Avocat_Audience_Jugement", 
      "Date_Audience_Jugement", 
      "Convocation_Avocat_Prononce_Jugement", 
      "Convocation_Interesse_Prononce_Jugement", 
      "Date_Audience_Prononce_Jugement", 
      "Dispositif_Decision", 
      "Numero_Decision", 
      "Date_Envoi_Decision_Notification_Parties", 
      "Date_Reception_Comptable_Copie_Decision", 
      "UpdatedBy", 
      "UpdateTime", 
      "IsActive"
  )
   SELECT 
      SYS_GUID(),
      dbt."Numero_Dossier", 
      dbt."Appelant", 
      dbt."Numero_Jugement_Faisant_Objet_De_Appel", 
      TO_DATE(dbt."Emis_En_Date_Du", 'YYYY-MM-DD'), 
      (SELECT "Id" FROM "SRAIDIHAMZA"."CRCs" WHERE "Label" = dbt."CRC"), 
      dbt."Centre_Comptable", 
      TO_DATE(dbt."Date_Enregistrement_Requete_Cour_Regionale_Des_Comptes", 'YYYY-MM-DD'), 
      TO_DATE(dbt."Date_Requisition_Ministere_Public", 'YYYY-MM-DD'), 
      dbt."Numero_Requisition_Ministere_Public", 
      TO_DATE(dbt."Date_Ordonnance_Designation_Conseiller_Rapporteur", 'YYYY-MM-DD'), 
      dbt."Numero_Ordonnance_Designation_Conseiller_Rapporteur", 
      dbt."Conseiller_Rapporteur", 
      TO_DATE(dbt."Date_Ordonnance_Designation_Conseiller_Rapporteur_Remplacant", 'YYYY-MM-DD'), 
      dbt."Numero_Ordonnance_Designation_Conseiller_Rapporteur_Remplacant", 
      dbt."Conseiller_Rapporteur_Remplacant", 
      TO_DATE(dbt."Date_Envoi_Requete_Parties", 'YYYY-MM-DD'), 
      dbt."Parties_Agent_du_Roi_au_CRC", 
      dbt."Parties_Entrepot_Regional", 
      dbt."Parties_Travailleur_du_territoire", 
      dbt."Parties_President_de_la_Commune", 
      TO_DATE(dbt."Date_de_reception_par_les_parties_Agent_du_Roi_au_CRC", 'YYYY-MM-DD'), 
      TO_DATE(dbt."Date_de_reception_par_les_parties_Entrepot_Regional", 'YYYY-MM-DD'), 
      TO_DATE(dbt."Date_de_reception_par_les_parties_Travailleur_du_territoire", 'YYYY-MM-DD'), 
      TO_DATE(dbt."Date_de_reception_par_les_parties_President_de_la_Commune", 'YYYY-MM-DD'), 
      dbt."Reponse_au_memoire_d_appel_Agent_du_Roi_au_CRC", 
      dbt."Reponse_au_memoire_d_appel_Entrepot_Regional", 
      dbt."Reponse_au_memoire_d_appel_Travailleur_du_territoire", 
      dbt."Reponse_au_memoire_d_appel_President_de_la_Commune", 
      TO_DATE(dbt."Date_Demande_Documents_Supplementaires", 'YYYY-MM-DD'), 
      TO_DATE(dbt."Date_Convocation_Interesse_Audience", 'YYYY-MM-DD'), 
      TO_DATE(dbt."Date_Enquete_Sur_Le_Terrain", 'YYYY-MM-DD'), 
      TO_DATE(dbt."Date_Preparation_Rapport", 'YYYY-MM-DD'), 
      TO_DATE(dbt."Date_Transmission_Dossier_Ministere_Public", 'YYYY-MM-DD'), 
      TO_DATE(dbt."Date_Conclusions_Ministere_Public", 'YYYY-MM-DD'), 
      dbt."Numero_Conclusions_Ministere_Public", 
      TO_DATE(dbt."Date_Reception_Convocation_Interesse_Consultation", 'YYYY-MM-DD'), 
      TO_DATE(dbt."Date_Reception_Convocation_Avocat_Consultation", 'YYYY-MM-DD'), 
      TO_DATE(dbt."Date_Consultation_Interesse", 'YYYY-MM-DD'), 
      TO_DATE(dbt."Date_Consultation_Avocat", 'YYYY-MM-DD'), 
      TO_DATE(dbt."Date_Retour_Dossier_Greffe_Central", 'YYYY-MM-DD'), 
      dbt."Convocation_Interesse_Audience_Jugement", 
      dbt."Convocation_Avocat_Audience_Jugement", 
      TO_DATE(dbt."Date_Audience_Jugement", 'YYYY-MM-DD'), 
      dbt."Convocation_Avocat_Prononce_Jugement", 
      dbt."Convocation_Interesse_Prononce_Jugement", 
      TO_DATE(dbt."Date_Audience_Prononce_Jugement", 'YYYY-MM-DD'), 
      dbt."Dispositif_Decision", 
      dbt."Numero_Decision", 
      TO_DATE(dbt."Date_Envoi_Decision_Notification_Parties", 'YYYY-MM-DD'), 
      TO_DATE(dbt."Date_Reception_Comptable_Copie_Decision", 'YYYY-MM-DD'), 
      dbt."UpdatedBy", 
      SYSTIMESTAMP, 
      1 

  FROM "SRAIDIHAMZA"."DisciplineBudgetaireTemp" dbt;

    --Delete the temporary table after the insert
    DELETE "SRAIDIHAMZA"."DisciplineBudgetaireTemp";

END SP_DISCIPLINEBUDGETAIRETEMP_CONFIRME;

/
--------------------------------------------------------
--  DDL for Procedure SP_DISCIPLINEBUDGETAIRETEMP_VALIDATE
--------------------------------------------------------
set define off;

  CREATE OR REPLACE EDITIONABLE PROCEDURE "SRAIDIHAMZA"."SP_DISCIPLINEBUDGETAIRETEMP_VALIDATE" 
AS 
BEGIN
    -- Clear the RowError field (set it to NULL to fully clear)
    UPDATE "SRAIDIHAMZA"."DisciplineBudgetaireTemp"
    SET "RowError" = NULL;

    UPDATE "SRAIDIHAMZA"."DisciplineBudgetaireTemp"
    SET "RowError" = COALESCE(TO_CHAR("RowError"), '') || ' #Numero de dossier est obligatoire '
    WHERE "Numero_Dossier" IS NULL;

    UPDATE "SRAIDIHAMZA"."DisciplineBudgetaireTemp"
    SET "RowError" = COALESCE(TO_CHAR("RowError"), '') || ' #Appelant est obligatoire '
    WHERE "Appelant" IS NULL;

    UPDATE "SRAIDIHAMZA"."DisciplineBudgetaireTemp"
    SET "RowError" = COALESCE(TO_CHAR("RowError"), '') || ' #Emis en date est obligatoire '
    WHERE "Emis_En_Date_Du" IS NULL;

    UPDATE "SRAIDIHAMZA"."DisciplineBudgetaireTemp"
    SET "RowError" = COALESCE(TO_CHAR("RowError"), '') || ' #CRC est obligatoire '
    WHERE "CRC" IS NULL;

    UPDATE "SRAIDIHAMZA"."DisciplineBudgetaireTemp"
    SET "RowError" = COALESCE(TO_CHAR("RowError"), '') || ' #CRC est introvable '
    WHERE "CRC" NOT IN (SELECT "Label" FROM "CRCs");

    UPDATE "SRAIDIHAMZA"."DisciplineBudgetaireTemp"
    SET "RowError" = COALESCE(TO_CHAR("RowError"), '') || ' #Centre comptable est obligatoire '
    WHERE "Centre_Comptable" IS NULL;

    -- Commit the transaction
    COMMIT;
END SP_DISCIPLINEBUDGETAIRETEMP_VALIDATE;

/
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
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table UtilisateurLoggings
--------------------------------------------------------

  ALTER TABLE "SRAIDIHAMZA"."UtilisateurLoggings" MODIFY ("Id" NOT NULL ENABLE);
  ALTER TABLE "SRAIDIHAMZA"."UtilisateurLoggings" MODIFY ("UtilisateurId" NOT NULL ENABLE);
  ALTER TABLE "SRAIDIHAMZA"."UtilisateurLoggings" MODIFY ("Action" NOT NULL ENABLE);
  ALTER TABLE "SRAIDIHAMZA"."UtilisateurLoggings" MODIFY ("DateLogging" NOT NULL ENABLE);
  ALTER TABLE "SRAIDIHAMZA"."UtilisateurLoggings" ADD CONSTRAINT "PK_UtilisateurLoggings" PRIMARY KEY ("Id")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table DisciplineBudgetaireTemp
--------------------------------------------------------

  ALTER TABLE "SRAIDIHAMZA"."DisciplineBudgetaireTemp" MODIFY ("Id" NOT NULL ENABLE);
  ALTER TABLE "SRAIDIHAMZA"."DisciplineBudgetaireTemp" MODIFY ("RowNumber" NOT NULL ENABLE);
  ALTER TABLE "SRAIDIHAMZA"."DisciplineBudgetaireTemp" ADD CONSTRAINT "PK_DisciplineBudgetaireTemp" PRIMARY KEY ("Id")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table DisciplineBudgetaires
--------------------------------------------------------

  ALTER TABLE "SRAIDIHAMZA"."DisciplineBudgetaires" MODIFY ("Id" NOT NULL ENABLE);
  ALTER TABLE "SRAIDIHAMZA"."DisciplineBudgetaires" MODIFY ("IdCRC" NOT NULL ENABLE);
  ALTER TABLE "SRAIDIHAMZA"."DisciplineBudgetaires" MODIFY ("IsActive" NOT NULL ENABLE);
  ALTER TABLE "SRAIDIHAMZA"."DisciplineBudgetaires" ADD CONSTRAINT "PK_DisciplineBudgetaires" PRIMARY KEY ("Id")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
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
  ALTER TABLE "SRAIDIHAMZA"."Utilisateurs" MODIFY ("Id" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table Permissions
--------------------------------------------------------

  ALTER TABLE "SRAIDIHAMZA"."Permissions" MODIFY ("Id" NOT NULL ENABLE);
  ALTER TABLE "SRAIDIHAMZA"."Permissions" MODIFY ("Groupe" NOT NULL ENABLE);
  ALTER TABLE "SRAIDIHAMZA"."Permissions" MODIFY ("Label" NOT NULL ENABLE);
  ALTER TABLE "SRAIDIHAMZA"."Permissions" MODIFY ("IsActive" NOT NULL ENABLE);
  ALTER TABLE "SRAIDIHAMZA"."Permissions" ADD CONSTRAINT "PK_Permissions" PRIMARY KEY ("Id")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
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
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table TypeUtilisateurs
--------------------------------------------------------

  ALTER TABLE "SRAIDIHAMZA"."TypeUtilisateurs" MODIFY ("Id" NOT NULL ENABLE);
  ALTER TABLE "SRAIDIHAMZA"."TypeUtilisateurs" MODIFY ("Label" NOT NULL ENABLE);
  ALTER TABLE "SRAIDIHAMZA"."TypeUtilisateurs" MODIFY ("IsActive" NOT NULL ENABLE);
  ALTER TABLE "SRAIDIHAMZA"."TypeUtilisateurs" ADD CONSTRAINT "PK_TypeUtilisateurs" PRIMARY KEY ("Id")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
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
--------------------------------------------------------
--  Ref Constraints for Table Utilisateurs
--------------------------------------------------------

  ALTER TABLE "SRAIDIHAMZA"."Utilisateurs" ADD CONSTRAINT "FK_Utilisateurs_TypeGrades_TypeGradeId" FOREIGN KEY ("TypeGradeId")
	  REFERENCES "SRAIDIHAMZA"."TypeGrades" ("Id") ON DELETE CASCADE ENABLE;
  ALTER TABLE "SRAIDIHAMZA"."Utilisateurs" ADD CONSTRAINT "FK_Utilisateurs_TypeUtilisateurs_TypeUtilisateurId" FOREIGN KEY ("TypeUtilisateurId")
	  REFERENCES "SRAIDIHAMZA"."TypeUtilisateurs" ("Id") ON DELETE CASCADE ENABLE;
