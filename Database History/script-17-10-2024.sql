--------------------------------------------------------
--  Fichier créé - jeudi-octobre-17-2024   
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
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table RequetesAppel
--------------------------------------------------------

  CREATE TABLE "SRAIDIHAMZA"."RequetesAppel" 
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
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table RequetesAppelTemp
--------------------------------------------------------

  CREATE TABLE "SRAIDIHAMZA"."RequetesAppelTemp" 
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
	"Date_Preparation_Rapport" NVARCHAR2(2000), 
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
Insert into SRAIDIHAMZA."CRCs" ("Id","Code","Label","Description","IsActive") values ('D9C4BF06156143F69E113684B7F591A8',null,'Cour régionale des comptes de Rabat-Salé-Kénitra',null,'1');
Insert into SRAIDIHAMZA."CRCs" ("Id","Code","Label","Description","IsActive") values ('11A77EE3D18C489CB90B795316496369',null,'Cour régionale des comptes de Casablanca-Settat',null,'1');
Insert into SRAIDIHAMZA."CRCs" ("Id","Code","Label","Description","IsActive") values ('4BB477F0C22445208F416048E36CBE9D',null,'Cour régionale des comptes de Fès-Meknès',null,'1');
Insert into SRAIDIHAMZA."CRCs" ("Id","Code","Label","Description","IsActive") values ('88243606B84E4970B4F545F746395A4E',null,'Cour régionale des comptes de Marrakech-Safi',null,'1');
Insert into SRAIDIHAMZA."CRCs" ("Id","Code","Label","Description","IsActive") values ('583A68CF9FC54B099B952229277EB7F3',null,'Cour régionale des comptes de Tanger-Tétouan-Al Hoceima',null,'1');
Insert into SRAIDIHAMZA."CRCs" ("Id","Code","Label","Description","IsActive") values ('1C2AECE8AF2F4D0FB498844D59D1A088',null,'Cour régionale des comptes de Souss-Massa',null,'1');
Insert into SRAIDIHAMZA."CRCs" ("Id","Code","Label","Description","IsActive") values ('3DED7CC4B8B84CA7914D42F9B8FD9D91',null,'Cour régionale des comptes de l Oriental',null,'1');
Insert into SRAIDIHAMZA."CRCs" ("Id","Code","Label","Description","IsActive") values ('E0FFB497D9F24D698883D931C63DE10E',null,'Cour régionale des comptes de Drâa-Tafilalet',null,'1');
Insert into SRAIDIHAMZA."CRCs" ("Id","Code","Label","Description","IsActive") values ('BC35F3B98B574CC98AF3FFE843A1E011',null,'Cour régionale des comptes de Beni Mellal-Khénifra',null,'1');
Insert into SRAIDIHAMZA."CRCs" ("Id","Code","Label","Description","IsActive") values ('1BB957F693F34560A8718E1EF4860FA0',null,'Cour régionale des comptes de Guelmim-Oued Noun',null,'1');
Insert into SRAIDIHAMZA."CRCs" ("Id","Code","Label","Description","IsActive") values ('23B09DC0A1D84D34ADD615339290A6DF',null,'Cour régionale des comptes de Laâyoune-Sakia El Hamra',null,'1');
Insert into SRAIDIHAMZA."CRCs" ("Id","Code","Label","Description","IsActive") values ('61CC1EF056B740BE9F856CE1E7B3153D',null,'Cour régionale des comptes de Dakhla-Oued Ed-Dahab',null,'1');
REM INSERTING into SRAIDIHAMZA."DisciplineBudgetaires"
SET DEFINE OFF;
REM INSERTING into SRAIDIHAMZA."DisciplineBudgetaireTemp"
SET DEFINE OFF;
REM INSERTING into SRAIDIHAMZA."__EFMigrationsHistory"
SET DEFINE OFF;
Insert into SRAIDIHAMZA."__EFMigrationsHistory" ("MigrationId","ProductVersion") values ('20241016090045_generate-migration','8.0.8');
REM INSERTING into SRAIDIHAMZA."Permissions"
SET DEFINE OFF;
REM INSERTING into SRAIDIHAMZA."RequetesAppel"
SET DEFINE OFF;
REM INSERTING into SRAIDIHAMZA."RequetesAppelTemp"
SET DEFINE OFF;
REM INSERTING into SRAIDIHAMZA."RolePermissions"
SET DEFINE OFF;
REM INSERTING into SRAIDIHAMZA."Roles"
SET DEFINE OFF;
Insert into SRAIDIHAMZA."Roles" ("Id","Code","Label","Description","IsActive") values ('543AF5CA74AE4B46BBC2F72CC179D5A0','Admin','Admin',null,'1');
Insert into SRAIDIHAMZA."Roles" ("Id","Code","Label","Description","IsActive") values ('21C186627E9143E592EF8D09734A7A71','Utilisateur','Utilisateur',null,'1');
REM INSERTING into SRAIDIHAMZA."TypeGrades"
SET DEFINE OFF;
Insert into SRAIDIHAMZA."TypeGrades" ("Id","Code","Label","Description","IsActive") values ('FC2C247C22FD4723BD357E8F740F9B0A',null,'Grade 1',null,'1');
Insert into SRAIDIHAMZA."TypeGrades" ("Id","Code","Label","Description","IsActive") values ('A9D9657B281D4996B0793C052FAF7DB2',null,'Grade 2',null,'1');
REM INSERTING into SRAIDIHAMZA."TypeUtilisateurs"
SET DEFINE OFF;
Insert into SRAIDIHAMZA."TypeUtilisateurs" ("Id","Code","Label","Description","IsActive") values ('633CB7C13B354EB4BC46CE04A5CA74B3',null,'Utilisateur 1',null,'1');
Insert into SRAIDIHAMZA."TypeUtilisateurs" ("Id","Code","Label","Description","IsActive") values ('5E219E7A971A43B6942FFAF35D53BC41',null,'Utilisateur 2',null,'1');
REM INSERTING into SRAIDIHAMZA."UtilisateurLoggings"
SET DEFINE OFF;
REM INSERTING into SRAIDIHAMZA."UtilisateurPermissions"
SET DEFINE OFF;
REM INSERTING into SRAIDIHAMZA."UtilisateurRoles"
SET DEFINE OFF;
REM INSERTING into SRAIDIHAMZA."Utilisateurs"
SET DEFINE OFF;
Insert into SRAIDIHAMZA."Utilisateurs" ("Id","Nom","Prenom","NomArabe","PrenomArabe","Email","Login","Password","TypeUtilisateurId","TypeGradeId","UpdatedBy","UpdateTime","IsActive") values ('B6A257A91F544C05B3D52E563888A19A','system','administrateur',null,null,'admin@courdescomptes.ma','admin','17-D9-B7-C0-6B-78-58-19-82-0C-F0-F4-98-F2-0C-DF','633CB7C13B354EB4BC46CE04A5CA74B3','FC2C247C22FD4723BD357E8F740F9B0A','admin',null,'1');
--------------------------------------------------------
--  DDL for Index PK_RequetesAppelTemp
--------------------------------------------------------

  CREATE UNIQUE INDEX "SRAIDIHAMZA"."PK_RequetesAppelTemp" ON "SRAIDIHAMZA"."RequetesAppelTemp" ("Id") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
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
--  DDL for Index PK_RequetesAppel
--------------------------------------------------------

  CREATE UNIQUE INDEX "SRAIDIHAMZA"."PK_RequetesAppel" ON "SRAIDIHAMZA"."RequetesAppel" ("Id") 
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
--  DDL for Index IX_RequetesAppel_IdCRC
--------------------------------------------------------

  CREATE INDEX "SRAIDIHAMZA"."IX_RequetesAppel_IdCRC" ON "SRAIDIHAMZA"."RequetesAppel" ("IdCRC") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
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
--  DDL for Procedure SP_REQUETESAPPELTEMP_CONFIRME
--------------------------------------------------------
set define off;

  CREATE OR REPLACE EDITIONABLE PROCEDURE "SRAIDIHAMZA"."SP_REQUETESAPPELTEMP_CONFIRME" IS
