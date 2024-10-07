--------------------------------------------------------
--  Fichier créé - jeudi-octobre-03-2024   
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
	"Date_Reception_Comptable_Copie_Decision" NVARCHAR2(2000), 
	"UpdatedBy" NVARCHAR2(80), 
	"UpdateTime" TIMESTAMP (7), 
	"IsActive" NUMBER(10,0)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
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
Insert into SRAIDIHAMZA."CRCs" ("Id","Code","Label","Description","IsActive") values ('882AF380C7B9492789DBAF81FDF39CF4',null,'Cour régionale des comptes de Rabat-Salé-Kénitra',null,'1');
Insert into SRAIDIHAMZA."CRCs" ("Id","Code","Label","Description","IsActive") values ('4E445058E852410B9095C39E4C06992F',null,'Cour régionale des comptes de Casablanca-Settat',null,'1');
Insert into SRAIDIHAMZA."CRCs" ("Id","Code","Label","Description","IsActive") values ('B600F7E3DF304DC58FDD29EB51511964',null,'Cour régionale des comptes de Fès-Meknès',null,'1');
Insert into SRAIDIHAMZA."CRCs" ("Id","Code","Label","Description","IsActive") values ('C4E7B8271F56409B880A76EB435CD603',null,'Cour régionale des comptes de Marrakech-Safi',null,'1');
Insert into SRAIDIHAMZA."CRCs" ("Id","Code","Label","Description","IsActive") values ('5BE199D9D2464D9983F66BC718A33D51',null,'Cour régionale des comptes de Tanger-Tétouan-Al Hoceima',null,'1');
Insert into SRAIDIHAMZA."CRCs" ("Id","Code","Label","Description","IsActive") values ('BB5595CB38A04389B2D69FE328A75CEA',null,'Cour régionale des comptes de Souss-Massa',null,'1');
Insert into SRAIDIHAMZA."CRCs" ("Id","Code","Label","Description","IsActive") values ('3EB5FCC5135A4D76ACF312B530C664F0',null,'Cour régionale des comptes de l Oriental',null,'1');
Insert into SRAIDIHAMZA."CRCs" ("Id","Code","Label","Description","IsActive") values ('EB961FA57F5340D993C262065B137116',null,'Cour régionale des comptes de Drâa-Tafilalet',null,'1');
Insert into SRAIDIHAMZA."CRCs" ("Id","Code","Label","Description","IsActive") values ('6A4A7D9FE5DC4C26957DE4D861FCF5E2',null,'Cour régionale des comptes de Beni Mellal-Khénifra',null,'1');
Insert into SRAIDIHAMZA."CRCs" ("Id","Code","Label","Description","IsActive") values ('0F47AE97E6324251B1AAC3DE54D8C860',null,'Cour régionale des comptes de Guelmim-Oued Noun',null,'1');
Insert into SRAIDIHAMZA."CRCs" ("Id","Code","Label","Description","IsActive") values ('C05767ABA8A442E39515F121C02C2831',null,'Cour régionale des comptes de Laâyoune-Sakia El Hamra',null,'1');
Insert into SRAIDIHAMZA."CRCs" ("Id","Code","Label","Description","IsActive") values ('95D7B70DA5B94F29A55777B85DC49B9C',null,'Cour régionale des comptes de Dakhla-Oued Ed-Dahab',null,'1');
REM INSERTING into SRAIDIHAMZA."DisciplineBudgetaires"
SET DEFINE OFF;
REM INSERTING into SRAIDIHAMZA."DisciplineBudgetaireTemp"
SET DEFINE OFF;
Insert into SRAIDIHAMZA."DisciplineBudgetaireTemp" ("Id","Numero_Dossier","Appelant","Numero_Jugement_Faisant_Objet_De_Appel","Emis_En_Date_Du",CRC,"Centre_Comptable","Date_Enregistrement_Requete_Cour_Regionale_Des_Comptes","Date_Requisition_Ministere_Public","Numero_Requisition_Ministere_Public","Date_Ordonnance_Designation_Conseiller_Rapporteur","Numero_Ordonnance_Designation_Conseiller_Rapporteur","Conseiller_Rapporteur","Date_Ordonnance_Designation_Conseiller_Rapporteur_Remplacant","Numero_Ordonnance_Designation_Conseiller_Rapporteur_Remplacant","Conseiller_Rapporteur_Remplacant","Date_Envoi_Requete_Parties","Parties_Agent_du_Roi_au_CRC","Parties_Entrepot_Regional","Parties_Travailleur_du_territoire","Parties_President_de_la_Commune","Date_de_reception_par_les_parties_Agent_du_Roi_au_CRC","Date_de_reception_par_les_parties_Entrepot_Regional","Date_de_reception_par_les_parties_Travailleur_du_territoire","Date_de_reception_par_les_parties_President_de_la_Commune","Reponse_au_memoire_d_appel_Agent_du_Roi_au_CRC","Reponse_au_memoire_d_appel_Entrepot_Regional","Reponse_au_memoire_d_appel_Travailleur_du_territoire","Reponse_au_memoire_d_appel_President_de_la_Commune","Date_Demande_Documents_Supplementaires","Date_Convocation_Interesse_Audience","Date_Enquete_Sur_Le_Terrain","Date_Preparation_Rapport","Date_Transmission_Dossier_Ministere_Public","Date_Conclusions_Ministere_Public","Numero_Conclusions_Ministere_Public","Date_Reception_Convocation_Interesse_Consultation","Date_Reception_Convocation_Avocat_Consultation","Date_Consultation_Interesse","Date_Consultation_Avocat","Date_Retour_Dossier_Greffe_Central","Convocation_Interesse_Audience_Jugement","Convocation_Avocat_Audience_Jugement","Date_Audience_Jugement","Convocation_Avocat_Prononce_Jugement","Convocation_Interesse_Prononce_Jugement","Date_Audience_Prononce_Jugement","Dispositif_Decision","Numero_Decision","Date_Envoi_Decision_Notification_Parties","Date_Reception_Comptable_Copie_Decision","UpdatedBy","UpdateTime","RowNumber","RowError") values ('8CF312DAF3433F4692C3533C22BE87A1',null,null,'108','2024-09-01',null,'???? 1','2024-09-02','2024-09-03','208','2024-09-04','308','?????? 8','2024-09-05','408','?????? ??? 8','2024-09-06','???? 8','???? 8','???? 8','???? 8','2024-09-07','2024-09-08','2024-09-09','2024-09-10','?? ???? 8','?? ???? 8','?? ???? 8','?? ???? 8','2024-09-11','2024-09-12','2024-09-13','2024-09-14','2024-09-15','2024-09-16','508','2024-09-17','2024-09-18','2024-09-19','2024-09-20','2024-09-21','2024-09-22','2024-09-23','2024-09-24','2024-09-25','2024-09-26','2024-09-27','2024-09-28','???? 8','608','2024-09-29','admin','03/10/2024 15:59:8','8',' #Numero de dossier est obligatoire  #Appelant est obligatoire  #CRC est obligatoire ');
Insert into SRAIDIHAMZA."DisciplineBudgetaireTemp" ("Id","Numero_Dossier","Appelant","Numero_Jugement_Faisant_Objet_De_Appel","Emis_En_Date_Du",CRC,"Centre_Comptable","Date_Enregistrement_Requete_Cour_Regionale_Des_Comptes","Date_Requisition_Ministere_Public","Numero_Requisition_Ministere_Public","Date_Ordonnance_Designation_Conseiller_Rapporteur","Numero_Ordonnance_Designation_Conseiller_Rapporteur","Conseiller_Rapporteur","Date_Ordonnance_Designation_Conseiller_Rapporteur_Remplacant","Numero_Ordonnance_Designation_Conseiller_Rapporteur_Remplacant","Conseiller_Rapporteur_Remplacant","Date_Envoi_Requete_Parties","Parties_Agent_du_Roi_au_CRC","Parties_Entrepot_Regional","Parties_Travailleur_du_territoire","Parties_President_de_la_Commune","Date_de_reception_par_les_parties_Agent_du_Roi_au_CRC","Date_de_reception_par_les_parties_Entrepot_Regional","Date_de_reception_par_les_parties_Travailleur_du_territoire","Date_de_reception_par_les_parties_President_de_la_Commune","Reponse_au_memoire_d_appel_Agent_du_Roi_au_CRC","Reponse_au_memoire_d_appel_Entrepot_Regional","Reponse_au_memoire_d_appel_Travailleur_du_territoire","Reponse_au_memoire_d_appel_President_de_la_Commune","Date_Demande_Documents_Supplementaires","Date_Convocation_Interesse_Audience","Date_Enquete_Sur_Le_Terrain","Date_Preparation_Rapport","Date_Transmission_Dossier_Ministere_Public","Date_Conclusions_Ministere_Public","Numero_Conclusions_Ministere_Public","Date_Reception_Convocation_Interesse_Consultation","Date_Reception_Convocation_Avocat_Consultation","Date_Consultation_Interesse","Date_Consultation_Avocat","Date_Retour_Dossier_Greffe_Central","Convocation_Interesse_Audience_Jugement","Convocation_Avocat_Audience_Jugement","Date_Audience_Jugement","Convocation_Avocat_Prononce_Jugement","Convocation_Interesse_Prononce_Jugement","Date_Audience_Prononce_Jugement","Dispositif_Decision","Numero_Decision","Date_Envoi_Decision_Notification_Parties","Date_Reception_Comptable_Copie_Decision","UpdatedBy","UpdateTime","RowNumber","RowError") values ('FACC50DE72938642A9CABBB0B414A9A0','9','???? 9','109','2024-09-01',null,'???? 1','2024-09-02','2024-09-03','209','2024-09-04','309','?????? 9','2024-09-05','409','?????? ??? 9','2024-09-06','???? 9','???? 9','???? 9','???? 9','2024-09-07','2024-09-08','2024-09-09','2024-09-10','?? ???? 9','?? ???? 9','?? ???? 9','?? ???? 9','2024-09-11','2024-09-12','2024-09-13','2024-09-14','2024-09-15','2024-09-16','509','2024-09-17','2024-09-18','2024-09-19','2024-09-20','2024-09-21','2024-09-22','2024-09-23','2024-09-24','2024-09-25','2024-09-26','2024-09-27','2024-09-28','???? 9','609','2024-09-29','admin','03/10/2024 15:59:8','9',' #CRC est obligatoire ');
Insert into SRAIDIHAMZA."DisciplineBudgetaireTemp" ("Id","Numero_Dossier","Appelant","Numero_Jugement_Faisant_Objet_De_Appel","Emis_En_Date_Du",CRC,"Centre_Comptable","Date_Enregistrement_Requete_Cour_Regionale_Des_Comptes","Date_Requisition_Ministere_Public","Numero_Requisition_Ministere_Public","Date_Ordonnance_Designation_Conseiller_Rapporteur","Numero_Ordonnance_Designation_Conseiller_Rapporteur","Conseiller_Rapporteur","Date_Ordonnance_Designation_Conseiller_Rapporteur_Remplacant","Numero_Ordonnance_Designation_Conseiller_Rapporteur_Remplacant","Conseiller_Rapporteur_Remplacant","Date_Envoi_Requete_Parties","Parties_Agent_du_Roi_au_CRC","Parties_Entrepot_Regional","Parties_Travailleur_du_territoire","Parties_President_de_la_Commune","Date_de_reception_par_les_parties_Agent_du_Roi_au_CRC","Date_de_reception_par_les_parties_Entrepot_Regional","Date_de_reception_par_les_parties_Travailleur_du_territoire","Date_de_reception_par_les_parties_President_de_la_Commune","Reponse_au_memoire_d_appel_Agent_du_Roi_au_CRC","Reponse_au_memoire_d_appel_Entrepot_Regional","Reponse_au_memoire_d_appel_Travailleur_du_territoire","Reponse_au_memoire_d_appel_President_de_la_Commune","Date_Demande_Documents_Supplementaires","Date_Convocation_Interesse_Audience","Date_Enquete_Sur_Le_Terrain","Date_Preparation_Rapport","Date_Transmission_Dossier_Ministere_Public","Date_Conclusions_Ministere_Public","Numero_Conclusions_Ministere_Public","Date_Reception_Convocation_Interesse_Consultation","Date_Reception_Convocation_Avocat_Consultation","Date_Consultation_Interesse","Date_Consultation_Avocat","Date_Retour_Dossier_Greffe_Central","Convocation_Interesse_Audience_Jugement","Convocation_Avocat_Audience_Jugement","Date_Audience_Jugement","Convocation_Avocat_Prononce_Jugement","Convocation_Interesse_Prononce_Jugement","Date_Audience_Prononce_Jugement","Dispositif_Decision","Numero_Decision","Date_Envoi_Decision_Notification_Parties","Date_Reception_Comptable_Copie_Decision","UpdatedBy","UpdateTime","RowNumber","RowError") values ('17EF02F643513549911AE918DD7EAAA2','1','???? 1','101','2024-09-01',null,'???? 1','2024-09-02','2024-09-03','201','2024-09-04','301','?????? 1','2024-09-05','401','?????? ??? 1','2024-09-06','???? 1','???? 1','???? 1','???? 1','2024-09-07','2024-09-08','2024-09-09','2024-09-10','?? ???? 1','?? ???? 1','?? ???? 1','?? ???? 1','2024-09-11','2024-09-12','2024-09-13','2024-09-14','2024-09-15','2024-09-16','501','2024-09-17','2024-09-18','2024-09-19','2024-09-20','2024-09-21','2024-09-22','2024-09-23','2024-09-24','2024-09-25','2024-09-26','2024-09-27','2024-09-28','???? 1','601','2024-09-29','admin','03/10/2024 15:59:8','1',' #CRC est obligatoire ');
Insert into SRAIDIHAMZA."DisciplineBudgetaireTemp" ("Id","Numero_Dossier","Appelant","Numero_Jugement_Faisant_Objet_De_Appel","Emis_En_Date_Du",CRC,"Centre_Comptable","Date_Enregistrement_Requete_Cour_Regionale_Des_Comptes","Date_Requisition_Ministere_Public","Numero_Requisition_Ministere_Public","Date_Ordonnance_Designation_Conseiller_Rapporteur","Numero_Ordonnance_Designation_Conseiller_Rapporteur","Conseiller_Rapporteur","Date_Ordonnance_Designation_Conseiller_Rapporteur_Remplacant","Numero_Ordonnance_Designation_Conseiller_Rapporteur_Remplacant","Conseiller_Rapporteur_Remplacant","Date_Envoi_Requete_Parties","Parties_Agent_du_Roi_au_CRC","Parties_Entrepot_Regional","Parties_Travailleur_du_territoire","Parties_President_de_la_Commune","Date_de_reception_par_les_parties_Agent_du_Roi_au_CRC","Date_de_reception_par_les_parties_Entrepot_Regional","Date_de_reception_par_les_parties_Travailleur_du_territoire","Date_de_reception_par_les_parties_President_de_la_Commune","Reponse_au_memoire_d_appel_Agent_du_Roi_au_CRC","Reponse_au_memoire_d_appel_Entrepot_Regional","Reponse_au_memoire_d_appel_Travailleur_du_territoire","Reponse_au_memoire_d_appel_President_de_la_Commune","Date_Demande_Documents_Supplementaires","Date_Convocation_Interesse_Audience","Date_Enquete_Sur_Le_Terrain","Date_Preparation_Rapport","Date_Transmission_Dossier_Ministere_Public","Date_Conclusions_Ministere_Public","Numero_Conclusions_Ministere_Public","Date_Reception_Convocation_Interesse_Consultation","Date_Reception_Convocation_Avocat_Consultation","Date_Consultation_Interesse","Date_Consultation_Avocat","Date_Retour_Dossier_Greffe_Central","Convocation_Interesse_Audience_Jugement","Convocation_Avocat_Audience_Jugement","Date_Audience_Jugement","Convocation_Avocat_Prononce_Jugement","Convocation_Interesse_Prononce_Jugement","Date_Audience_Prononce_Jugement","Dispositif_Decision","Numero_Decision","Date_Envoi_Decision_Notification_Parties","Date_Reception_Comptable_Copie_Decision","UpdatedBy","UpdateTime","RowNumber","RowError") values ('AAEDB80B22A1554AA4315D371E3D36AE','10','???? 10','110','2024-09-01',null,'???? 1','2024-09-02','2024-09-03','210','2024-09-04','310','?????? 10','2024-09-05','410','?????? ??? 10','2024-09-06','???? 10','???? 10','???? 10','???? 10','2024-09-07','2024-09-08','2024-09-09','2024-09-10','?? ???? 10','?? ???? 10','?? ???? 10','?? ???? 10','2024-09-11','2024-09-12','2024-09-13','2024-09-14','2024-09-15','2024-09-16','510','2024-09-17','2024-09-18','2024-09-19','2024-09-20','2024-09-21','2024-09-22','2024-09-23','2024-09-24','2024-09-25','2024-09-26','2024-09-27','2024-09-28','???? 10','610','2024-09-29','admin','03/10/2024 15:59:8','10',' #CRC est obligatoire ');
Insert into SRAIDIHAMZA."DisciplineBudgetaireTemp" ("Id","Numero_Dossier","Appelant","Numero_Jugement_Faisant_Objet_De_Appel","Emis_En_Date_Du",CRC,"Centre_Comptable","Date_Enregistrement_Requete_Cour_Regionale_Des_Comptes","Date_Requisition_Ministere_Public","Numero_Requisition_Ministere_Public","Date_Ordonnance_Designation_Conseiller_Rapporteur","Numero_Ordonnance_Designation_Conseiller_Rapporteur","Conseiller_Rapporteur","Date_Ordonnance_Designation_Conseiller_Rapporteur_Remplacant","Numero_Ordonnance_Designation_Conseiller_Rapporteur_Remplacant","Conseiller_Rapporteur_Remplacant","Date_Envoi_Requete_Parties","Parties_Agent_du_Roi_au_CRC","Parties_Entrepot_Regional","Parties_Travailleur_du_territoire","Parties_President_de_la_Commune","Date_de_reception_par_les_parties_Agent_du_Roi_au_CRC","Date_de_reception_par_les_parties_Entrepot_Regional","Date_de_reception_par_les_parties_Travailleur_du_territoire","Date_de_reception_par_les_parties_President_de_la_Commune","Reponse_au_memoire_d_appel_Agent_du_Roi_au_CRC","Reponse_au_memoire_d_appel_Entrepot_Regional","Reponse_au_memoire_d_appel_Travailleur_du_territoire","Reponse_au_memoire_d_appel_President_de_la_Commune","Date_Demande_Documents_Supplementaires","Date_Convocation_Interesse_Audience","Date_Enquete_Sur_Le_Terrain","Date_Preparation_Rapport","Date_Transmission_Dossier_Ministere_Public","Date_Conclusions_Ministere_Public","Numero_Conclusions_Ministere_Public","Date_Reception_Convocation_Interesse_Consultation","Date_Reception_Convocation_Avocat_Consultation","Date_Consultation_Interesse","Date_Consultation_Avocat","Date_Retour_Dossier_Greffe_Central","Convocation_Interesse_Audience_Jugement","Convocation_Avocat_Audience_Jugement","Date_Audience_Jugement","Convocation_Avocat_Prononce_Jugement","Convocation_Interesse_Prononce_Jugement","Date_Audience_Prononce_Jugement","Dispositif_Decision","Numero_Decision","Date_Envoi_Decision_Notification_Parties","Date_Reception_Comptable_Copie_Decision","UpdatedBy","UpdateTime","RowNumber","RowError") values ('76A1833E5E49EB4AA32FFCF220B8E76A',null,'???? 2','102','2024-09-01',null,'???? 1','2024-09-02','2024-09-03','202','2024-09-04','302','?????? 2','2024-09-05','402','?????? ??? 2','2024-09-06','???? 2','???? 2','???? 2','???? 2','2024-09-07','2024-09-08','2024-09-09','2024-09-10','?? ???? 2','?? ???? 2','?? ???? 2','?? ???? 2','2024-09-11','2024-09-12','2024-09-13','2024-09-14','2024-09-15','2024-09-16','502','2024-09-17','2024-09-18','2024-09-19','2024-09-20','2024-09-21','2024-09-22','2024-09-23','2024-09-24','2024-09-25','2024-09-26','2024-09-27','2024-09-28','???? 2','602','2024-09-29','admin','03/10/2024 15:59:8','2',' #Numero de dossier est obligatoire  #CRC est obligatoire ');
Insert into SRAIDIHAMZA."DisciplineBudgetaireTemp" ("Id","Numero_Dossier","Appelant","Numero_Jugement_Faisant_Objet_De_Appel","Emis_En_Date_Du",CRC,"Centre_Comptable","Date_Enregistrement_Requete_Cour_Regionale_Des_Comptes","Date_Requisition_Ministere_Public","Numero_Requisition_Ministere_Public","Date_Ordonnance_Designation_Conseiller_Rapporteur","Numero_Ordonnance_Designation_Conseiller_Rapporteur","Conseiller_Rapporteur","Date_Ordonnance_Designation_Conseiller_Rapporteur_Remplacant","Numero_Ordonnance_Designation_Conseiller_Rapporteur_Remplacant","Conseiller_Rapporteur_Remplacant","Date_Envoi_Requete_Parties","Parties_Agent_du_Roi_au_CRC","Parties_Entrepot_Regional","Parties_Travailleur_du_territoire","Parties_President_de_la_Commune","Date_de_reception_par_les_parties_Agent_du_Roi_au_CRC","Date_de_reception_par_les_parties_Entrepot_Regional","Date_de_reception_par_les_parties_Travailleur_du_territoire","Date_de_reception_par_les_parties_President_de_la_Commune","Reponse_au_memoire_d_appel_Agent_du_Roi_au_CRC","Reponse_au_memoire_d_appel_Entrepot_Regional","Reponse_au_memoire_d_appel_Travailleur_du_territoire","Reponse_au_memoire_d_appel_President_de_la_Commune","Date_Demande_Documents_Supplementaires","Date_Convocation_Interesse_Audience","Date_Enquete_Sur_Le_Terrain","Date_Preparation_Rapport","Date_Transmission_Dossier_Ministere_Public","Date_Conclusions_Ministere_Public","Numero_Conclusions_Ministere_Public","Date_Reception_Convocation_Interesse_Consultation","Date_Reception_Convocation_Avocat_Consultation","Date_Consultation_Interesse","Date_Consultation_Avocat","Date_Retour_Dossier_Greffe_Central","Convocation_Interesse_Audience_Jugement","Convocation_Avocat_Audience_Jugement","Date_Audience_Jugement","Convocation_Avocat_Prononce_Jugement","Convocation_Interesse_Prononce_Jugement","Date_Audience_Prononce_Jugement","Dispositif_Decision","Numero_Decision","Date_Envoi_Decision_Notification_Parties","Date_Reception_Comptable_Copie_Decision","UpdatedBy","UpdateTime","RowNumber","RowError") values ('39377266190B2C4D9485A69E8AD8357E',null,null,'104','2024-09-01',null,'???? 1','2024-09-02','2024-09-03','204','2024-09-04','304','?????? 4','2024-09-05','404','?????? ??? 4','2024-09-06','???? 4','???? 4','???? 4','???? 4','2024-09-07','2024-09-08','2024-09-09','2024-09-10','?? ???? 4','?? ???? 4','?? ???? 4','?? ???? 4','2024-09-11','2024-09-12','2024-09-13','2024-09-14','2024-09-15','2024-09-16','504','2024-09-17','2024-09-18','2024-09-19','2024-09-20','2024-09-21','2024-09-22','2024-09-23','2024-09-24','2024-09-25','2024-09-26','2024-09-27','2024-09-28','???? 4','604','2024-09-29','admin','03/10/2024 15:59:8','4',' #Numero de dossier est obligatoire  #Appelant est obligatoire  #CRC est obligatoire ');
Insert into SRAIDIHAMZA."DisciplineBudgetaireTemp" ("Id","Numero_Dossier","Appelant","Numero_Jugement_Faisant_Objet_De_Appel","Emis_En_Date_Du",CRC,"Centre_Comptable","Date_Enregistrement_Requete_Cour_Regionale_Des_Comptes","Date_Requisition_Ministere_Public","Numero_Requisition_Ministere_Public","Date_Ordonnance_Designation_Conseiller_Rapporteur","Numero_Ordonnance_Designation_Conseiller_Rapporteur","Conseiller_Rapporteur","Date_Ordonnance_Designation_Conseiller_Rapporteur_Remplacant","Numero_Ordonnance_Designation_Conseiller_Rapporteur_Remplacant","Conseiller_Rapporteur_Remplacant","Date_Envoi_Requete_Parties","Parties_Agent_du_Roi_au_CRC","Parties_Entrepot_Regional","Parties_Travailleur_du_territoire","Parties_President_de_la_Commune","Date_de_reception_par_les_parties_Agent_du_Roi_au_CRC","Date_de_reception_par_les_parties_Entrepot_Regional","Date_de_reception_par_les_parties_Travailleur_du_territoire","Date_de_reception_par_les_parties_President_de_la_Commune","Reponse_au_memoire_d_appel_Agent_du_Roi_au_CRC","Reponse_au_memoire_d_appel_Entrepot_Regional","Reponse_au_memoire_d_appel_Travailleur_du_territoire","Reponse_au_memoire_d_appel_President_de_la_Commune","Date_Demande_Documents_Supplementaires","Date_Convocation_Interesse_Audience","Date_Enquete_Sur_Le_Terrain","Date_Preparation_Rapport","Date_Transmission_Dossier_Ministere_Public","Date_Conclusions_Ministere_Public","Numero_Conclusions_Ministere_Public","Date_Reception_Convocation_Interesse_Consultation","Date_Reception_Convocation_Avocat_Consultation","Date_Consultation_Interesse","Date_Consultation_Avocat","Date_Retour_Dossier_Greffe_Central","Convocation_Interesse_Audience_Jugement","Convocation_Avocat_Audience_Jugement","Date_Audience_Jugement","Convocation_Avocat_Prononce_Jugement","Convocation_Interesse_Prononce_Jugement","Date_Audience_Prononce_Jugement","Dispositif_Decision","Numero_Decision","Date_Envoi_Decision_Notification_Parties","Date_Reception_Comptable_Copie_Decision","UpdatedBy","UpdateTime","RowNumber","RowError") values ('FD414A6B8069064BB1B74B715E112410',null,null,'107','2024-09-01',null,'???? 1','2024-09-02','2024-09-03','207','2024-09-04','307','?????? 7','2024-09-05','407','?????? ??? 7','2024-09-06','???? 7','???? 7','???? 7','???? 7','2024-09-07','2024-09-08','2024-09-09','2024-09-10','?? ???? 7','?? ???? 7','?? ???? 7','?? ???? 7','2024-09-11','2024-09-12','2024-09-13','2024-09-14','2024-09-15','2024-09-16','507','2024-09-17','2024-09-18','2024-09-19','2024-09-20','2024-09-21','2024-09-22','2024-09-23','2024-09-24','2024-09-25','2024-09-26','2024-09-27','2024-09-28','???? 7','607','2024-09-29','admin','03/10/2024 15:59:8','7',' #Numero de dossier est obligatoire  #Appelant est obligatoire  #CRC est obligatoire ');
Insert into SRAIDIHAMZA."DisciplineBudgetaireTemp" ("Id","Numero_Dossier","Appelant","Numero_Jugement_Faisant_Objet_De_Appel","Emis_En_Date_Du",CRC,"Centre_Comptable","Date_Enregistrement_Requete_Cour_Regionale_Des_Comptes","Date_Requisition_Ministere_Public","Numero_Requisition_Ministere_Public","Date_Ordonnance_Designation_Conseiller_Rapporteur","Numero_Ordonnance_Designation_Conseiller_Rapporteur","Conseiller_Rapporteur","Date_Ordonnance_Designation_Conseiller_Rapporteur_Remplacant","Numero_Ordonnance_Designation_Conseiller_Rapporteur_Remplacant","Conseiller_Rapporteur_Remplacant","Date_Envoi_Requete_Parties","Parties_Agent_du_Roi_au_CRC","Parties_Entrepot_Regional","Parties_Travailleur_du_territoire","Parties_President_de_la_Commune","Date_de_reception_par_les_parties_Agent_du_Roi_au_CRC","Date_de_reception_par_les_parties_Entrepot_Regional","Date_de_reception_par_les_parties_Travailleur_du_territoire","Date_de_reception_par_les_parties_President_de_la_Commune","Reponse_au_memoire_d_appel_Agent_du_Roi_au_CRC","Reponse_au_memoire_d_appel_Entrepot_Regional","Reponse_au_memoire_d_appel_Travailleur_du_territoire","Reponse_au_memoire_d_appel_President_de_la_Commune","Date_Demande_Documents_Supplementaires","Date_Convocation_Interesse_Audience","Date_Enquete_Sur_Le_Terrain","Date_Preparation_Rapport","Date_Transmission_Dossier_Ministere_Public","Date_Conclusions_Ministere_Public","Numero_Conclusions_Ministere_Public","Date_Reception_Convocation_Interesse_Consultation","Date_Reception_Convocation_Avocat_Consultation","Date_Consultation_Interesse","Date_Consultation_Avocat","Date_Retour_Dossier_Greffe_Central","Convocation_Interesse_Audience_Jugement","Convocation_Avocat_Audience_Jugement","Date_Audience_Jugement","Convocation_Avocat_Prononce_Jugement","Convocation_Interesse_Prononce_Jugement","Date_Audience_Prononce_Jugement","Dispositif_Decision","Numero_Decision","Date_Envoi_Decision_Notification_Parties","Date_Reception_Comptable_Copie_Decision","UpdatedBy","UpdateTime","RowNumber","RowError") values ('F1C5F27B21EF64448CC6179199DE15D7',null,null,'106','2024-09-01',null,'???? 1','2024-09-02','2024-09-03','206','2024-09-04','306','?????? 6','2024-09-05','406','?????? ??? 6','2024-09-06','???? 6','???? 6','???? 6','???? 6','2024-09-07','2024-09-08','2024-09-09','2024-09-10','?? ???? 6','?? ???? 6','?? ???? 6','?? ???? 6','2024-09-11','2024-09-12','2024-09-13','2024-09-14','2024-09-15','2024-09-16','506','2024-09-17','2024-09-18','2024-09-19','2024-09-20','2024-09-21','2024-09-22','2024-09-23','2024-09-24','2024-09-25','2024-09-26','2024-09-27','2024-09-28','???? 6','606','2024-09-29','admin','03/10/2024 15:59:8','6',' #Numero de dossier est obligatoire  #Appelant est obligatoire  #CRC est obligatoire ');
Insert into SRAIDIHAMZA."DisciplineBudgetaireTemp" ("Id","Numero_Dossier","Appelant","Numero_Jugement_Faisant_Objet_De_Appel","Emis_En_Date_Du",CRC,"Centre_Comptable","Date_Enregistrement_Requete_Cour_Regionale_Des_Comptes","Date_Requisition_Ministere_Public","Numero_Requisition_Ministere_Public","Date_Ordonnance_Designation_Conseiller_Rapporteur","Numero_Ordonnance_Designation_Conseiller_Rapporteur","Conseiller_Rapporteur","Date_Ordonnance_Designation_Conseiller_Rapporteur_Remplacant","Numero_Ordonnance_Designation_Conseiller_Rapporteur_Remplacant","Conseiller_Rapporteur_Remplacant","Date_Envoi_Requete_Parties","Parties_Agent_du_Roi_au_CRC","Parties_Entrepot_Regional","Parties_Travailleur_du_territoire","Parties_President_de_la_Commune","Date_de_reception_par_les_parties_Agent_du_Roi_au_CRC","Date_de_reception_par_les_parties_Entrepot_Regional","Date_de_reception_par_les_parties_Travailleur_du_territoire","Date_de_reception_par_les_parties_President_de_la_Commune","Reponse_au_memoire_d_appel_Agent_du_Roi_au_CRC","Reponse_au_memoire_d_appel_Entrepot_Regional","Reponse_au_memoire_d_appel_Travailleur_du_territoire","Reponse_au_memoire_d_appel_President_de_la_Commune","Date_Demande_Documents_Supplementaires","Date_Convocation_Interesse_Audience","Date_Enquete_Sur_Le_Terrain","Date_Preparation_Rapport","Date_Transmission_Dossier_Ministere_Public","Date_Conclusions_Ministere_Public","Numero_Conclusions_Ministere_Public","Date_Reception_Convocation_Interesse_Consultation","Date_Reception_Convocation_Avocat_Consultation","Date_Consultation_Interesse","Date_Consultation_Avocat","Date_Retour_Dossier_Greffe_Central","Convocation_Interesse_Audience_Jugement","Convocation_Avocat_Audience_Jugement","Date_Audience_Jugement","Convocation_Avocat_Prononce_Jugement","Convocation_Interesse_Prononce_Jugement","Date_Audience_Prononce_Jugement","Dispositif_Decision","Numero_Decision","Date_Envoi_Decision_Notification_Parties","Date_Reception_Comptable_Copie_Decision","UpdatedBy","UpdateTime","RowNumber","RowError") values ('C8B6E68093176D4B9FA3CAEFB36BAD5E',null,null,'105','2024-09-01',null,'???? 1','2024-09-02','2024-09-03','205','2024-09-04','305','?????? 5','2024-09-05','405','?????? ??? 5','2024-09-06','???? 5','???? 5','???? 5','???? 5','2024-09-07','2024-09-08','2024-09-09','2024-09-10','?? ???? 5','?? ???? 5','?? ???? 5','?? ???? 5','2024-09-11','2024-09-12','2024-09-13','2024-09-14','2024-09-15','2024-09-16','505','2024-09-17','2024-09-18','2024-09-19','2024-09-20','2024-09-21','2024-09-22','2024-09-23','2024-09-24','2024-09-25','2024-09-26','2024-09-27','2024-09-28','???? 5','605','2024-09-29','admin','03/10/2024 15:59:8','5',' #Numero de dossier est obligatoire  #Appelant est obligatoire  #CRC est obligatoire ');
Insert into SRAIDIHAMZA."DisciplineBudgetaireTemp" ("Id","Numero_Dossier","Appelant","Numero_Jugement_Faisant_Objet_De_Appel","Emis_En_Date_Du",CRC,"Centre_Comptable","Date_Enregistrement_Requete_Cour_Regionale_Des_Comptes","Date_Requisition_Ministere_Public","Numero_Requisition_Ministere_Public","Date_Ordonnance_Designation_Conseiller_Rapporteur","Numero_Ordonnance_Designation_Conseiller_Rapporteur","Conseiller_Rapporteur","Date_Ordonnance_Designation_Conseiller_Rapporteur_Remplacant","Numero_Ordonnance_Designation_Conseiller_Rapporteur_Remplacant","Conseiller_Rapporteur_Remplacant","Date_Envoi_Requete_Parties","Parties_Agent_du_Roi_au_CRC","Parties_Entrepot_Regional","Parties_Travailleur_du_territoire","Parties_President_de_la_Commune","Date_de_reception_par_les_parties_Agent_du_Roi_au_CRC","Date_de_reception_par_les_parties_Entrepot_Regional","Date_de_reception_par_les_parties_Travailleur_du_territoire","Date_de_reception_par_les_parties_President_de_la_Commune","Reponse_au_memoire_d_appel_Agent_du_Roi_au_CRC","Reponse_au_memoire_d_appel_Entrepot_Regional","Reponse_au_memoire_d_appel_Travailleur_du_territoire","Reponse_au_memoire_d_appel_President_de_la_Commune","Date_Demande_Documents_Supplementaires","Date_Convocation_Interesse_Audience","Date_Enquete_Sur_Le_Terrain","Date_Preparation_Rapport","Date_Transmission_Dossier_Ministere_Public","Date_Conclusions_Ministere_Public","Numero_Conclusions_Ministere_Public","Date_Reception_Convocation_Interesse_Consultation","Date_Reception_Convocation_Avocat_Consultation","Date_Consultation_Interesse","Date_Consultation_Avocat","Date_Retour_Dossier_Greffe_Central","Convocation_Interesse_Audience_Jugement","Convocation_Avocat_Audience_Jugement","Date_Audience_Jugement","Convocation_Avocat_Prononce_Jugement","Convocation_Interesse_Prononce_Jugement","Date_Audience_Prononce_Jugement","Dispositif_Decision","Numero_Decision","Date_Envoi_Decision_Notification_Parties","Date_Reception_Comptable_Copie_Decision","UpdatedBy","UpdateTime","RowNumber","RowError") values ('CEBAA1ADBA959A43A23473F5EC4978EE',null,null,'103','2024-09-01',null,'???? 1','2024-09-02','2024-09-03','203','2024-09-04','303','?????? 3','2024-09-05','403','?????? ??? 3','2024-09-06','???? 3','???? 3','???? 3','???? 3','2024-09-07','2024-09-08','2024-09-09','2024-09-10','?? ???? 3','?? ???? 3','?? ???? 3','?? ???? 3','2024-09-11','2024-09-12','2024-09-13','2024-09-14','2024-09-15','2024-09-16','503','2024-09-17','2024-09-18','2024-09-19','2024-09-20','2024-09-21','2024-09-22','2024-09-23','2024-09-24','2024-09-25','2024-09-26','2024-09-27','2024-09-28','???? 3','603','2024-09-29','admin','03/10/2024 15:59:8','3',' #Numero de dossier est obligatoire  #Appelant est obligatoire  #CRC est obligatoire ');
REM INSERTING into SRAIDIHAMZA."__EFMigrationsHistory"
SET DEFINE OFF;
Insert into SRAIDIHAMZA."__EFMigrationsHistory" ("MigrationId","ProductVersion") values ('20241001124120_initial-migration','8.0.8');
Insert into SRAIDIHAMZA."__EFMigrationsHistory" ("MigrationId","ProductVersion") values ('20241003103601_update-database','8.0.8');
Insert into SRAIDIHAMZA."__EFMigrationsHistory" ("MigrationId","ProductVersion") values ('20241002115016_Generate-Migration','8.0.8');
REM INSERTING into SRAIDIHAMZA."Permissions"
SET DEFINE OFF;
Insert into SRAIDIHAMZA."Permissions" ("Id","Groupe","Code","Label","Description","IsActive") values ('00B9B9EF1392484CA473DD4CBDED4D38','Permissions','GetById','PermissionsGetById',null,'1');
Insert into SRAIDIHAMZA."Permissions" ("Id","Groupe","Code","Label","Description","IsActive") values ('2884EA8D73E545E282664FEDAAE85920','Permissions','GetAll','PermissionsGetAll',null,'1');
Insert into SRAIDIHAMZA."Permissions" ("Id","Groupe","Code","Label","Description","IsActive") values ('A97539BF02F84FFF947A302D4EF5F7B7','Permissions','Update','PermissionsUpdate',null,'1');
Insert into SRAIDIHAMZA."Permissions" ("Id","Groupe","Code","Label","Description","IsActive") values ('0F30C4AEBB474BE0A73C7F936F2A5666','Permissions','Delete','PermissionsDelete',null,'1');
Insert into SRAIDIHAMZA."Permissions" ("Id","Groupe","Code","Label","Description","IsActive") values ('A339890BDD804B4E83FAB43CCD12E40E','Permissions','Create','PermissionsCreate',null,'1');
Insert into SRAIDIHAMZA."Permissions" ("Id","Groupe","Code","Label","Description","IsActive") values ('7B449C60B06244C9AF28FB549D8978E6','Permissions','Exporter','PermissionsExporter',null,'1');
Insert into SRAIDIHAMZA."Permissions" ("Id","Groupe","Code","Label","Description","IsActive") values ('7E9548890FE74687A60C22A75F1F300C','Roles','GetById','RolesGetById',null,'1');
Insert into SRAIDIHAMZA."Permissions" ("Id","Groupe","Code","Label","Description","IsActive") values ('276FB8DF5FD048B6B9BD144EF4895624','Roles','GetAll','RolesGetAll',null,'1');
Insert into SRAIDIHAMZA."Permissions" ("Id","Groupe","Code","Label","Description","IsActive") values ('55C1FD88BD7D4156A92EC78D3A810B30','Roles','Update','RolesUpdate',null,'1');
Insert into SRAIDIHAMZA."Permissions" ("Id","Groupe","Code","Label","Description","IsActive") values ('4194A55DF25E44F09AE3ED3055269E31','Roles','Delete','RolesDelete',null,'1');
Insert into SRAIDIHAMZA."Permissions" ("Id","Groupe","Code","Label","Description","IsActive") values ('C19A9515F7E34E698A090C4FC60F8646','Roles','Create','RolesCreate',null,'1');
Insert into SRAIDIHAMZA."Permissions" ("Id","Groupe","Code","Label","Description","IsActive") values ('FAB2F5AE2E704DD19DC8E83D20D24849','Roles','AddPermissions','RolesAddPermissions',null,'1');
Insert into SRAIDIHAMZA."Permissions" ("Id","Groupe","Code","Label","Description","IsActive") values ('171EBD2119B84861AEABD8B5117D370B','Roles','GetPermissions','RolesGetPermissions',null,'1');
Insert into SRAIDIHAMZA."Permissions" ("Id","Groupe","Code","Label","Description","IsActive") values ('18237B55DEF2467C8894B6F058BB6650','Roles','Exporter','RolesExporter',null,'1');
Insert into SRAIDIHAMZA."Permissions" ("Id","Groupe","Code","Label","Description","IsActive") values ('608D6CC1925741EA96D50350F5465E24','PersonnePhysique','Create','PersonnePhysiqueCreate',null,'1');
Insert into SRAIDIHAMZA."Permissions" ("Id","Groupe","Code","Label","Description","IsActive") values ('F60278C112114A7CB586B814DA88FBC8','PersonnePhysique','Delete','PersonnePhysiqueDelete',null,'1');
Insert into SRAIDIHAMZA."Permissions" ("Id","Groupe","Code","Label","Description","IsActive") values ('EF91E0905CC64B8AA59A7C9F1D7BAA29','PersonnePhysique','GetById','PersonnePhysiqueGetById',null,'1');
Insert into SRAIDIHAMZA."Permissions" ("Id","Groupe","Code","Label","Description","IsActive") values ('55D536C5031E4F6C9DD0D19C1727CFB7','PersonnePhysique','GetAll','PersonnePhysiqueGetAll',null,'1');
Insert into SRAIDIHAMZA."Permissions" ("Id","Groupe","Code","Label","Description","IsActive") values ('16679E15B2E344ED8BAF8CC438656439','PersonnePhysique','Update','PersonnePhysiqueUpdate',null,'1');
Insert into SRAIDIHAMZA."Permissions" ("Id","Groupe","Code","Label","Description","IsActive") values ('FD020FAEDB2D481CB6A76352754F3B91','PersonnePhysique','Exporter','PersonnePhysiqueExporter',null,'1');
Insert into SRAIDIHAMZA."Permissions" ("Id","Groupe","Code","Label","Description","IsActive") values ('8F543826768A4592993CA32819381767','Utilisateurs','AddPermissions','UtilisateursAddPermissions',null,'1');
Insert into SRAIDIHAMZA."Permissions" ("Id","Groupe","Code","Label","Description","IsActive") values ('1E28392542A040C3ADF94E85023814C0','Utilisateurs','AddRoles','UtilisateursAddRoles',null,'1');
Insert into SRAIDIHAMZA."Permissions" ("Id","Groupe","Code","Label","Description","IsActive") values ('2C6EC3E407B64483AD3D9321E7EC0DCB','Utilisateurs','GetPermissions','UtilisateursGetPermissions',null,'1');
Insert into SRAIDIHAMZA."Permissions" ("Id","Groupe","Code","Label","Description","IsActive") values ('65DBF615FB674C34A6131B1FE328C1F8','Utilisateurs','GetRoles','UtilisateursGetRoles',null,'1');
Insert into SRAIDIHAMZA."Permissions" ("Id","Groupe","Code","Label","Description","IsActive") values ('C36AEE48B5714AF19A821E537856A134','Utilisateurs','Create','UtilisateursCreate',null,'1');
Insert into SRAIDIHAMZA."Permissions" ("Id","Groupe","Code","Label","Description","IsActive") values ('7B1B99C53FE04AE0A1DEA32B1989BEC9','Utilisateurs','Delete','UtilisateursDelete',null,'1');
Insert into SRAIDIHAMZA."Permissions" ("Id","Groupe","Code","Label","Description","IsActive") values ('5B53110E02534634AB20D11A23414873','Utilisateurs','GetById','UtilisateursGetById',null,'1');
Insert into SRAIDIHAMZA."Permissions" ("Id","Groupe","Code","Label","Description","IsActive") values ('E23629EE0D8E4DBFB01D825FD72C1AD5','Utilisateurs','GetAll','UtilisateursGetAll',null,'1');
Insert into SRAIDIHAMZA."Permissions" ("Id","Groupe","Code","Label","Description","IsActive") values ('7093A7840CFE46229B281F42A0AA7B2D','Utilisateurs','Update','UtilisateursUpdate',null,'1');
Insert into SRAIDIHAMZA."Permissions" ("Id","Groupe","Code","Label","Description","IsActive") values ('3B1A38843B18404DB5333DFB0174504E','Utilisateurs','ChangePassword','UtilisateursChangePassword',null,'1');
Insert into SRAIDIHAMZA."Permissions" ("Id","Groupe","Code","Label","Description","IsActive") values ('9A1457EC86EB46558F7C6C9D5C52C584','Utilisateurs','ShowProfile','UtilisateursShowProfile',null,'1');
Insert into SRAIDIHAMZA."Permissions" ("Id","Groupe","Code","Label","Description","IsActive") values ('A093EC486F88499AA30E956715C5AC5C','Utilisateurs','Exporter','UtilisateursExporter',null,'1');
REM INSERTING into SRAIDIHAMZA."RolePermissions"
SET DEFINE OFF;
REM INSERTING into SRAIDIHAMZA."Roles"
SET DEFINE OFF;
Insert into SRAIDIHAMZA."Roles" ("Id","Code","Label","Description","IsActive") values ('811D269F0F5D4EB7ADBCE387AD47034A','Admin','Admin',null,'1');
Insert into SRAIDIHAMZA."Roles" ("Id","Code","Label","Description","IsActive") values ('4EF92D5086294AAD955A64372C7E5B2C','Utilisateur','Utilisateur',null,'1');
REM INSERTING into SRAIDIHAMZA."TypeGrades"
SET DEFINE OFF;
Insert into SRAIDIHAMZA."TypeGrades" ("Id","Code","Label","Description","IsActive") values ('EA002365ADD3464B9C515CC3F2ED7118',null,'Grade 1',null,'1');
Insert into SRAIDIHAMZA."TypeGrades" ("Id","Code","Label","Description","IsActive") values ('DB6D24EE701F42BE8A4DED91FF639EF3',null,'Grade 2',null,'1');
REM INSERTING into SRAIDIHAMZA."TypeUtilisateurs"
SET DEFINE OFF;
Insert into SRAIDIHAMZA."TypeUtilisateurs" ("Id","Code","Label","Description","IsActive") values ('BE424828AD984A5FA48D184B721753D2',null,'Utilisateur 1',null,'1');
Insert into SRAIDIHAMZA."TypeUtilisateurs" ("Id","Code","Label","Description","IsActive") values ('35646866411E432F814A6AA2DD4FAC38',null,'Utilisateur 2',null,'1');
REM INSERTING into SRAIDIHAMZA."UtilisateurLoggings"
SET DEFINE OFF;
REM INSERTING into SRAIDIHAMZA."UtilisateurPermissions"
SET DEFINE OFF;
REM INSERTING into SRAIDIHAMZA."UtilisateurRoles"
SET DEFINE OFF;
REM INSERTING into SRAIDIHAMZA."Utilisateurs"
SET DEFINE OFF;
Insert into SRAIDIHAMZA."Utilisateurs" ("Id","Nom","Prenom","NomArabe","PrenomArabe","Email","Login","Password","TypeUtilisateurId","TypeGradeId","UpdatedBy","UpdateTime","IsActive") values ('6ABB5AF01B1C4AA2AC3899ACEF64F0D3','system','administrateur',null,null,'admin@courdescomptes.ma','admin','17-D9-B7-C0-6B-78-58-19-82-0C-F0-F4-98-F2-0C-DF','BE424828AD984A5FA48D184B721753D2','EA002365ADD3464B9C515CC3F2ED7118','admin',null,'1');
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
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index PK___EFMigrationsHistory
--------------------------------------------------------

  CREATE UNIQUE INDEX "SRAIDIHAMZA"."PK___EFMigrationsHistory" ON "SRAIDIHAMZA"."__EFMigrationsHistory" ("MigrationId") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index PK_RolePermissions
