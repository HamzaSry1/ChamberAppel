--------------------------------------------------------
--  Fichier créé - dimanche-octobre-13-2024   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table ChamberAppeles
--------------------------------------------------------

  CREATE TABLE "SRAIDIHAMZA"."ChamberAppeles" 
   (	"Id" RAW(16), 
	"Numero_Dossier" NVARCHAR2(2000), 
	"Appelant" NVARCHAR2(2000), 
	"Numero_Jugement_Faisant_Objet_De_Appel" NVARCHAR2(2000), 
	"Emis_En_Date_Du" TIMESTAMP (7), 
	"IdCRC" RAW(16), 
	"Centre_Comptable" NVARCHAR2(2000), 
	"Exercice_fiscal" TIMESTAMP (7), 
	"Date_Enregistrement_Requete_Cour_Regionale_Des_Comptes" TIMESTAMP (7), 
	"Conseiller_Rapporteur" NVARCHAR2(2000), 
	"Date_Ordonnance_Designation_Conseiller_Rapporteur" TIMESTAMP (7), 
	"Conseiller_Rapporteur_Remplacant" NVARCHAR2(2000), 
	"Date_Ordonnance_Designation_Conseiller_Rapporteur_Remplacant" TIMESTAMP (7), 
	"Date_Demande_Documents_Supplementaires" TIMESTAMP (7), 
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
	"Date_Preparation_Rapport" TIMESTAMP (7), 
	"Designation_du_Conseiller_Reviseur" NVARCHAR2(2000), 
	"Date_Designation_du_Conseiller_Reviseur" TIMESTAMP (7), 
	"Designation_du_Conseiller_Reviseur_Remplacant" NVARCHAR2(2000), 
	"Date_Designation_du_Conseiller_Reviseur_Remplacant" TIMESTAMP (7), 
	"Date_de_preparation_de_l_avis_de_l_examinateur" TIMESTAMP (7), 
	"Date_Transmission_Dossier_Ministere_Public" TIMESTAMP (7), 
	"Date_Retour_Dossier_Ministere_Public" TIMESTAMP (7), 
	"Date_Conclusions_Ministere_Public" TIMESTAMP (7), 
	"Numero_Conclusions_Ministere_Public" NVARCHAR2(2000), 
	"Date_de_la_session" TIMESTAMP (7), 
	"Dispositif_Decision" NVARCHAR2(2000), 
	"Numero_Decision" NVARCHAR2(2000), 
	"Date_d_envoi_de_la_decision_pour_notifier_les_parties" TIMESTAMP (7), 
	"Date_de_reception_par_le_comptable_d_une_copie_de_la_decision" TIMESTAMP (7), 
	"UpdatedBy" NVARCHAR2(80), 
	"UpdateTime" TIMESTAMP (7), 
	"IsActive" NUMBER(10,0)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table ChamberAppeleTemp
--------------------------------------------------------

  CREATE TABLE "SRAIDIHAMZA"."ChamberAppeleTemp" 
   (	"Id" RAW(16), 
	"Numero_Dossier" NVARCHAR2(2000), 
	"Appelant" NVARCHAR2(2000), 
	"Numero_Jugement_Faisant_Objet_De_Appel" NVARCHAR2(2000), 
	"Emis_En_Date_Du" NVARCHAR2(2000), 
	"CRC" NVARCHAR2(2000), 
	"Centre_Comptable" NVARCHAR2(2000), 
	"Exercice_fiscal" NVARCHAR2(2000), 
	"Date_Enregistrement_Requete_Cour_Regionale_Des_Comptes" NVARCHAR2(2000), 
	"Conseiller_Rapporteur" NVARCHAR2(2000), 
	"Date_Ordonnance_Designation_Conseiller_Rapporteur" NVARCHAR2(2000), 
	"Conseiller_Rapporteur_Remplacant" NVARCHAR2(2000), 
	"Date_Ordonnance_Designation_Conseiller_Rapporteur_Remplacant" NVARCHAR2(2000), 
	"Date_Demande_Documents_Supplementaires" NVARCHAR2(2000), 
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
	"Date_Preparation_Rapport" TIMESTAMP (7), 
	"Designation_du_Conseiller_Reviseur" NVARCHAR2(2000), 
	"Date_Designation_du_Conseiller_Reviseur" NVARCHAR2(2000), 
	"Designation_du_Conseiller_Reviseur_Remplacant" NVARCHAR2(2000), 
	"Date_Designation_du_Conseiller_Reviseur_Remplacant" NVARCHAR2(2000), 
	"Date_de_preparation_de_l_avis_de_l_examinateur" NVARCHAR2(2000), 
	"Date_Transmission_Dossier_Ministere_Public" NVARCHAR2(2000), 
	"Date_Retour_Dossier_Ministere_Public" NVARCHAR2(2000), 
	"Date_Conclusions_Ministere_Public" NVARCHAR2(2000), 
	"Numero_Conclusions_Ministere_Public" NVARCHAR2(2000), 
	"Date_de_la_session" NVARCHAR2(2000), 
	"Dispositif_Decision" NVARCHAR2(2000), 
	"Numero_Decision" NVARCHAR2(2000), 
	"Date_d_envoi_de_la_decision_pour_notifier_les_parties" NVARCHAR2(2000), 
	"Date_de_reception_par_le_comptable_d_une_copie_de_la_decision" NVARCHAR2(2000), 
	"UpdatedBy" NVARCHAR2(2000), 
	"UpdateTime" NVARCHAR2(2000), 
	"RowNumber" NUMBER(10,0), 
	"RowError" NVARCHAR2(2000)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "USERS" ;
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
REM INSERTING into SRAIDIHAMZA."ChamberAppeles"
SET DEFINE OFF;
REM INSERTING into SRAIDIHAMZA."ChamberAppeleTemp"
SET DEFINE OFF;
REM INSERTING into SRAIDIHAMZA."CRCs"
SET DEFINE OFF;
Insert into SRAIDIHAMZA."CRCs" ("Id","Code","Label","Description","IsActive") values ('99B13F117F2B46138FA943AB102EA2B9',null,'Cour régionale des comptes de Rabat-Salé-Kénitra',null,'1');
Insert into SRAIDIHAMZA."CRCs" ("Id","Code","Label","Description","IsActive") values ('9D0640AC19594649B2EDFA7958D5196A',null,'Cour régionale des comptes de Casablanca-Settat',null,'1');
Insert into SRAIDIHAMZA."CRCs" ("Id","Code","Label","Description","IsActive") values ('D8B2C57965044144841F3B86D59E2416',null,'Cour régionale des comptes de Fès-Meknès',null,'1');
Insert into SRAIDIHAMZA."CRCs" ("Id","Code","Label","Description","IsActive") values ('253A26B1C5814058BAB96B316050F7A6',null,'Cour régionale des comptes de Marrakech-Safi',null,'1');
Insert into SRAIDIHAMZA."CRCs" ("Id","Code","Label","Description","IsActive") values ('AEC8DCDA7EB345569368FC18E690AB58',null,'Cour régionale des comptes de Tanger-Tétouan-Al Hoceima',null,'1');
Insert into SRAIDIHAMZA."CRCs" ("Id","Code","Label","Description","IsActive") values ('F8DEE64433BD41FC9D8D6BE1B32FA9AE',null,'Cour régionale des comptes de Souss-Massa',null,'1');
Insert into SRAIDIHAMZA."CRCs" ("Id","Code","Label","Description","IsActive") values ('491102AA2AD64BC2ADE087F5DB39E419',null,'Cour régionale des comptes de l Oriental',null,'1');
Insert into SRAIDIHAMZA."CRCs" ("Id","Code","Label","Description","IsActive") values ('C418EC0433FD48348874D779CB464D80',null,'Cour régionale des comptes de Drâa-Tafilalet',null,'1');
Insert into SRAIDIHAMZA."CRCs" ("Id","Code","Label","Description","IsActive") values ('86DE064380BB4FC3AEA71E8A012C167C',null,'Cour régionale des comptes de Beni Mellal-Khénifra',null,'1');
Insert into SRAIDIHAMZA."CRCs" ("Id","Code","Label","Description","IsActive") values ('E88782A097D44820967A46D871F85A8A',null,'Cour régionale des comptes de Guelmim-Oued Noun',null,'1');
Insert into SRAIDIHAMZA."CRCs" ("Id","Code","Label","Description","IsActive") values ('3E4C37B695CC486C9E6F4030270DB19D',null,'Cour régionale des comptes de Laâyoune-Sakia El Hamra',null,'1');
Insert into SRAIDIHAMZA."CRCs" ("Id","Code","Label","Description","IsActive") values ('9D77092C6B9C49E5A85B2956280328F9',null,'Cour régionale des comptes de Dakhla-Oued Ed-Dahab',null,'1');
REM INSERTING into SRAIDIHAMZA."DisciplineBudgetaires"
SET DEFINE OFF;
REM INSERTING into SRAIDIHAMZA."DisciplineBudgetaireTemp"
SET DEFINE OFF;
REM INSERTING into SRAIDIHAMZA."__EFMigrationsHistory"
SET DEFINE OFF;
Insert into SRAIDIHAMZA."__EFMigrationsHistory" ("MigrationId","ProductVersion") values ('20241009224315_generate-database','8.0.8');
REM INSERTING into SRAIDIHAMZA."Permissions"
SET DEFINE OFF;
Insert into SRAIDIHAMZA."Permissions" ("Id","Groupe","Code","Label","Description","IsActive") values ('06B7A62641074BF69F7A24B1D48C04A0','Permissions','GetById','PermissionsGetById',null,'1');
Insert into SRAIDIHAMZA."Permissions" ("Id","Groupe","Code","Label","Description","IsActive") values ('BC45C681BFA847BCA2A1F41CA922BA40','Permissions','GetAll','PermissionsGetAll',null,'1');
Insert into SRAIDIHAMZA."Permissions" ("Id","Groupe","Code","Label","Description","IsActive") values ('AFA8E788C7674505A9DBC92D3F0DEAB6','Permissions','Update','PermissionsUpdate',null,'1');
Insert into SRAIDIHAMZA."Permissions" ("Id","Groupe","Code","Label","Description","IsActive") values ('61B8F90F1ED7456D851CC332409E0F68','Permissions','Delete','PermissionsDelete',null,'1');
Insert into SRAIDIHAMZA."Permissions" ("Id","Groupe","Code","Label","Description","IsActive") values ('1DA89459772D4BF4A2A577B237FFE98C','Permissions','Create','PermissionsCreate',null,'1');
Insert into SRAIDIHAMZA."Permissions" ("Id","Groupe","Code","Label","Description","IsActive") values ('FFD92AC0241C4139B567B4473D086B96','Permissions','Exporter','PermissionsExporter',null,'1');
Insert into SRAIDIHAMZA."Permissions" ("Id","Groupe","Code","Label","Description","IsActive") values ('40DB74779F04465BB7E128D957BB75F7','Roles','GetById','RolesGetById',null,'1');
Insert into SRAIDIHAMZA."Permissions" ("Id","Groupe","Code","Label","Description","IsActive") values ('F7FDFE092CC64EE592FCE4DA7BF3C712','Roles','GetAll','RolesGetAll',null,'1');
Insert into SRAIDIHAMZA."Permissions" ("Id","Groupe","Code","Label","Description","IsActive") values ('A512D3DF10F54696BDACECAC94095B8F','Roles','Update','RolesUpdate',null,'1');
Insert into SRAIDIHAMZA."Permissions" ("Id","Groupe","Code","Label","Description","IsActive") values ('7571332523024130BD7D20CD9C9D1F74','Roles','Delete','RolesDelete',null,'1');
Insert into SRAIDIHAMZA."Permissions" ("Id","Groupe","Code","Label","Description","IsActive") values ('D2673CA71294418DB342D53FEBF91407','Roles','Create','RolesCreate',null,'1');
Insert into SRAIDIHAMZA."Permissions" ("Id","Groupe","Code","Label","Description","IsActive") values ('EDB71844E45746FF8A7E6DF9CC1F4597','Roles','AddPermissions','RolesAddPermissions',null,'1');
Insert into SRAIDIHAMZA."Permissions" ("Id","Groupe","Code","Label","Description","IsActive") values ('05690D307E1745559677FF408B99D0BD','Roles','GetPermissions','RolesGetPermissions',null,'1');
Insert into SRAIDIHAMZA."Permissions" ("Id","Groupe","Code","Label","Description","IsActive") values ('E882F40FD34342BD87CB2C204E88B6C1','Roles','Exporter','RolesExporter',null,'1');
Insert into SRAIDIHAMZA."Permissions" ("Id","Groupe","Code","Label","Description","IsActive") values ('22D69F64CEBD4349B305EA9B9CA25618','PersonnePhysique','Create','PersonnePhysiqueCreate',null,'1');
Insert into SRAIDIHAMZA."Permissions" ("Id","Groupe","Code","Label","Description","IsActive") values ('CFD42DA974494ED08441BF0941C594DC','PersonnePhysique','Delete','PersonnePhysiqueDelete',null,'1');
Insert into SRAIDIHAMZA."Permissions" ("Id","Groupe","Code","Label","Description","IsActive") values ('F02B559FE9614744AD8434DAC05FBD1F','PersonnePhysique','GetById','PersonnePhysiqueGetById',null,'1');
Insert into SRAIDIHAMZA."Permissions" ("Id","Groupe","Code","Label","Description","IsActive") values ('5784C2707E844173B027E5461FE78221','PersonnePhysique','GetAll','PersonnePhysiqueGetAll',null,'1');
Insert into SRAIDIHAMZA."Permissions" ("Id","Groupe","Code","Label","Description","IsActive") values ('E4601A1373E54DB4A56E2FF06A8B9BBE','PersonnePhysique','Update','PersonnePhysiqueUpdate',null,'1');
Insert into SRAIDIHAMZA."Permissions" ("Id","Groupe","Code","Label","Description","IsActive") values ('C908B5BDE2034BF7A96ED83F69E866EA','PersonnePhysique','Exporter','PersonnePhysiqueExporter',null,'1');
Insert into SRAIDIHAMZA."Permissions" ("Id","Groupe","Code","Label","Description","IsActive") values ('BC9963EE266A4D6D967906F4D43DF034','Utilisateurs','AddPermissions','UtilisateursAddPermissions',null,'1');
Insert into SRAIDIHAMZA."Permissions" ("Id","Groupe","Code","Label","Description","IsActive") values ('1862200EE9C443FD895F009F0EDE283C','Utilisateurs','AddRoles','UtilisateursAddRoles',null,'1');
Insert into SRAIDIHAMZA."Permissions" ("Id","Groupe","Code","Label","Description","IsActive") values ('D8D83B161AA547E8895F38BD15D28B20','Utilisateurs','GetPermissions','UtilisateursGetPermissions',null,'1');
Insert into SRAIDIHAMZA."Permissions" ("Id","Groupe","Code","Label","Description","IsActive") values ('984C9A561BBF4B3A85E0078C2E5706D0','Utilisateurs','GetRoles','UtilisateursGetRoles',null,'1');
Insert into SRAIDIHAMZA."Permissions" ("Id","Groupe","Code","Label","Description","IsActive") values ('59A2A30EB1D8488EA161553B0BB41C3F','Utilisateurs','Create','UtilisateursCreate',null,'1');
Insert into SRAIDIHAMZA."Permissions" ("Id","Groupe","Code","Label","Description","IsActive") values ('988BD1E34A984D729B445E1CAF1ABFC4','Utilisateurs','Delete','UtilisateursDelete',null,'1');
Insert into SRAIDIHAMZA."Permissions" ("Id","Groupe","Code","Label","Description","IsActive") values ('DB89DEC64787418ABD5B37E864BA7EF8','Utilisateurs','GetById','UtilisateursGetById',null,'1');
Insert into SRAIDIHAMZA."Permissions" ("Id","Groupe","Code","Label","Description","IsActive") values ('D13859EF71894096B3F6F874687D70E4','Utilisateurs','GetAll','UtilisateursGetAll',null,'1');
Insert into SRAIDIHAMZA."Permissions" ("Id","Groupe","Code","Label","Description","IsActive") values ('29A7A8AF98C44885985E815F1FB5377E','Utilisateurs','Update','UtilisateursUpdate',null,'1');
Insert into SRAIDIHAMZA."Permissions" ("Id","Groupe","Code","Label","Description","IsActive") values ('CEA8DFD580EA4023BAC8CEE8D4D0B76B','Utilisateurs','ChangePassword','UtilisateursChangePassword',null,'1');
Insert into SRAIDIHAMZA."Permissions" ("Id","Groupe","Code","Label","Description","IsActive") values ('73134E7F00D642B2ABEF840D3D51BEFD','Utilisateurs','ShowProfile','UtilisateursShowProfile',null,'1');
Insert into SRAIDIHAMZA."Permissions" ("Id","Groupe","Code","Label","Description","IsActive") values ('68CFE58FB34C4DE480A862628E0D9916','Utilisateurs','Exporter','UtilisateursExporter',null,'1');
REM INSERTING into SRAIDIHAMZA."RolePermissions"
SET DEFINE OFF;
REM INSERTING into SRAIDIHAMZA."Roles"
SET DEFINE OFF;
Insert into SRAIDIHAMZA."Roles" ("Id","Code","Label","Description","IsActive") values ('68FF392FA21D499B876C18F05F0B7223','Admin','Admin',null,'1');
Insert into SRAIDIHAMZA."Roles" ("Id","Code","Label","Description","IsActive") values ('D47FB161FBBF47C08939698FD5738479','Utilisateur','Utilisateur',null,'1');
REM INSERTING into SRAIDIHAMZA."TypeGrades"
SET DEFINE OFF;
Insert into SRAIDIHAMZA."TypeGrades" ("Id","Code","Label","Description","IsActive") values ('94DC862BB3BC48D39518DBEC9C6B4878',null,'Grade 1',null,'1');
Insert into SRAIDIHAMZA."TypeGrades" ("Id","Code","Label","Description","IsActive") values ('1BBA83320EC04B2FA35BD211378230B2',null,'Grade 2',null,'1');
REM INSERTING into SRAIDIHAMZA."TypeUtilisateurs"
SET DEFINE OFF;
Insert into SRAIDIHAMZA."TypeUtilisateurs" ("Id","Code","Label","Description","IsActive") values ('4C23AF6722DE4E99850906C9A34466D7',null,'Utilisateur 1',null,'1');
Insert into SRAIDIHAMZA."TypeUtilisateurs" ("Id","Code","Label","Description","IsActive") values ('8C592D1898CA404C86A5089222A235F1',null,'Utilisateur 2',null,'1');
REM INSERTING into SRAIDIHAMZA."UtilisateurLoggings"
SET DEFINE OFF;
REM INSERTING into SRAIDIHAMZA."UtilisateurPermissions"
SET DEFINE OFF;
REM INSERTING into SRAIDIHAMZA."UtilisateurRoles"
SET DEFINE OFF;
REM INSERTING into SRAIDIHAMZA."Utilisateurs"
SET DEFINE OFF;
Insert into SRAIDIHAMZA."Utilisateurs" ("Id","Nom","Prenom","NomArabe","PrenomArabe","Email","Login","Password","TypeUtilisateurId","TypeGradeId","UpdatedBy","UpdateTime","IsActive") values ('8239EC3A56B94C77A5042F7931BD3235','system','administrateur',null,null,'admin@courdescomptes.ma','admin','17-D9-B7-C0-6B-78-58-19-82-0C-F0-F4-98-F2-0C-DF','4C23AF6722DE4E99850906C9A34466D7','94DC862BB3BC48D39518DBEC9C6B4878','admin',null,'1');
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
--  DDL for Index IX_ChamberAppeles_IdCRC
--------------------------------------------------------

  CREATE INDEX "SRAIDIHAMZA"."IX_ChamberAppeles_IdCRC" ON "SRAIDIHAMZA"."ChamberAppeles" ("IdCRC") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
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
--  DDL for Index PK_ChamberAppeles
--------------------------------------------------------

  CREATE UNIQUE INDEX "SRAIDIHAMZA"."PK_ChamberAppeles" ON "SRAIDIHAMZA"."ChamberAppeles" ("Id") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
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
--  DDL for Index PK_ChamberAppeleTemp
--------------------------------------------------------

  CREATE UNIQUE INDEX "SRAIDIHAMZA"."PK_ChamberAppeleTemp" ON "SRAIDIHAMZA"."ChamberAppeleTemp" ("Id") 
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
--  Constraints for Table ChamberAppeleTemp
--------------------------------------------------------

  ALTER TABLE "SRAIDIHAMZA"."ChamberAppeleTemp" MODIFY ("Id" NOT NULL ENABLE);
  ALTER TABLE "SRAIDIHAMZA"."ChamberAppeleTemp" MODIFY ("RowNumber" NOT NULL ENABLE);
  ALTER TABLE "SRAIDIHAMZA"."ChamberAppeleTemp" ADD CONSTRAINT "PK_ChamberAppeleTemp" PRIMARY KEY ("Id")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table DisciplineBudgetaireTemp
--------------------------------------------------------

  ALTER TABLE "SRAIDIHAMZA"."DisciplineBudgetaireTemp" MODIFY ("Id" NOT NULL ENABLE);
  ALTER TABLE "SRAIDIHAMZA"."DisciplineBudgetaireTemp" MODIFY ("RowNumber" NOT NULL ENABLE);
  ALTER TABLE "SRAIDIHAMZA"."DisciplineBudgetaireTemp" ADD CONSTRAINT "PK_DisciplineBudgetaireTemp" PRIMARY KEY ("Id")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
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
--  Constraints for Table ChamberAppeles
--------------------------------------------------------

  ALTER TABLE "SRAIDIHAMZA"."ChamberAppeles" MODIFY ("Id" NOT NULL ENABLE);
  ALTER TABLE "SRAIDIHAMZA"."ChamberAppeles" MODIFY ("IdCRC" NOT NULL ENABLE);
  ALTER TABLE "SRAIDIHAMZA"."ChamberAppeles" MODIFY ("Exercice_fiscal" NOT NULL ENABLE);
  ALTER TABLE "SRAIDIHAMZA"."ChamberAppeles" MODIFY ("IsActive" NOT NULL ENABLE);
  ALTER TABLE "SRAIDIHAMZA"."ChamberAppeles" ADD CONSTRAINT "PK_ChamberAppeles" PRIMARY KEY ("Id")
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
--  Ref Constraints for Table ChamberAppeles
--------------------------------------------------------

  ALTER TABLE "SRAIDIHAMZA"."ChamberAppeles" ADD CONSTRAINT "FK_ChamberAppeles_CRCs_IdCRC" FOREIGN KEY ("IdCRC")
	  REFERENCES "SRAIDIHAMZA"."CRCs" ("Id") ON DELETE CASCADE ENABLE;
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