BEGIN
  INSERT INTO "SRAIDIHAMZA"."RequetesAppel" (
      "Id", 
      "Numero_Dossier", 
      "Appelant", 
      "Numero_Jugement_Faisant_Objet_De_Appel", 
      "Emis_En_Date_Du", 
      "IdCRC", 
      "Centre_Comptable", 
      "Exercice_fiscal", 
      "Date_Enregistrement_Requete_Cour_Regionale_Des_Comptes", 
      "Conseiller_Rapporteur", 
      "Date_Ordonnance_Designation_Conseiller_Rapporteur", 
      "Conseiller_Rapporteur_Remplacant", 
      "Date_Ordonnance_Designation_Conseiller_Rapporteur_Remplacant", 
      "Date_Demande_Documents_Supplementaires", 
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
      "Date_Preparation_Rapport", 
      "Designation_du_Conseiller_Reviseur", 
      "Date_Designation_du_Conseiller_Reviseur", 
      "Designation_du_Conseiller_Reviseur_Remplacant", 
      "Date_Designation_du_Conseiller_Reviseur_Remplacant", 
      "Date_de_preparation_de_l_avis_de_l_examinateur", 
      "Date_Transmission_Dossier_Ministere_Public", 
      "Date_Retour_Dossier_Ministere_Public", 
      "Date_Conclusions_Ministere_Public", 
      "Numero_Conclusions_Ministere_Public", 
      "Date_de_la_session", 
      "Dispositif_Decision", 
      "Numero_Decision", 
      "Date_d_envoi_de_la_decision_pour_notifier_les_parties", 
      "Date_de_reception_par_le_comptable_d_une_copie_de_la_decision", 
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
      dbt."Exercice_fiscal", 
      TO_DATE(dbt."Date_Enregistrement_Requete_Cour_Regionale_Des_Comptes", 'YYYY-MM-DD'), 
      dbt."Conseiller_Rapporteur", 
      TO_DATE(dbt."Date_Ordonnance_Designation_Conseiller_Rapporteur", 'YYYY-MM-DD'), 
      dbt."Conseiller_Rapporteur_Remplacant", 
      TO_DATE(dbt."Date_Ordonnance_Designation_Conseiller_Rapporteur_Remplacant", 'YYYY-MM-DD'), 
      TO_DATE(dbt."Date_Demande_Documents_Supplementaires", 'YYYY-MM-DD'), 
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
      TO_DATE(dbt."Date_Preparation_Rapport", 'YYYY-MM-DD'), 
      dbt."Designation_du_Conseiller_Reviseur", 
      TO_DATE(dbt."Date_Designation_du_Conseiller_Reviseur", 'YYYY-MM-DD'), 
      dbt."Designation_du_Conseiller_Reviseur_Remplacant", 
      TO_DATE(dbt."Date_Designation_du_Conseiller_Reviseur_Remplacant", 'YYYY-MM-DD'), 
      TO_DATE(dbt."Date_de_preparation_de_l_avis_de_l_examinateur", 'YYYY-MM-DD'), 
      TO_DATE(dbt."Date_Transmission_Dossier_Ministere_Public", 'YYYY-MM-DD'), 
      TO_DATE(dbt."Date_Retour_Dossier_Ministere_Public", 'YYYY-MM-DD'), 
      TO_DATE(dbt."Date_Conclusions_Ministere_Public", 'YYYY-MM-DD'), 
      dbt."Numero_Conclusions_Ministere_Public", 
      TO_DATE(dbt."Date_de_la_session", 'YYYY-MM-DD'), 
      dbt."Dispositif_Decision", 
      dbt."Numero_Decision", 
      TO_DATE(dbt."Date_d_envoi_de_la_decision_pour_notifier_les_parties", 'YYYY-MM-DD'), 
      TO_DATE(dbt."Date_de_reception_par_le_comptable_d_une_copie_de_la_decision", 'YYYY-MM-DD'), 
      dbt."UpdatedBy", 
      SYSTIMESTAMP, 
      1 

  FROM "SRAIDIHAMZA"."RequetesAppelTemp" dbt;

    -- Delete the temporary table after the insert
    DELETE FROM "SRAIDIHAMZA"."RequetesAppelTemp";

END SP_REQUETESAPPELTEMP_CONFIRME;

/
--------------------------------------------------------
--  DDL for Procedure SP_REQUETESAPPELTEMP_VALIDATE
--------------------------------------------------------
set define off;

  CREATE OR REPLACE EDITIONABLE PROCEDURE "SRAIDIHAMZA"."SP_REQUETESAPPELTEMP_VALIDATE" 
AS 
BEGIN
    -- Clear the RowError field (set it to NULL to fully clear)
    UPDATE "SRAIDIHAMZA"."RequetesAppelTemp"
    SET "RowError" = NULL;

    UPDATE "SRAIDIHAMZA"."RequetesAppelTemp"
    SET "RowError" = COALESCE(TO_CHAR("RowError"), '') || ' #Numero de dossier est obligatoire '
    WHERE "Numero_Dossier" IS NULL;

    UPDATE "SRAIDIHAMZA"."RequetesAppelTemp"
    SET "RowError" = COALESCE(TO_CHAR("RowError"), '') || ' #Appelant est obligatoire '
    WHERE "Appelant" IS NULL;

    UPDATE "SRAIDIHAMZA"."RequetesAppelTemp"
    SET "RowError" = COALESCE(TO_CHAR("RowError"), '') || ' #Emis en date est obligatoire '
    WHERE "Emis_En_Date_Du" IS NULL;

    UPDATE "SRAIDIHAMZA"."RequetesAppelTemp"
    SET "RowError" = COALESCE(TO_CHAR("RowError"), '') || ' #CRC est obligatoire '
    WHERE "CRC" IS NULL;

    UPDATE "SRAIDIHAMZA"."RequetesAppelTemp"
    SET "RowError" = COALESCE(TO_CHAR("RowError"), '') || ' #CRC est introvable '
    WHERE "CRC" NOT IN (SELECT "Label" FROM "CRCs");

    UPDATE "SRAIDIHAMZA"."RequetesAppelTemp"
    SET "RowError" = COALESCE(TO_CHAR("RowError"), '') || ' #Centre comptable est obligatoire '
    WHERE "Centre_Comptable" IS NULL;

    -- Commit the transaction
    COMMIT;
END SP_REQUETESAPPELTEMP_VALIDATE;

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
--  Constraints for Table RequetesAppelTemp
--------------------------------------------------------

  ALTER TABLE "SRAIDIHAMZA"."RequetesAppelTemp" MODIFY ("Id" NOT NULL ENABLE);
  ALTER TABLE "SRAIDIHAMZA"."RequetesAppelTemp" MODIFY ("Exercice_fiscal" NOT NULL ENABLE);
  ALTER TABLE "SRAIDIHAMZA"."RequetesAppelTemp" MODIFY ("RowNumber" NOT NULL ENABLE);
  ALTER TABLE "SRAIDIHAMZA"."RequetesAppelTemp" ADD CONSTRAINT "PK_RequetesAppelTemp" PRIMARY KEY ("Id")
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
--  Constraints for Table RequetesAppel
--------------------------------------------------------

  ALTER TABLE "SRAIDIHAMZA"."RequetesAppel" MODIFY ("Id" NOT NULL ENABLE);
  ALTER TABLE "SRAIDIHAMZA"."RequetesAppel" MODIFY ("IdCRC" NOT NULL ENABLE);
  ALTER TABLE "SRAIDIHAMZA"."RequetesAppel" MODIFY ("Exercice_fiscal" NOT NULL ENABLE);
  ALTER TABLE "SRAIDIHAMZA"."RequetesAppel" MODIFY ("IsActive" NOT NULL ENABLE);
  ALTER TABLE "SRAIDIHAMZA"."RequetesAppel" ADD CONSTRAINT "PK_RequetesAppel" PRIMARY KEY ("Id")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
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
--  Ref Constraints for Table RequetesAppel
--------------------------------------------------------

  ALTER TABLE "SRAIDIHAMZA"."RequetesAppel" ADD CONSTRAINT "FK_RequetesAppel_CRCs_IdCRC" FOREIGN KEY ("IdCRC")
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