--------------------------------------------------------

  CREATE UNIQUE INDEX "SRAIDIHAMZA"."PK_RolePermissions" ON "SRAIDIHAMZA"."RolePermissions" ("Id") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index PK_Roles
--------------------------------------------------------

  CREATE UNIQUE INDEX "SRAIDIHAMZA"."PK_Roles" ON "SRAIDIHAMZA"."Roles" ("Id") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
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
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index PK_DisciplineBudgetaires
--------------------------------------------------------

  CREATE UNIQUE INDEX "SRAIDIHAMZA"."PK_DisciplineBudgetaires" ON "SRAIDIHAMZA"."DisciplineBudgetaires" ("Id") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index PK_Permissions
--------------------------------------------------------

  CREATE UNIQUE INDEX "SRAIDIHAMZA"."PK_Permissions" ON "SRAIDIHAMZA"."Permissions" ("Id") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index PK_TypeUtilisateurs
--------------------------------------------------------

  CREATE UNIQUE INDEX "SRAIDIHAMZA"."PK_TypeUtilisateurs" ON "SRAIDIHAMZA"."TypeUtilisateurs" ("Id") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index PK_UtilisateurLoggings
--------------------------------------------------------

  CREATE UNIQUE INDEX "SRAIDIHAMZA"."PK_UtilisateurLoggings" ON "SRAIDIHAMZA"."UtilisateurLoggings" ("Id") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
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
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index PK_CRCs
--------------------------------------------------------

  CREATE UNIQUE INDEX "SRAIDIHAMZA"."PK_CRCs" ON "SRAIDIHAMZA"."CRCs" ("Id") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
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
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index PK_UtilisateurRoles
--------------------------------------------------------

  CREATE UNIQUE INDEX "SRAIDIHAMZA"."PK_UtilisateurRoles" ON "SRAIDIHAMZA"."UtilisateurRoles" ("Id") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
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
--  DDL for Index IX_Utilisateurs_TypeGradeId
--------------------------------------------------------

  CREATE INDEX "SRAIDIHAMZA"."IX_Utilisateurs_TypeGradeId" ON "SRAIDIHAMZA"."Utilisateurs" ("TypeGradeId") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
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
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
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
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
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
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table DisciplineBudgetaireTemp
--------------------------------------------------------

  ALTER TABLE "SRAIDIHAMZA"."DisciplineBudgetaireTemp" MODIFY ("Id" NOT NULL ENABLE);
  ALTER TABLE "SRAIDIHAMZA"."DisciplineBudgetaireTemp" MODIFY ("RowNumber" NOT NULL ENABLE);
  ALTER TABLE "SRAIDIHAMZA"."DisciplineBudgetaireTemp" ADD CONSTRAINT "PK_DisciplineBudgetaireTemp" PRIMARY KEY ("Id")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
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
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table UtilisateurRoles
--------------------------------------------------------

  ALTER TABLE "SRAIDIHAMZA"."UtilisateurRoles" MODIFY ("Id" NOT NULL ENABLE);
  ALTER TABLE "SRAIDIHAMZA"."UtilisateurRoles" MODIFY ("UtilisateurId" NOT NULL ENABLE);
  ALTER TABLE "SRAIDIHAMZA"."UtilisateurRoles" MODIFY ("RoleId" NOT NULL ENABLE);
  ALTER TABLE "SRAIDIHAMZA"."UtilisateurRoles" ADD CONSTRAINT "PK_UtilisateurRoles" PRIMARY KEY ("Id")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table __EFMigrationsHistory
--------------------------------------------------------

  ALTER TABLE "SRAIDIHAMZA"."__EFMigrationsHistory" MODIFY ("MigrationId" NOT NULL ENABLE);
  ALTER TABLE "SRAIDIHAMZA"."__EFMigrationsHistory" MODIFY ("ProductVersion" NOT NULL ENABLE);
  ALTER TABLE "SRAIDIHAMZA"."__EFMigrationsHistory" ADD CONSTRAINT "PK___EFMigrationsHistory" PRIMARY KEY ("MigrationId")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
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
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
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
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
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
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table UtilisateurPermissions
--------------------------------------------------------

  ALTER TABLE "SRAIDIHAMZA"."UtilisateurPermissions" MODIFY ("Id" NOT NULL ENABLE);
  ALTER TABLE "SRAIDIHAMZA"."UtilisateurPermissions" MODIFY ("UtilisateurId" NOT NULL ENABLE);
  ALTER TABLE "SRAIDIHAMZA"."UtilisateurPermissions" MODIFY ("PermissionId" NOT NULL ENABLE);
  ALTER TABLE "SRAIDIHAMZA"."UtilisateurPermissions" ADD CONSTRAINT "PK_UtilisateurPermissions" PRIMARY KEY ("Id")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table TypeGrades
--------------------------------------------------------

  ALTER TABLE "SRAIDIHAMZA"."TypeGrades" MODIFY ("Id" NOT NULL ENABLE);
  ALTER TABLE "SRAIDIHAMZA"."TypeGrades" MODIFY ("Label" NOT NULL ENABLE);
  ALTER TABLE "SRAIDIHAMZA"."TypeGrades" MODIFY ("IsActive" NOT NULL ENABLE);
  ALTER TABLE "SRAIDIHAMZA"."TypeGrades" ADD CONSTRAINT "PK_TypeGrades" PRIMARY KEY ("Id")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
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
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
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
