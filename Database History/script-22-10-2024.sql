--------------------------------------------------------
--  Fichier créé - mardi-octobre-22-2024   
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
Insert into SRAIDIHAMZA."CRCs" ("Id","Code","Label","Description","IsActive") values ('7269CBD8B1BA4B9F8456F347E7ACB0BA',null,'Cour régionale des comptes de Rabat-Salé-Kénitra',null,'1');
Insert into SRAIDIHAMZA."CRCs" ("Id","Code","Label","Description","IsActive") values ('F4A916A6A60548C3B28C95D8ABFD5D99',null,'Cour régionale des comptes de Casablanca-Settat',null,'1');
Insert into SRAIDIHAMZA."CRCs" ("Id","Code","Label","Description","IsActive") values ('71BA311868FE46008162A5E866E40AD4',null,'Cour régionale des comptes de Fès-Meknès',null,'1');
Insert into SRAIDIHAMZA."CRCs" ("Id","Code","Label","Description","IsActive") values ('27DFEEC695AF4CFB8AC314EDA161180E',null,'Cour régionale des comptes de Marrakech-Safi',null,'1');
Insert into SRAIDIHAMZA."CRCs" ("Id","Code","Label","Description","IsActive") values ('F2A5C1D7920E481FBC51A065624301EC',null,'Cour régionale des comptes de Tanger-Tétouan-Al Hoceima',null,'1');
Insert into SRAIDIHAMZA."CRCs" ("Id","Code","Label","Description","IsActive") values ('6E7CACBBCAA845409D3202F221429A69',null,'Cour régionale des comptes de Souss-Massa',null,'1');
Insert into SRAIDIHAMZA."CRCs" ("Id","Code","Label","Description","IsActive") values ('303F4F2F8B364572912DA52D421B72A2',null,'Cour régionale des comptes de l Oriental',null,'1');
Insert into SRAIDIHAMZA."CRCs" ("Id","Code","Label","Description","IsActive") values ('4041CEFEA4FE475EAC672A0D38AEFBEE',null,'Cour régionale des comptes de Drâa-Tafilalet',null,'1');
Insert into SRAIDIHAMZA."CRCs" ("Id","Code","Label","Description","IsActive") values ('67D620AF7ADE4451956AE6E0FA5BC300',null,'Cour régionale des comptes de Beni Mellal-Khénifra',null,'1');
Insert into SRAIDIHAMZA."CRCs" ("Id","Code","Label","Description","IsActive") values ('91780D1F575D4EFC9EC2F79570A2F2CB',null,'Cour régionale des comptes de Guelmim-Oued Noun',null,'1');
Insert into SRAIDIHAMZA."CRCs" ("Id","Code","Label","Description","IsActive") values ('5057D3164AEC413781FDBC4D506F3259',null,'Cour régionale des comptes de Laâyoune-Sakia El Hamra',null,'1');
Insert into SRAIDIHAMZA."CRCs" ("Id","Code","Label","Description","IsActive") values ('733141D99A1E47A79B850BDF6780C4A0',null,'Cour régionale des comptes de Dakhla-Oued Ed-Dahab',null,'1');
REM INSERTING into SRAIDIHAMZA."DisciplineBudgetaires"
SET DEFINE OFF;
Insert into SRAIDIHAMZA."DisciplineBudgetaires" ("Id","Numero_Dossier","Appelant","Numero_Jugement_Faisant_Objet_De_Appel","Emis_En_Date_Du","IdCRC","Centre_Comptable","Date_Enregistrement_Requete_Cour_Regionale_Des_Comptes","Date_Requisition_Ministere_Public","Numero_Requisition_Ministere_Public","Date_Ordonnance_Designation_Conseiller_Rapporteur","Numero_Ordonnance_Designation_Conseiller_Rapporteur","Conseiller_Rapporteur","Date_Ordonnance_Designation_Conseiller_Rapporteur_Remplacant","Numero_Ordonnance_Designation_Conseiller_Rapporteur_Remplacant","Conseiller_Rapporteur_Remplacant","Date_Envoi_Requete_Parties","Parties_Agent_du_Roi_au_CRC","Parties_Entrepot_Regional","Parties_Travailleur_du_territoire","Parties_President_de_la_Commune","Date_de_reception_par_les_parties_Agent_du_Roi_au_CRC","Date_de_reception_par_les_parties_Entrepot_Regional","Date_de_reception_par_les_parties_Travailleur_du_territoire","Date_de_reception_par_les_parties_President_de_la_Commune","Reponse_au_memoire_d_appel_Agent_du_Roi_au_CRC","Reponse_au_memoire_d_appel_Entrepot_Regional","Reponse_au_memoire_d_appel_Travailleur_du_territoire","Reponse_au_memoire_d_appel_President_de_la_Commune","Date_Demande_Documents_Supplementaires","Date_Convocation_Interesse_Audience","Date_Enquete_Sur_Le_Terrain","Date_Preparation_Rapport","Date_Transmission_Dossier_Ministere_Public","Date_Conclusions_Ministere_Public","Numero_Conclusions_Ministere_Public","Date_Reception_Convocation_Interesse_Consultation","Date_Reception_Convocation_Avocat_Consultation","Date_Consultation_Interesse","Date_Consultation_Avocat","Date_Retour_Dossier_Greffe_Central","Convocation_Interesse_Audience_Jugement","Convocation_Avocat_Audience_Jugement","Date_Audience_Jugement","Convocation_Avocat_Prononce_Jugement","Convocation_Interesse_Prononce_Jugement","Date_Audience_Prononce_Jugement","Dispositif_Decision","Numero_Decision","Date_Envoi_Decision_Notification_Parties","Date_Reception_Comptable_Copie_Decision","UpdatedBy","UpdateTime","IsActive") values ('AAB8F9AFFCDC4C9BAB8059559D4F6CF8','8','???? 8','108',to_timestamp('21/10/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),'733141D99A1E47A79B850BDF6780C4A0','???? 1',to_timestamp('02/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),to_timestamp('03/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),'208',to_timestamp('04/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),'308','?????? 8',to_timestamp('05/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),'408','?????? ??? 8',to_timestamp('06/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),'???? 8','???? 8','???? 8','???? 8',to_timestamp('07/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),to_timestamp('08/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),to_timestamp('09/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),to_timestamp('10/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),'?? ???? 8','?? ???? 8','?? ???? 8','?? ???? 8',to_timestamp('11/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),to_timestamp('12/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),to_timestamp('13/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),to_timestamp('14/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),to_timestamp('15/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),to_timestamp('16/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),'508',to_timestamp('17/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),to_timestamp('18/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),to_timestamp('19/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),to_timestamp('20/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),to_timestamp('21/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),'convocation 8','convocation 8',to_timestamp('24/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),'convocation 8','convocation 8',to_timestamp('27/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),'Dispositif Decision 8','???? 8',to_timestamp('29/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),to_timestamp('29/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),null,null,'0');
Insert into SRAIDIHAMZA."DisciplineBudgetaires" ("Id","Numero_Dossier","Appelant","Numero_Jugement_Faisant_Objet_De_Appel","Emis_En_Date_Du","IdCRC","Centre_Comptable","Date_Enregistrement_Requete_Cour_Regionale_Des_Comptes","Date_Requisition_Ministere_Public","Numero_Requisition_Ministere_Public","Date_Ordonnance_Designation_Conseiller_Rapporteur","Numero_Ordonnance_Designation_Conseiller_Rapporteur","Conseiller_Rapporteur","Date_Ordonnance_Designation_Conseiller_Rapporteur_Remplacant","Numero_Ordonnance_Designation_Conseiller_Rapporteur_Remplacant","Conseiller_Rapporteur_Remplacant","Date_Envoi_Requete_Parties","Parties_Agent_du_Roi_au_CRC","Parties_Entrepot_Regional","Parties_Travailleur_du_territoire","Parties_President_de_la_Commune","Date_de_reception_par_les_parties_Agent_du_Roi_au_CRC","Date_de_reception_par_les_parties_Entrepot_Regional","Date_de_reception_par_les_parties_Travailleur_du_territoire","Date_de_reception_par_les_parties_President_de_la_Commune","Reponse_au_memoire_d_appel_Agent_du_Roi_au_CRC","Reponse_au_memoire_d_appel_Entrepot_Regional","Reponse_au_memoire_d_appel_Travailleur_du_territoire","Reponse_au_memoire_d_appel_President_de_la_Commune","Date_Demande_Documents_Supplementaires","Date_Convocation_Interesse_Audience","Date_Enquete_Sur_Le_Terrain","Date_Preparation_Rapport","Date_Transmission_Dossier_Ministere_Public","Date_Conclusions_Ministere_Public","Numero_Conclusions_Ministere_Public","Date_Reception_Convocation_Interesse_Consultation","Date_Reception_Convocation_Avocat_Consultation","Date_Consultation_Interesse","Date_Consultation_Avocat","Date_Retour_Dossier_Greffe_Central","Convocation_Interesse_Audience_Jugement","Convocation_Avocat_Audience_Jugement","Date_Audience_Jugement","Convocation_Avocat_Prononce_Jugement","Convocation_Interesse_Prononce_Jugement","Date_Audience_Prononce_Jugement","Dispositif_Decision","Numero_Decision","Date_Envoi_Decision_Notification_Parties","Date_Reception_Comptable_Copie_Decision","UpdatedBy","UpdateTime","IsActive") values ('BB931EB9DB3046618D70849AB3C3AA8C','6','???? 6','106',to_timestamp('01/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),'F4A916A6A60548C3B28C95D8ABFD5D99','???? 1',to_timestamp('02/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),to_timestamp('03/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),'206',to_timestamp('04/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),'306','?????? 6',to_timestamp('05/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),'406','?????? ??? 6',to_timestamp('06/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),'???? 6','???? 6','???? 6','???? 6',to_timestamp('07/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),to_timestamp('08/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),to_timestamp('09/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),to_timestamp('10/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),'?? ???? 6','?? ???? 6','?? ???? 6','?? ???? 6',to_timestamp('11/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),to_timestamp('12/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),to_timestamp('13/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),to_timestamp('14/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),to_timestamp('15/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),to_timestamp('16/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),'506',to_timestamp('17/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),to_timestamp('18/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),to_timestamp('19/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),to_timestamp('20/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),to_timestamp('21/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),'convocation 6','convocation 6',to_timestamp('24/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),'convocation 6','convocation 6',to_timestamp('27/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),'Dispositif Decision 6','???? 6',to_timestamp('29/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),to_timestamp('29/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),'admin',to_timestamp('21/10/24 22:59:15,141000000','DD/MM/RR HH24:MI:SSXFF'),'1');
Insert into SRAIDIHAMZA."DisciplineBudgetaires" ("Id","Numero_Dossier","Appelant","Numero_Jugement_Faisant_Objet_De_Appel","Emis_En_Date_Du","IdCRC","Centre_Comptable","Date_Enregistrement_Requete_Cour_Regionale_Des_Comptes","Date_Requisition_Ministere_Public","Numero_Requisition_Ministere_Public","Date_Ordonnance_Designation_Conseiller_Rapporteur","Numero_Ordonnance_Designation_Conseiller_Rapporteur","Conseiller_Rapporteur","Date_Ordonnance_Designation_Conseiller_Rapporteur_Remplacant","Numero_Ordonnance_Designation_Conseiller_Rapporteur_Remplacant","Conseiller_Rapporteur_Remplacant","Date_Envoi_Requete_Parties","Parties_Agent_du_Roi_au_CRC","Parties_Entrepot_Regional","Parties_Travailleur_du_territoire","Parties_President_de_la_Commune","Date_de_reception_par_les_parties_Agent_du_Roi_au_CRC","Date_de_reception_par_les_parties_Entrepot_Regional","Date_de_reception_par_les_parties_Travailleur_du_territoire","Date_de_reception_par_les_parties_President_de_la_Commune","Reponse_au_memoire_d_appel_Agent_du_Roi_au_CRC","Reponse_au_memoire_d_appel_Entrepot_Regional","Reponse_au_memoire_d_appel_Travailleur_du_territoire","Reponse_au_memoire_d_appel_President_de_la_Commune","Date_Demande_Documents_Supplementaires","Date_Convocation_Interesse_Audience","Date_Enquete_Sur_Le_Terrain","Date_Preparation_Rapport","Date_Transmission_Dossier_Ministere_Public","Date_Conclusions_Ministere_Public","Numero_Conclusions_Ministere_Public","Date_Reception_Convocation_Interesse_Consultation","Date_Reception_Convocation_Avocat_Consultation","Date_Consultation_Interesse","Date_Consultation_Avocat","Date_Retour_Dossier_Greffe_Central","Convocation_Interesse_Audience_Jugement","Convocation_Avocat_Audience_Jugement","Date_Audience_Jugement","Convocation_Avocat_Prononce_Jugement","Convocation_Interesse_Prononce_Jugement","Date_Audience_Prononce_Jugement","Dispositif_Decision","Numero_Decision","Date_Envoi_Decision_Notification_Parties","Date_Reception_Comptable_Copie_Decision","UpdatedBy","UpdateTime","IsActive") values ('D05417542DA542A28CEA04AB48C97DBD','5','???? 5','105',to_timestamp('01/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),'F4A916A6A60548C3B28C95D8ABFD5D99','???? 1',to_timestamp('02/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),to_timestamp('03/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),'205',to_timestamp('04/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),'305','?????? 5',to_timestamp('05/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),'405','?????? ??? 5',to_timestamp('06/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),'???? 5','???? 5','???? 5','???? 5',to_timestamp('07/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),to_timestamp('08/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),to_timestamp('09/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),to_timestamp('10/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),'?? ???? 5','?? ???? 5','?? ???? 5','?? ???? 5',to_timestamp('11/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),to_timestamp('12/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),to_timestamp('13/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),to_timestamp('14/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),to_timestamp('15/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),to_timestamp('16/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),'505',to_timestamp('17/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),to_timestamp('18/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),to_timestamp('19/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),to_timestamp('20/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),to_timestamp('21/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),'convocation 5','convocation 5',to_timestamp('24/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),'convocation 5','convocation 5',to_timestamp('27/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),'Dispositif Decision 5','???? 5',to_timestamp('29/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),to_timestamp('29/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),'admin',to_timestamp('21/10/24 22:59:15,141000000','DD/MM/RR HH24:MI:SSXFF'),'1');
Insert into SRAIDIHAMZA."DisciplineBudgetaires" ("Id","Numero_Dossier","Appelant","Numero_Jugement_Faisant_Objet_De_Appel","Emis_En_Date_Du","IdCRC","Centre_Comptable","Date_Enregistrement_Requete_Cour_Regionale_Des_Comptes","Date_Requisition_Ministere_Public","Numero_Requisition_Ministere_Public","Date_Ordonnance_Designation_Conseiller_Rapporteur","Numero_Ordonnance_Designation_Conseiller_Rapporteur","Conseiller_Rapporteur","Date_Ordonnance_Designation_Conseiller_Rapporteur_Remplacant","Numero_Ordonnance_Designation_Conseiller_Rapporteur_Remplacant","Conseiller_Rapporteur_Remplacant","Date_Envoi_Requete_Parties","Parties_Agent_du_Roi_au_CRC","Parties_Entrepot_Regional","Parties_Travailleur_du_territoire","Parties_President_de_la_Commune","Date_de_reception_par_les_parties_Agent_du_Roi_au_CRC","Date_de_reception_par_les_parties_Entrepot_Regional","Date_de_reception_par_les_parties_Travailleur_du_territoire","Date_de_reception_par_les_parties_President_de_la_Commune","Reponse_au_memoire_d_appel_Agent_du_Roi_au_CRC","Reponse_au_memoire_d_appel_Entrepot_Regional","Reponse_au_memoire_d_appel_Travailleur_du_territoire","Reponse_au_memoire_d_appel_President_de_la_Commune","Date_Demande_Documents_Supplementaires","Date_Convocation_Interesse_Audience","Date_Enquete_Sur_Le_Terrain","Date_Preparation_Rapport","Date_Transmission_Dossier_Ministere_Public","Date_Conclusions_Ministere_Public","Numero_Conclusions_Ministere_Public","Date_Reception_Convocation_Interesse_Consultation","Date_Reception_Convocation_Avocat_Consultation","Date_Consultation_Interesse","Date_Consultation_Avocat","Date_Retour_Dossier_Greffe_Central","Convocation_Interesse_Audience_Jugement","Convocation_Avocat_Audience_Jugement","Date_Audience_Jugement","Convocation_Avocat_Prononce_Jugement","Convocation_Interesse_Prononce_Jugement","Date_Audience_Prononce_Jugement","Dispositif_Decision","Numero_Decision","Date_Envoi_Decision_Notification_Parties","Date_Reception_Comptable_Copie_Decision","UpdatedBy","UpdateTime","IsActive") values ('5AEC5F6A3B184DE8AAD84AC0BD11D157','2','???? 2','102',to_timestamp('01/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),'7269CBD8B1BA4B9F8456F347E7ACB0BA','???? 1',to_timestamp('02/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),to_timestamp('03/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),'202',to_timestamp('04/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),'302','?????? 2',to_timestamp('05/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),'402','?????? ??? 2',to_timestamp('06/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),'???? 2','???? 2','???? 2','???? 2',to_timestamp('07/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),to_timestamp('08/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),to_timestamp('09/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),to_timestamp('10/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),'?? ???? 2','?? ???? 2','?? ???? 2','?? ???? 2',to_timestamp('11/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),to_timestamp('12/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),to_timestamp('13/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),to_timestamp('14/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),to_timestamp('15/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),to_timestamp('16/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),'502',to_timestamp('17/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),to_timestamp('18/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),to_timestamp('19/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),to_timestamp('20/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),to_timestamp('21/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),'convocation 2','convocation 2',to_timestamp('24/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),'convocation 2','convocation 2',to_timestamp('27/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),'Dispositif Decision 2','???? 2',to_timestamp('29/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),to_timestamp('29/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),'admin',to_timestamp('21/10/24 22:59:15,141000000','DD/MM/RR HH24:MI:SSXFF'),'1');
Insert into SRAIDIHAMZA."DisciplineBudgetaires" ("Id","Numero_Dossier","Appelant","Numero_Jugement_Faisant_Objet_De_Appel","Emis_En_Date_Du","IdCRC","Centre_Comptable","Date_Enregistrement_Requete_Cour_Regionale_Des_Comptes","Date_Requisition_Ministere_Public","Numero_Requisition_Ministere_Public","Date_Ordonnance_Designation_Conseiller_Rapporteur","Numero_Ordonnance_Designation_Conseiller_Rapporteur","Conseiller_Rapporteur","Date_Ordonnance_Designation_Conseiller_Rapporteur_Remplacant","Numero_Ordonnance_Designation_Conseiller_Rapporteur_Remplacant","Conseiller_Rapporteur_Remplacant","Date_Envoi_Requete_Parties","Parties_Agent_du_Roi_au_CRC","Parties_Entrepot_Regional","Parties_Travailleur_du_territoire","Parties_President_de_la_Commune","Date_de_reception_par_les_parties_Agent_du_Roi_au_CRC","Date_de_reception_par_les_parties_Entrepot_Regional","Date_de_reception_par_les_parties_Travailleur_du_territoire","Date_de_reception_par_les_parties_President_de_la_Commune","Reponse_au_memoire_d_appel_Agent_du_Roi_au_CRC","Reponse_au_memoire_d_appel_Entrepot_Regional","Reponse_au_memoire_d_appel_Travailleur_du_territoire","Reponse_au_memoire_d_appel_President_de_la_Commune","Date_Demande_Documents_Supplementaires","Date_Convocation_Interesse_Audience","Date_Enquete_Sur_Le_Terrain","Date_Preparation_Rapport","Date_Transmission_Dossier_Ministere_Public","Date_Conclusions_Ministere_Public","Numero_Conclusions_Ministere_Public","Date_Reception_Convocation_Interesse_Consultation","Date_Reception_Convocation_Avocat_Consultation","Date_Consultation_Interesse","Date_Consultation_Avocat","Date_Retour_Dossier_Greffe_Central","Convocation_Interesse_Audience_Jugement","Convocation_Avocat_Audience_Jugement","Date_Audience_Jugement","Convocation_Avocat_Prononce_Jugement","Convocation_Interesse_Prononce_Jugement","Date_Audience_Prononce_Jugement","Dispositif_Decision","Numero_Decision","Date_Envoi_Decision_Notification_Parties","Date_Reception_Comptable_Copie_Decision","UpdatedBy","UpdateTime","IsActive") values ('738848C754334E609E854DCA5BB6D493','7','Hamza SRAIDI','107',to_timestamp('21/10/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),'7269CBD8B1BA4B9F8456F347E7ACB0BA','???? 1',to_timestamp('02/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),to_timestamp('21/10/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),'207',to_timestamp('04/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),'307','?????? 7',to_timestamp('05/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),'407','?????? ??? 7',to_timestamp('06/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),'???? 7','???? 7','???? 7','???? 7',to_timestamp('07/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),to_timestamp('08/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),to_timestamp('09/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),to_timestamp('10/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),'?? ???? 7','?? ???? 7','?? ???? 7','?? ???? 7',to_timestamp('11/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),to_timestamp('12/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),to_timestamp('13/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),to_timestamp('14/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),to_timestamp('15/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),to_timestamp('16/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),'507',to_timestamp('17/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),to_timestamp('18/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),to_timestamp('19/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),to_timestamp('20/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),to_timestamp('21/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),'convocation 7','convocation 7',to_timestamp('24/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),'convocation 7','convocation 7',to_timestamp('27/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),'Dispositif Decision 7','???? 7',to_timestamp('29/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),to_timestamp('29/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),'admin',to_timestamp('21/10/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),'1');
Insert into SRAIDIHAMZA."DisciplineBudgetaires" ("Id","Numero_Dossier","Appelant","Numero_Jugement_Faisant_Objet_De_Appel","Emis_En_Date_Du","IdCRC","Centre_Comptable","Date_Enregistrement_Requete_Cour_Regionale_Des_Comptes","Date_Requisition_Ministere_Public","Numero_Requisition_Ministere_Public","Date_Ordonnance_Designation_Conseiller_Rapporteur","Numero_Ordonnance_Designation_Conseiller_Rapporteur","Conseiller_Rapporteur","Date_Ordonnance_Designation_Conseiller_Rapporteur_Remplacant","Numero_Ordonnance_Designation_Conseiller_Rapporteur_Remplacant","Conseiller_Rapporteur_Remplacant","Date_Envoi_Requete_Parties","Parties_Agent_du_Roi_au_CRC","Parties_Entrepot_Regional","Parties_Travailleur_du_territoire","Parties_President_de_la_Commune","Date_de_reception_par_les_parties_Agent_du_Roi_au_CRC","Date_de_reception_par_les_parties_Entrepot_Regional","Date_de_reception_par_les_parties_Travailleur_du_territoire","Date_de_reception_par_les_parties_President_de_la_Commune","Reponse_au_memoire_d_appel_Agent_du_Roi_au_CRC","Reponse_au_memoire_d_appel_Entrepot_Regional","Reponse_au_memoire_d_appel_Travailleur_du_territoire","Reponse_au_memoire_d_appel_President_de_la_Commune","Date_Demande_Documents_Supplementaires","Date_Convocation_Interesse_Audience","Date_Enquete_Sur_Le_Terrain","Date_Preparation_Rapport","Date_Transmission_Dossier_Ministere_Public","Date_Conclusions_Ministere_Public","Numero_Conclusions_Ministere_Public","Date_Reception_Convocation_Interesse_Consultation","Date_Reception_Convocation_Avocat_Consultation","Date_Consultation_Interesse","Date_Consultation_Avocat","Date_Retour_Dossier_Greffe_Central","Convocation_Interesse_Audience_Jugement","Convocation_Avocat_Audience_Jugement","Date_Audience_Jugement","Convocation_Avocat_Prononce_Jugement","Convocation_Interesse_Prononce_Jugement","Date_Audience_Prononce_Jugement","Dispositif_Decision","Numero_Decision","Date_Envoi_Decision_Notification_Parties","Date_Reception_Comptable_Copie_Decision","UpdatedBy","UpdateTime","IsActive") values ('AEDCAE69931649DE87092EA44FFA70EF','1','???? 1','101',to_timestamp('21/10/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),'7269CBD8B1BA4B9F8456F347E7ACB0BA','???? 1',to_timestamp('02/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),to_timestamp('21/10/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),'201',to_timestamp('04/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),'301','?????? 1',to_timestamp('05/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),'401','?????? ??? 1',to_timestamp('06/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),'???? 1','???? 1','???? 1','???? 1',to_timestamp('07/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),to_timestamp('08/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),to_timestamp('09/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),to_timestamp('10/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),'?? ???? 1','?? ???? 1','?? ???? 1','?? ???? 1',to_timestamp('11/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),to_timestamp('12/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),to_timestamp('13/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),to_timestamp('14/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),to_timestamp('15/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),to_timestamp('16/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),'501',to_timestamp('17/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),to_timestamp('18/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),to_timestamp('19/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),to_timestamp('20/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),to_timestamp('21/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),'convocation 1','convocation 1',to_timestamp('24/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),'convocation 1 ','convocation 1 ',to_timestamp('27/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),'Dispositif Decision 1 ','???? 1',to_timestamp('29/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),to_timestamp('29/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),null,null,'0');
Insert into SRAIDIHAMZA."DisciplineBudgetaires" ("Id","Numero_Dossier","Appelant","Numero_Jugement_Faisant_Objet_De_Appel","Emis_En_Date_Du","IdCRC","Centre_Comptable","Date_Enregistrement_Requete_Cour_Regionale_Des_Comptes","Date_Requisition_Ministere_Public","Numero_Requisition_Ministere_Public","Date_Ordonnance_Designation_Conseiller_Rapporteur","Numero_Ordonnance_Designation_Conseiller_Rapporteur","Conseiller_Rapporteur","Date_Ordonnance_Designation_Conseiller_Rapporteur_Remplacant","Numero_Ordonnance_Designation_Conseiller_Rapporteur_Remplacant","Conseiller_Rapporteur_Remplacant","Date_Envoi_Requete_Parties","Parties_Agent_du_Roi_au_CRC","Parties_Entrepot_Regional","Parties_Travailleur_du_territoire","Parties_President_de_la_Commune","Date_de_reception_par_les_parties_Agent_du_Roi_au_CRC","Date_de_reception_par_les_parties_Entrepot_Regional","Date_de_reception_par_les_parties_Travailleur_du_territoire","Date_de_reception_par_les_parties_President_de_la_Commune","Reponse_au_memoire_d_appel_Agent_du_Roi_au_CRC","Reponse_au_memoire_d_appel_Entrepot_Regional","Reponse_au_memoire_d_appel_Travailleur_du_territoire","Reponse_au_memoire_d_appel_President_de_la_Commune","Date_Demande_Documents_Supplementaires","Date_Convocation_Interesse_Audience","Date_Enquete_Sur_Le_Terrain","Date_Preparation_Rapport","Date_Transmission_Dossier_Ministere_Public","Date_Conclusions_Ministere_Public","Numero_Conclusions_Ministere_Public","Date_Reception_Convocation_Interesse_Consultation","Date_Reception_Convocation_Avocat_Consultation","Date_Consultation_Interesse","Date_Consultation_Avocat","Date_Retour_Dossier_Greffe_Central","Convocation_Interesse_Audience_Jugement","Convocation_Avocat_Audience_Jugement","Date_Audience_Jugement","Convocation_Avocat_Prononce_Jugement","Convocation_Interesse_Prononce_Jugement","Date_Audience_Prononce_Jugement","Dispositif_Decision","Numero_Decision","Date_Envoi_Decision_Notification_Parties","Date_Reception_Comptable_Copie_Decision","UpdatedBy","UpdateTime","IsActive") values ('9F214D55661A412A9984F485A47ED0C2','10','???? 10','110',to_timestamp('01/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),'733141D99A1E47A79B850BDF6780C4A0','???? 1',to_timestamp('02/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),to_timestamp('03/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),'210',to_timestamp('04/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),'310','?????? 10',to_timestamp('05/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),'410','?????? ??? 10',to_timestamp('06/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),'???? 10','???? 10','???? 10','???? 10',to_timestamp('07/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),to_timestamp('08/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),to_timestamp('09/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),to_timestamp('10/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),'?? ???? 10','?? ???? 10','?? ???? 10','?? ???? 10',to_timestamp('11/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),to_timestamp('12/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),to_timestamp('13/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),to_timestamp('14/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),to_timestamp('15/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),to_timestamp('16/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),'510',to_timestamp('17/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),to_timestamp('18/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),to_timestamp('19/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),to_timestamp('20/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),to_timestamp('21/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),'convocation 10','convocation 10',to_timestamp('24/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),'convocation 10','convocation 10',to_timestamp('27/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),'Dispositif Decision 10','???? 10',to_timestamp('29/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),to_timestamp('29/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),'admin',to_timestamp('21/10/24 22:59:15,141000000','DD/MM/RR HH24:MI:SSXFF'),'1');
Insert into SRAIDIHAMZA."DisciplineBudgetaires" ("Id","Numero_Dossier","Appelant","Numero_Jugement_Faisant_Objet_De_Appel","Emis_En_Date_Du","IdCRC","Centre_Comptable","Date_Enregistrement_Requete_Cour_Regionale_Des_Comptes","Date_Requisition_Ministere_Public","Numero_Requisition_Ministere_Public","Date_Ordonnance_Designation_Conseiller_Rapporteur","Numero_Ordonnance_Designation_Conseiller_Rapporteur","Conseiller_Rapporteur","Date_Ordonnance_Designation_Conseiller_Rapporteur_Remplacant","Numero_Ordonnance_Designation_Conseiller_Rapporteur_Remplacant","Conseiller_Rapporteur_Remplacant","Date_Envoi_Requete_Parties","Parties_Agent_du_Roi_au_CRC","Parties_Entrepot_Regional","Parties_Travailleur_du_territoire","Parties_President_de_la_Commune","Date_de_reception_par_les_parties_Agent_du_Roi_au_CRC","Date_de_reception_par_les_parties_Entrepot_Regional","Date_de_reception_par_les_parties_Travailleur_du_territoire","Date_de_reception_par_les_parties_President_de_la_Commune","Reponse_au_memoire_d_appel_Agent_du_Roi_au_CRC","Reponse_au_memoire_d_appel_Entrepot_Regional","Reponse_au_memoire_d_appel_Travailleur_du_territoire","Reponse_au_memoire_d_appel_President_de_la_Commune","Date_Demande_Documents_Supplementaires","Date_Convocation_Interesse_Audience","Date_Enquete_Sur_Le_Terrain","Date_Preparation_Rapport","Date_Transmission_Dossier_Ministere_Public","Date_Conclusions_Ministere_Public","Numero_Conclusions_Ministere_Public","Date_Reception_Convocation_Interesse_Consultation","Date_Reception_Convocation_Avocat_Consultation","Date_Consultation_Interesse","Date_Consultation_Avocat","Date_Retour_Dossier_Greffe_Central","Convocation_Interesse_Audience_Jugement","Convocation_Avocat_Audience_Jugement","Date_Audience_Jugement","Convocation_Avocat_Prononce_Jugement","Convocation_Interesse_Prononce_Jugement","Date_Audience_Prononce_Jugement","Dispositif_Decision","Numero_Decision","Date_Envoi_Decision_Notification_Parties","Date_Reception_Comptable_Copie_Decision","UpdatedBy","UpdateTime","IsActive") values ('824BFF68C5C748FA90A1B37E79BBCE69','3','???? 3','103',to_timestamp('01/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),'F4A916A6A60548C3B28C95D8ABFD5D99','???? 1',to_timestamp('02/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),to_timestamp('03/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),'203',to_timestamp('04/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),'303','?????? 3',to_timestamp('05/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),'403','?????? ??? 3',to_timestamp('06/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),'???? 3','???? 3','???? 3','???? 3',to_timestamp('07/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),to_timestamp('08/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),to_timestamp('09/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),to_timestamp('10/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),'?? ???? 3','?? ???? 3','?? ???? 3','?? ???? 3',to_timestamp('11/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),to_timestamp('12/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),to_timestamp('13/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),to_timestamp('14/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),to_timestamp('15/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),to_timestamp('16/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),'503',to_timestamp('17/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),to_timestamp('18/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),to_timestamp('19/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),to_timestamp('20/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),to_timestamp('21/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),'convocation 3','convocation 3',to_timestamp('24/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),'convocation 3','convocation 3',to_timestamp('27/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),'Dispositif Decision 3','???? 3',to_timestamp('29/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),to_timestamp('29/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),'admin',to_timestamp('21/10/24 22:59:15,141000000','DD/MM/RR HH24:MI:SSXFF'),'1');
Insert into SRAIDIHAMZA."DisciplineBudgetaires" ("Id","Numero_Dossier","Appelant","Numero_Jugement_Faisant_Objet_De_Appel","Emis_En_Date_Du","IdCRC","Centre_Comptable","Date_Enregistrement_Requete_Cour_Regionale_Des_Comptes","Date_Requisition_Ministere_Public","Numero_Requisition_Ministere_Public","Date_Ordonnance_Designation_Conseiller_Rapporteur","Numero_Ordonnance_Designation_Conseiller_Rapporteur","Conseiller_Rapporteur","Date_Ordonnance_Designation_Conseiller_Rapporteur_Remplacant","Numero_Ordonnance_Designation_Conseiller_Rapporteur_Remplacant","Conseiller_Rapporteur_Remplacant","Date_Envoi_Requete_Parties","Parties_Agent_du_Roi_au_CRC","Parties_Entrepot_Regional","Parties_Travailleur_du_territoire","Parties_President_de_la_Commune","Date_de_reception_par_les_parties_Agent_du_Roi_au_CRC","Date_de_reception_par_les_parties_Entrepot_Regional","Date_de_reception_par_les_parties_Travailleur_du_territoire","Date_de_reception_par_les_parties_President_de_la_Commune","Reponse_au_memoire_d_appel_Agent_du_Roi_au_CRC","Reponse_au_memoire_d_appel_Entrepot_Regional","Reponse_au_memoire_d_appel_Travailleur_du_territoire","Reponse_au_memoire_d_appel_President_de_la_Commune","Date_Demande_Documents_Supplementaires","Date_Convocation_Interesse_Audience","Date_Enquete_Sur_Le_Terrain","Date_Preparation_Rapport","Date_Transmission_Dossier_Ministere_Public","Date_Conclusions_Ministere_Public","Numero_Conclusions_Ministere_Public","Date_Reception_Convocation_Interesse_Consultation","Date_Reception_Convocation_Avocat_Consultation","Date_Consultation_Interesse","Date_Consultation_Avocat","Date_Retour_Dossier_Greffe_Central","Convocation_Interesse_Audience_Jugement","Convocation_Avocat_Audience_Jugement","Date_Audience_Jugement","Convocation_Avocat_Prononce_Jugement","Convocation_Interesse_Prononce_Jugement","Date_Audience_Prononce_Jugement","Dispositif_Decision","Numero_Decision","Date_Envoi_Decision_Notification_Parties","Date_Reception_Comptable_Copie_Decision","UpdatedBy","UpdateTime","IsActive") values ('FA1D5AFC7DE942D8B00B9ACB8DBB69CD','4','???? 4','104',to_timestamp('01/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),'F4A916A6A60548C3B28C95D8ABFD5D99','???? 1',to_timestamp('02/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),to_timestamp('03/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),'204',to_timestamp('04/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),'304','?????? 4',to_timestamp('05/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),'404','?????? ??? 4',to_timestamp('06/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),'???? 4','???? 4','???? 4','???? 4',to_timestamp('07/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),to_timestamp('08/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),to_timestamp('09/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),to_timestamp('10/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),'?? ???? 4','?? ???? 4','?? ???? 4','?? ???? 4',to_timestamp('11/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),to_timestamp('12/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),to_timestamp('13/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),to_timestamp('14/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),to_timestamp('15/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),to_timestamp('16/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),'504',to_timestamp('17/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),to_timestamp('18/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),to_timestamp('19/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),to_timestamp('20/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),to_timestamp('21/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),'convocation 4','convocation 4',to_timestamp('24/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),'convocation 4','convocation 4',to_timestamp('27/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),'Dispositif Decision 4','???? 4',to_timestamp('29/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),to_timestamp('29/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),'admin',to_timestamp('21/10/24 22:59:15,141000000','DD/MM/RR HH24:MI:SSXFF'),'1');
Insert into SRAIDIHAMZA."DisciplineBudgetaires" ("Id","Numero_Dossier","Appelant","Numero_Jugement_Faisant_Objet_De_Appel","Emis_En_Date_Du","IdCRC","Centre_Comptable","Date_Enregistrement_Requete_Cour_Regionale_Des_Comptes","Date_Requisition_Ministere_Public","Numero_Requisition_Ministere_Public","Date_Ordonnance_Designation_Conseiller_Rapporteur","Numero_Ordonnance_Designation_Conseiller_Rapporteur","Conseiller_Rapporteur","Date_Ordonnance_Designation_Conseiller_Rapporteur_Remplacant","Numero_Ordonnance_Designation_Conseiller_Rapporteur_Remplacant","Conseiller_Rapporteur_Remplacant","Date_Envoi_Requete_Parties","Parties_Agent_du_Roi_au_CRC","Parties_Entrepot_Regional","Parties_Travailleur_du_territoire","Parties_President_de_la_Commune","Date_de_reception_par_les_parties_Agent_du_Roi_au_CRC","Date_de_reception_par_les_parties_Entrepot_Regional","Date_de_reception_par_les_parties_Travailleur_du_territoire","Date_de_reception_par_les_parties_President_de_la_Commune","Reponse_au_memoire_d_appel_Agent_du_Roi_au_CRC","Reponse_au_memoire_d_appel_Entrepot_Regional","Reponse_au_memoire_d_appel_Travailleur_du_territoire","Reponse_au_memoire_d_appel_President_de_la_Commune","Date_Demande_Documents_Supplementaires","Date_Convocation_Interesse_Audience","Date_Enquete_Sur_Le_Terrain","Date_Preparation_Rapport","Date_Transmission_Dossier_Ministere_Public","Date_Conclusions_Ministere_Public","Numero_Conclusions_Ministere_Public","Date_Reception_Convocation_Interesse_Consultation","Date_Reception_Convocation_Avocat_Consultation","Date_Consultation_Interesse","Date_Consultation_Avocat","Date_Retour_Dossier_Greffe_Central","Convocation_Interesse_Audience_Jugement","Convocation_Avocat_Audience_Jugement","Date_Audience_Jugement","Convocation_Avocat_Prononce_Jugement","Convocation_Interesse_Prononce_Jugement","Date_Audience_Prononce_Jugement","Dispositif_Decision","Numero_Decision","Date_Envoi_Decision_Notification_Parties","Date_Reception_Comptable_Copie_Decision","UpdatedBy","UpdateTime","IsActive") values ('02D7BEE846504078BE645B014DED6B8B','9','???? 9','109',to_timestamp('21/10/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),'7269CBD8B1BA4B9F8456F347E7ACB0BA','???? 1',to_timestamp('02/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),to_timestamp('21/10/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),'209',to_timestamp('04/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),'309','?????? 9',to_timestamp('05/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),'409','?????? ??? 9',to_timestamp('06/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),'???? 9','???? 9','???? 9','???? 9',to_timestamp('07/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),to_timestamp('08/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),to_timestamp('09/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),to_timestamp('10/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),'?? ???? 9','?? ???? 9','?? ???? 9','?? ???? 9',to_timestamp('11/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),to_timestamp('12/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),to_timestamp('13/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),to_timestamp('14/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),to_timestamp('15/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),to_timestamp('16/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),'509',to_timestamp('17/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),to_timestamp('18/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),to_timestamp('19/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),to_timestamp('20/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),to_timestamp('21/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),'convocation 9','convocation 9',to_timestamp('24/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),'convocation 9','convocation 9',to_timestamp('27/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),'Dispositif Decision 9','???? 9',to_timestamp('29/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),to_timestamp('29/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),null,null,'0');
REM INSERTING into SRAIDIHAMZA."DisciplineBudgetaireTemp"
SET DEFINE OFF;
REM INSERTING into SRAIDIHAMZA."__EFMigrationsHistory"
SET DEFINE OFF;
Insert into SRAIDIHAMZA."__EFMigrationsHistory" ("MigrationId","ProductVersion") values ('20241013234924_generate-migration','8.0.8');
REM INSERTING into SRAIDIHAMZA."Permissions"
SET DEFINE OFF;
Insert into SRAIDIHAMZA."Permissions" ("Id","Groupe","Code","Label","Description","IsActive") values ('4C50F32264064E05B716CA1FCE766D5C','Utilisateurs','GetAll','Voir la liste des utilisateurs','Voir la liste des utilisateurs','1');
Insert into SRAIDIHAMZA."Permissions" ("Id","Groupe","Code","Label","Description","IsActive") values ('B89A1A9FB5F74AD9A89077F62A1CCE64','Utilisateurs','GetById','Voir les détails de utilisateur','Voir les détails de utilisateur','1');
Insert into SRAIDIHAMZA."Permissions" ("Id","Groupe","Code","Label","Description","IsActive") values ('738A708402064123AF0A1E2C9191CD92','Utilisateurs','Create','Ajouter un utilisateur','Ajouter un utilisateur','1');
Insert into SRAIDIHAMZA."Permissions" ("Id","Groupe","Code","Label","Description","IsActive") values ('5EF739918EDD407C8695EAC71C04A9CF','Utilisateurs','Update','Modifier un utilisateur','Modifier un utilisateur','1');
Insert into SRAIDIHAMZA."Permissions" ("Id","Groupe","Code","Label","Description","IsActive") values ('C973E8E5458147E88F3E4C77B918A936','Utilisateurs','Delete','Supprimer un utilisateur','Supprimer un utilisateur','1');
Insert into SRAIDIHAMZA."Permissions" ("Id","Groupe","Code","Label","Description","IsActive") values ('A5602B26807B49799D8B742F957DD9EE','Utilisateurs','Exporter','Exporter la liste des utilisateurs','Exporter la liste des utilisateurs','1');
Insert into SRAIDIHAMZA."Permissions" ("Id","Groupe","Code","Label","Description","IsActive") values ('676FD8E34F9D4ED7BCA471E70E228FC1','Utilisateurs','ChangePassword','Modifier le mot de passe','Modifier le mot de passe','1');
Insert into SRAIDIHAMZA."Permissions" ("Id","Groupe","Code","Label","Description","IsActive") values ('BB52A4B6D5A34AC881946A1B21813AB2','Utilisateurs','AddPermissions','Ajouter des permissions','Ajouter des permissions','1');
Insert into SRAIDIHAMZA."Permissions" ("Id","Groupe","Code","Label","Description","IsActive") values ('95741028D53744FAA7E9E70B81881B4D','Utilisateurs','GetPermissions','Voir toutes les permissions','Voir toutes les permissions','1');
Insert into SRAIDIHAMZA."Permissions" ("Id","Groupe","Code","Label","Description","IsActive") values ('4A5568167B644A81BB92B0EA514F0FE7','Utilisateurs','AddRoles','Ajouter des rôles','Ajouter des rôles','1');
Insert into SRAIDIHAMZA."Permissions" ("Id","Groupe","Code","Label","Description","IsActive") values ('5F72C156D4A9446999C1ED63C5730545','Utilisateurs','GetRoles','Voir tous les rôles','Voir tous les rôles','1');
Insert into SRAIDIHAMZA."Permissions" ("Id","Groupe","Code","Label","Description","IsActive") values ('E0403C74269946C7AFAACE35167B2030','Permissions','GetAll','Voir la liste des permissions','Voir la liste des permissions','1');
Insert into SRAIDIHAMZA."Permissions" ("Id","Groupe","Code","Label","Description","IsActive") values ('62B7D027EB39410F98CE9965334EF9E2','Permissions','GetById','Voir les détails de la permission','Voir les détails de la permission','1');
Insert into SRAIDIHAMZA."Permissions" ("Id","Groupe","Code","Label","Description","IsActive") values ('1C0B699E3B91420ABFFB8FEA7E606EAE','Permissions','Create','Ajouter une permission','Ajouter une permission','1');
Insert into SRAIDIHAMZA."Permissions" ("Id","Groupe","Code","Label","Description","IsActive") values ('A10AC04B264E49A0A082823CA229AD3A','Permissions','Update','Modifier une permission','Modifier une permission','1');
Insert into SRAIDIHAMZA."Permissions" ("Id","Groupe","Code","Label","Description","IsActive") values ('28AE80CFEE7F4E2DBAA6650F69AB3D87','Permissions','Delete','Supprimer une permission','Supprimer une permission','1');
Insert into SRAIDIHAMZA."Permissions" ("Id","Groupe","Code","Label","Description","IsActive") values ('D1EB3D08C5C64916A37AA09F14C0A114','Permissions','Exporter','Exporter la liste des permissions','Exporter la liste des permissions','1');
Insert into SRAIDIHAMZA."Permissions" ("Id","Groupe","Code","Label","Description","IsActive") values ('FB3B0635400D463FB47EFD52D992B1C9','Roles','GetAll','Voir la liste des rôles','Voir la liste des rôles','1');
Insert into SRAIDIHAMZA."Permissions" ("Id","Groupe","Code","Label","Description","IsActive") values ('722FB149076D49D5A61724ACCD8BE66F','Roles','GetById','Voir les détails du rôle','Voir les détails du rôle','1');
Insert into SRAIDIHAMZA."Permissions" ("Id","Groupe","Code","Label","Description","IsActive") values ('87F19A8D9CAB47A28E06BD87C0BED8B8','Roles','Create','Ajouter un rôle','Ajouter un rôle','1');
Insert into SRAIDIHAMZA."Permissions" ("Id","Groupe","Code","Label","Description","IsActive") values ('CB38F967744D4E92812ECAFEAC4DE47C','Roles','Update','Modifier un rôle','Modifier un rôle','1');
Insert into SRAIDIHAMZA."Permissions" ("Id","Groupe","Code","Label","Description","IsActive") values ('6B58556D44054D039B192B01F63AAAAF','Roles','Delete','Supprimer un rôle','Supprimer un rôle','1');
Insert into SRAIDIHAMZA."Permissions" ("Id","Groupe","Code","Label","Description","IsActive") values ('2027E53A3B384B848E055C8C71844DE7','Roles','Exporter','Exporter la liste des rôles','Exporter la liste des rôles','1');
Insert into SRAIDIHAMZA."Permissions" ("Id","Groupe","Code","Label","Description","IsActive") values ('3B3A297EF9A24AEBB573A3FC80EF6D10','Roles','AddPermissions','Ajouter des permissions','Ajouter des permissions','1');
Insert into SRAIDIHAMZA."Permissions" ("Id","Groupe","Code","Label","Description","IsActive") values ('A85C32945C2040968B2AA339F0AFA04D','Roles','GetPermissions','Voir toutes les permissions','Voir toutes les permissions','1');
Insert into SRAIDIHAMZA."Permissions" ("Id","Groupe","Code","Label","Description","IsActive") values ('7058ED1F28C1493EB19DB0C71EFDA933','RequeteAppels','GetAll','Voir la liste des requêtes appel','Voir la liste des requêtes appel','1');
Insert into SRAIDIHAMZA."Permissions" ("Id","Groupe","Code","Label","Description","IsActive") values ('EAE74ACADE5E48729708277058B672B2','RequeteAppels','GetById','Voir les détails de la requête appel','Voir les détails de la requête appel','1');
Insert into SRAIDIHAMZA."Permissions" ("Id","Groupe","Code","Label","Description","IsActive") values ('2635F796CA6F44928D714C6F115E1DC5','RequeteAppels','Create','Ajouter une requête appel','Ajouter une requête appel','1');
Insert into SRAIDIHAMZA."Permissions" ("Id","Groupe","Code","Label","Description","IsActive") values ('08B198E8B7CC40E583A4A57EEB4F3B4F','RequeteAppels','Update','Modifier une requête appel','Modifier une requête appel','1');
Insert into SRAIDIHAMZA."Permissions" ("Id","Groupe","Code","Label","Description","IsActive") values ('F84B55C2C36C4872B654B994AC2B1ED7','RequeteAppels','Delete','Supprimer une requête appel','Supprimer une requête appel','1');
Insert into SRAIDIHAMZA."Permissions" ("Id","Groupe","Code","Label","Description","IsActive") values ('705932F023294CD1AE8D552116CFE79F','RequeteAppels','Exporter','Exporter la liste des requêtes appel','Exporter la liste des requêtes appel','1');
Insert into SRAIDIHAMZA."Permissions" ("Id","Groupe","Code","Label","Description","IsActive") values ('DA9348AEABE640478630DF27357E0034','RequeteAppelsImport','Upload','Uploader le fichier des requêtes appel','Uploader le fichier des requêtes appel','1');
Insert into SRAIDIHAMZA."Permissions" ("Id","Groupe","Code","Label","Description","IsActive") values ('AEE03CD677A54DD397E41628B8722773','RequeteAppelsImport','Confirm','Confirmer le fichier des requêtes appel','Confirmer le fichier des requêtes appel','1');
Insert into SRAIDIHAMZA."Permissions" ("Id","Groupe","Code","Label","Description","IsActive") values ('DF6342759B62410989CD959E6A6E247E','RequeteAppelsImport','Exporter','Exporter le fichier avec les erreurs','Exporter le fichier avec les erreurs','1');
Insert into SRAIDIHAMZA."Permissions" ("Id","Groupe","Code","Label","Description","IsActive") values ('53489CFDAC00444B99462D3AD7574F4D','DisciplineBudgetairesImport','Upload','Uploader le fichier de discipline budgétaire','Uploader le fichier de discipline budgétaire','1');
Insert into SRAIDIHAMZA."Permissions" ("Id","Groupe","Code","Label","Description","IsActive") values ('CE7BCD11E98B4D958B9E1E686C3989B3','DisciplineBudgetairesImport','Confirm','Confirmer le fichier de discipline budgétaire','Confirmer le fichier de discipline budgétaire','1');
Insert into SRAIDIHAMZA."Permissions" ("Id","Groupe","Code","Label","Description","IsActive") values ('D16B7DB5318743D0A43C7C0D814BEC60','DisciplineBudgetairesImport','Exporter','Exporter le fichier avec les erreurs','Exporter le fichier avec les erreurs','1');
Insert into SRAIDIHAMZA."Permissions" ("Id","Groupe","Code","Label","Description","IsActive") values ('8646DCB539F04D459EF53C7EBD33BEEC','DisciplineBudgetaires','GetAll','Voir la liste des disciplines budgétaires','Voir la liste des disciplines budgétaires','1');
Insert into SRAIDIHAMZA."Permissions" ("Id","Groupe","Code","Label","Description","IsActive") values ('C522042B63A6453896AAC8B4F1E34341','DisciplineBudgetaires','GetById','Voir les détails de la discipline budgétaire','Voir les détails de la discipline budgétaire','1');
Insert into SRAIDIHAMZA."Permissions" ("Id","Groupe","Code","Label","Description","IsActive") values ('BA1D9AA34AA94D27870C36352A5215EF','DisciplineBudgetaires','Create','Ajouter une discipline budgétaire','Ajouter une discipline budgétaire','1');
Insert into SRAIDIHAMZA."Permissions" ("Id","Groupe","Code","Label","Description","IsActive") values ('B19E3765DAF44891AD78FBA0D517A6CC','DisciplineBudgetaires','Update','Modifier une discipline budgétaire','Modifier une discipline budgétaire','1');
Insert into SRAIDIHAMZA."Permissions" ("Id","Groupe","Code","Label","Description","IsActive") values ('430A6AD4D0304EB5A2CF53F475D1523D','DisciplineBudgetaires','Delete','Supprimer une discipline budgétaire','Supprimer une discipline budgétaire','1');
Insert into SRAIDIHAMZA."Permissions" ("Id","Groupe","Code","Label","Description","IsActive") values ('E8C7ADFF81BA4FD9BEC26FA0F55C7D01','DisciplineBudgetaires','Exporter','Exporter la liste des disciplines budgétaires','Exporter la liste des disciplines budgétaires','1');
Insert into SRAIDIHAMZA."Permissions" ("Id","Groupe","Code","Label","Description","IsActive") values ('C35FC5C5700B4FAAB0B91421D0072778','CRCs','GetAll','Voir la liste des cours régionales des comptes','Voir la liste des cours régionales des comptes','1');
Insert into SRAIDIHAMZA."Permissions" ("Id","Groupe","Code","Label","Description","IsActive") values ('98A3E752E112420683799A8A6F8A95BF','CRCs','GetById','Voir les détails de la cour régionale des comptes','Voir les détails de la cour régionale des comptes','1');
Insert into SRAIDIHAMZA."Permissions" ("Id","Groupe","Code","Label","Description","IsActive") values ('08393F25E2DD44559384A37A15632EDC','CRCs','Create','Ajouter une cour régionale des comptes','Ajouter une cour régionale des comptes','1');
Insert into SRAIDIHAMZA."Permissions" ("Id","Groupe","Code","Label","Description","IsActive") values ('B925F61E32884229B20CBE2CD4CE45A4','CRCs','Update','Modifier une cour régionale des comptes','Modifier une cour régionale des comptes','1');
Insert into SRAIDIHAMZA."Permissions" ("Id","Groupe","Code","Label","Description","IsActive") values ('83551C2AEA3E418BAD2E523EDCBF7CA0','CRCs','Delete','Supprimer une cour régionale des comptes','Supprimer une cour régionale des comptes','1');
Insert into SRAIDIHAMZA."Permissions" ("Id","Groupe","Code","Label","Description","IsActive") values ('6ACF4B877FF4467688B82FC0C2750FAC','CRCs','Exporter','Exporter la liste des cours régionales des comptes','Exporter la liste des cours régionales des comptes','1');
Insert into SRAIDIHAMZA."Permissions" ("Id","Groupe","Code","Label","Description","IsActive") values ('3970D78CF69F44FDAA12B2A2C52F7C3C','TypeGrades','GetAll','Voir la liste des grades','Voir la liste des grades','1');
Insert into SRAIDIHAMZA."Permissions" ("Id","Groupe","Code","Label","Description","IsActive") values ('DE79051CB5544F218E6E56DCA5264EAA','TypeGrades','GetById','Voir les détails du grade','Voir les détails du grade','1');
Insert into SRAIDIHAMZA."Permissions" ("Id","Groupe","Code","Label","Description","IsActive") values ('DE7983642F374ECA95213DC286D55607','TypeGrades','Create','Ajouter un grade','Ajouter un grade','1');
Insert into SRAIDIHAMZA."Permissions" ("Id","Groupe","Code","Label","Description","IsActive") values ('301E7ECC1F4640AA872625F960454CC7','TypeGrades','Update','Modifier un grade','Modifier un grade','1');
Insert into SRAIDIHAMZA."Permissions" ("Id","Groupe","Code","Label","Description","IsActive") values ('9B4AC901CACF48C79445D65FE6D37AB0','TypeGrades','Delete','Supprimer un grade','Supprimer un grade','1');
Insert into SRAIDIHAMZA."Permissions" ("Id","Groupe","Code","Label","Description","IsActive") values ('7E89C59447A84FC9863F4C24DBAC1D6B','TypeGrades','Exporter','Exporter la liste des grades','Exporter la liste des grades','1');
Insert into SRAIDIHAMZA."Permissions" ("Id","Groupe","Code","Label","Description","IsActive") values ('A246EBDC25864DB4A93296D9FF98A8A8','TypeUtilisateurs','GetAll','Voir la liste des types utilisateurs','Voir la liste des types utilisateurs','1');
Insert into SRAIDIHAMZA."Permissions" ("Id","Groupe","Code","Label","Description","IsActive") values ('75F6E174C7534F05B11691CC1ACE929D','TypeUtilisateurs','GetById','Voir les détails du type utilisateur','Voir les détails du type utilisateur','1');
Insert into SRAIDIHAMZA."Permissions" ("Id","Groupe","Code","Label","Description","IsActive") values ('901D0CA89D9D4A16A50DC331CCB5CBF5','TypeUtilisateurs','Create','Ajouter un type utilisateur','Ajouter un type utilisateur','1');
Insert into SRAIDIHAMZA."Permissions" ("Id","Groupe","Code","Label","Description","IsActive") values ('C126162BF7284D0580DBF5F079EE5F30','TypeUtilisateurs','Update','Modifier un type utilisateur','Modifier un type utilisateur','1');
Insert into SRAIDIHAMZA."Permissions" ("Id","Groupe","Code","Label","Description","IsActive") values ('CD5CE011EF054F7E8BBC9851392B162F','TypeUtilisateurs','Delete','Supprimer un type utilisateur','Supprimer un type utilisateur','1');
Insert into SRAIDIHAMZA."Permissions" ("Id","Groupe","Code","Label","Description","IsActive") values ('9B8CD5CC8076405788F73531F9653738','TypeUtilisateurs','Exporter','Exporter la liste des types utilisateurs','Exporter la liste des types utilisateurs','1');
REM INSERTING into SRAIDIHAMZA."RequetesAppel"
SET DEFINE OFF;
Insert into SRAIDIHAMZA."RequetesAppel" ("Id","Numero_Dossier","Appelant","Numero_Jugement_Faisant_Objet_De_Appel","Emis_En_Date_Du","IdCRC","Centre_Comptable","Exercice_fiscal","Date_Enregistrement_Requete_Cour_Regionale_Des_Comptes","Conseiller_Rapporteur","Date_Ordonnance_Designation_Conseiller_Rapporteur","Conseiller_Rapporteur_Remplacant","Date_Ordonnance_Designation_Conseiller_Rapporteur_Remplacant","Date_Demande_Documents_Supplementaires","Date_Envoi_Requete_Parties","Parties_Agent_du_Roi_au_CRC","Parties_Entrepot_Regional","Parties_Travailleur_du_territoire","Parties_President_de_la_Commune","Date_de_reception_par_les_parties_Agent_du_Roi_au_CRC","Date_de_reception_par_les_parties_Entrepot_Regional","Date_de_reception_par_les_parties_Travailleur_du_territoire","Date_de_reception_par_les_parties_President_de_la_Commune","Reponse_au_memoire_d_appel_Agent_du_Roi_au_CRC","Reponse_au_memoire_d_appel_Entrepot_Regional","Reponse_au_memoire_d_appel_Travailleur_du_territoire","Reponse_au_memoire_d_appel_President_de_la_Commune","Date_Preparation_Rapport","Designation_du_Conseiller_Reviseur","Date_Designation_du_Conseiller_Reviseur","Designation_du_Conseiller_Reviseur_Remplacant","Date_Designation_du_Conseiller_Reviseur_Remplacant","Date_de_preparation_de_l_avis_de_l_examinateur","Date_Transmission_Dossier_Ministere_Public","Date_Retour_Dossier_Ministere_Public","Date_Conclusions_Ministere_Public","Numero_Conclusions_Ministere_Public","Date_de_la_session","Dispositif_Decision","Numero_Decision","Date_d_envoi_de_la_decision_pour_notifier_les_parties","Date_de_reception_par_le_comptable_d_une_copie_de_la_decision","UpdatedBy","UpdateTime","IsActive") values ('6197232586804AEEA828F690BE589AC3','3','???? 3','103',to_timestamp('01/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),'F4A916A6A60548C3B28C95D8ABFD5D99','???? 1',to_timestamp('02/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),to_timestamp('02/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),'?????? 3',to_timestamp('05/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),'?????? 3',to_timestamp('06/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),to_timestamp('06/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),to_timestamp('06/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),'???? ????? 3','???? 3','???? 3','???? 3',to_timestamp('07/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),to_timestamp('08/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),to_timestamp('09/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),to_timestamp('10/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),'?? ???? 3','?? ???? 3','?? ???? 3','?? ???? 3',to_timestamp('11/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),'???????? ??????? 3',to_timestamp('13/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),'???????? ??????? ????? 3',to_timestamp('17/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),to_timestamp('18/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),to_timestamp('19/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),to_timestamp('20/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),to_timestamp('21/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),'125',to_timestamp('26/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),'????? ??????  3','2335',to_timestamp('26/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),to_timestamp('27/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),'admin',to_timestamp('21/10/24 21:01:44,346000000','DD/MM/RR HH24:MI:SSXFF'),'1');
Insert into SRAIDIHAMZA."RequetesAppel" ("Id","Numero_Dossier","Appelant","Numero_Jugement_Faisant_Objet_De_Appel","Emis_En_Date_Du","IdCRC","Centre_Comptable","Exercice_fiscal","Date_Enregistrement_Requete_Cour_Regionale_Des_Comptes","Conseiller_Rapporteur","Date_Ordonnance_Designation_Conseiller_Rapporteur","Conseiller_Rapporteur_Remplacant","Date_Ordonnance_Designation_Conseiller_Rapporteur_Remplacant","Date_Demande_Documents_Supplementaires","Date_Envoi_Requete_Parties","Parties_Agent_du_Roi_au_CRC","Parties_Entrepot_Regional","Parties_Travailleur_du_territoire","Parties_President_de_la_Commune","Date_de_reception_par_les_parties_Agent_du_Roi_au_CRC","Date_de_reception_par_les_parties_Entrepot_Regional","Date_de_reception_par_les_parties_Travailleur_du_territoire","Date_de_reception_par_les_parties_President_de_la_Commune","Reponse_au_memoire_d_appel_Agent_du_Roi_au_CRC","Reponse_au_memoire_d_appel_Entrepot_Regional","Reponse_au_memoire_d_appel_Travailleur_du_territoire","Reponse_au_memoire_d_appel_President_de_la_Commune","Date_Preparation_Rapport","Designation_du_Conseiller_Reviseur","Date_Designation_du_Conseiller_Reviseur","Designation_du_Conseiller_Reviseur_Remplacant","Date_Designation_du_Conseiller_Reviseur_Remplacant","Date_de_preparation_de_l_avis_de_l_examinateur","Date_Transmission_Dossier_Ministere_Public","Date_Retour_Dossier_Ministere_Public","Date_Conclusions_Ministere_Public","Numero_Conclusions_Ministere_Public","Date_de_la_session","Dispositif_Decision","Numero_Decision","Date_d_envoi_de_la_decision_pour_notifier_les_parties","Date_de_reception_par_le_comptable_d_une_copie_de_la_decision","UpdatedBy","UpdateTime","IsActive") values ('63B8E8661722499D8ED15FD4F684D58C','4','???? 4','104',to_timestamp('01/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),'F4A916A6A60548C3B28C95D8ABFD5D99','???? 1',to_timestamp('02/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),to_timestamp('02/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),'?????? 4',to_timestamp('05/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),'?????? 4',to_timestamp('06/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),to_timestamp('06/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),to_timestamp('06/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),'???? ????? 4','???? 4','???? 4','???? 4',to_timestamp('07/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),to_timestamp('08/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),to_timestamp('09/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),to_timestamp('10/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),'?? ???? 4','?? ???? 4','?? ???? 4','?? ???? 4',to_timestamp('11/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),'???????? ??????? 4',to_timestamp('13/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),'???????? ??????? ????? 4',to_timestamp('17/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),to_timestamp('18/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),to_timestamp('19/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),to_timestamp('20/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),to_timestamp('21/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),'126',to_timestamp('27/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),'????? ??????  4','2336',to_timestamp('27/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),to_timestamp('27/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),'admin',to_timestamp('21/10/24 21:01:44,346000000','DD/MM/RR HH24:MI:SSXFF'),'1');
Insert into SRAIDIHAMZA."RequetesAppel" ("Id","Numero_Dossier","Appelant","Numero_Jugement_Faisant_Objet_De_Appel","Emis_En_Date_Du","IdCRC","Centre_Comptable","Exercice_fiscal","Date_Enregistrement_Requete_Cour_Regionale_Des_Comptes","Conseiller_Rapporteur","Date_Ordonnance_Designation_Conseiller_Rapporteur","Conseiller_Rapporteur_Remplacant","Date_Ordonnance_Designation_Conseiller_Rapporteur_Remplacant","Date_Demande_Documents_Supplementaires","Date_Envoi_Requete_Parties","Parties_Agent_du_Roi_au_CRC","Parties_Entrepot_Regional","Parties_Travailleur_du_territoire","Parties_President_de_la_Commune","Date_de_reception_par_les_parties_Agent_du_Roi_au_CRC","Date_de_reception_par_les_parties_Entrepot_Regional","Date_de_reception_par_les_parties_Travailleur_du_territoire","Date_de_reception_par_les_parties_President_de_la_Commune","Reponse_au_memoire_d_appel_Agent_du_Roi_au_CRC","Reponse_au_memoire_d_appel_Entrepot_Regional","Reponse_au_memoire_d_appel_Travailleur_du_territoire","Reponse_au_memoire_d_appel_President_de_la_Commune","Date_Preparation_Rapport","Designation_du_Conseiller_Reviseur","Date_Designation_du_Conseiller_Reviseur","Designation_du_Conseiller_Reviseur_Remplacant","Date_Designation_du_Conseiller_Reviseur_Remplacant","Date_de_preparation_de_l_avis_de_l_examinateur","Date_Transmission_Dossier_Ministere_Public","Date_Retour_Dossier_Ministere_Public","Date_Conclusions_Ministere_Public","Numero_Conclusions_Ministere_Public","Date_de_la_session","Dispositif_Decision","Numero_Decision","Date_d_envoi_de_la_decision_pour_notifier_les_parties","Date_de_reception_par_le_comptable_d_une_copie_de_la_decision","UpdatedBy","UpdateTime","IsActive") values ('631E8F5F25DB47BE82FB18418597D5EB','5','???? 5','105',to_timestamp('01/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),'F4A916A6A60548C3B28C95D8ABFD5D99','???? 1',to_timestamp('02/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),to_timestamp('02/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),'?????? 5',to_timestamp('05/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),'?????? 5',to_timestamp('06/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),to_timestamp('06/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),to_timestamp('06/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),'???? ????? 5','???? 5','???? 5','???? 5',to_timestamp('07/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),to_timestamp('08/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),to_timestamp('09/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),to_timestamp('10/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),'?? ???? 5','?? ???? 5','?? ???? 5','?? ???? 5',to_timestamp('11/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),'???????? ??????? 5',to_timestamp('13/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),'???????? ??????? ????? 5',to_timestamp('17/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),to_timestamp('18/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),to_timestamp('19/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),to_timestamp('20/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),to_timestamp('21/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),'127',to_timestamp('28/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),'????? ??????  5','2337',to_timestamp('28/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),to_timestamp('27/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),'admin',to_timestamp('21/10/24 21:01:44,346000000','DD/MM/RR HH24:MI:SSXFF'),'1');
Insert into SRAIDIHAMZA."RequetesAppel" ("Id","Numero_Dossier","Appelant","Numero_Jugement_Faisant_Objet_De_Appel","Emis_En_Date_Du","IdCRC","Centre_Comptable","Exercice_fiscal","Date_Enregistrement_Requete_Cour_Regionale_Des_Comptes","Conseiller_Rapporteur","Date_Ordonnance_Designation_Conseiller_Rapporteur","Conseiller_Rapporteur_Remplacant","Date_Ordonnance_Designation_Conseiller_Rapporteur_Remplacant","Date_Demande_Documents_Supplementaires","Date_Envoi_Requete_Parties","Parties_Agent_du_Roi_au_CRC","Parties_Entrepot_Regional","Parties_Travailleur_du_territoire","Parties_President_de_la_Commune","Date_de_reception_par_les_parties_Agent_du_Roi_au_CRC","Date_de_reception_par_les_parties_Entrepot_Regional","Date_de_reception_par_les_parties_Travailleur_du_territoire","Date_de_reception_par_les_parties_President_de_la_Commune","Reponse_au_memoire_d_appel_Agent_du_Roi_au_CRC","Reponse_au_memoire_d_appel_Entrepot_Regional","Reponse_au_memoire_d_appel_Travailleur_du_territoire","Reponse_au_memoire_d_appel_President_de_la_Commune","Date_Preparation_Rapport","Designation_du_Conseiller_Reviseur","Date_Designation_du_Conseiller_Reviseur","Designation_du_Conseiller_Reviseur_Remplacant","Date_Designation_du_Conseiller_Reviseur_Remplacant","Date_de_preparation_de_l_avis_de_l_examinateur","Date_Transmission_Dossier_Ministere_Public","Date_Retour_Dossier_Ministere_Public","Date_Conclusions_Ministere_Public","Numero_Conclusions_Ministere_Public","Date_de_la_session","Dispositif_Decision","Numero_Decision","Date_d_envoi_de_la_decision_pour_notifier_les_parties","Date_de_reception_par_le_comptable_d_une_copie_de_la_decision","UpdatedBy","UpdateTime","IsActive") values ('90B5CA0771704841BB4CA52ABA3C99B4','6','???? 6','106',to_timestamp('01/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),'F4A916A6A60548C3B28C95D8ABFD5D99','???? 1',to_timestamp('02/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),to_timestamp('02/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),'?????? 6',to_timestamp('05/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),'?????? 6',to_timestamp('06/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),to_timestamp('06/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),to_timestamp('06/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),'???? ????? 6','???? 6','???? 6','???? 6',to_timestamp('07/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),to_timestamp('08/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),to_timestamp('09/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),to_timestamp('10/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),'?? ???? 6','?? ???? 6','?? ???? 6','?? ???? 6',to_timestamp('11/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),'???????? ??????? 6',to_timestamp('13/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),'???????? ??????? ????? 6',to_timestamp('17/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),to_timestamp('18/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),to_timestamp('19/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),to_timestamp('20/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),to_timestamp('21/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),'128',to_timestamp('28/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),'????? ??????  6','2338',to_timestamp('29/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),to_timestamp('27/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),'admin',to_timestamp('21/10/24 21:01:44,346000000','DD/MM/RR HH24:MI:SSXFF'),'1');
Insert into SRAIDIHAMZA."RequetesAppel" ("Id","Numero_Dossier","Appelant","Numero_Jugement_Faisant_Objet_De_Appel","Emis_En_Date_Du","IdCRC","Centre_Comptable","Exercice_fiscal","Date_Enregistrement_Requete_Cour_Regionale_Des_Comptes","Conseiller_Rapporteur","Date_Ordonnance_Designation_Conseiller_Rapporteur","Conseiller_Rapporteur_Remplacant","Date_Ordonnance_Designation_Conseiller_Rapporteur_Remplacant","Date_Demande_Documents_Supplementaires","Date_Envoi_Requete_Parties","Parties_Agent_du_Roi_au_CRC","Parties_Entrepot_Regional","Parties_Travailleur_du_territoire","Parties_President_de_la_Commune","Date_de_reception_par_les_parties_Agent_du_Roi_au_CRC","Date_de_reception_par_les_parties_Entrepot_Regional","Date_de_reception_par_les_parties_Travailleur_du_territoire","Date_de_reception_par_les_parties_President_de_la_Commune","Reponse_au_memoire_d_appel_Agent_du_Roi_au_CRC","Reponse_au_memoire_d_appel_Entrepot_Regional","Reponse_au_memoire_d_appel_Travailleur_du_territoire","Reponse_au_memoire_d_appel_President_de_la_Commune","Date_Preparation_Rapport","Designation_du_Conseiller_Reviseur","Date_Designation_du_Conseiller_Reviseur","Designation_du_Conseiller_Reviseur_Remplacant","Date_Designation_du_Conseiller_Reviseur_Remplacant","Date_de_preparation_de_l_avis_de_l_examinateur","Date_Transmission_Dossier_Ministere_Public","Date_Retour_Dossier_Ministere_Public","Date_Conclusions_Ministere_Public","Numero_Conclusions_Ministere_Public","Date_de_la_session","Dispositif_Decision","Numero_Decision","Date_d_envoi_de_la_decision_pour_notifier_les_parties","Date_de_reception_par_le_comptable_d_une_copie_de_la_decision","UpdatedBy","UpdateTime","IsActive") values ('A918B0BF2A324E83B82F77CB59B5817D','2','???? 2','102',to_timestamp('01/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),'7269CBD8B1BA4B9F8456F347E7ACB0BA','???? 1',to_timestamp('02/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),to_timestamp('02/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),'?????? 2',to_timestamp('05/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),'?????? 2',to_timestamp('06/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),to_timestamp('06/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),to_timestamp('06/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),'???? ????? 2','???? 2','???? 2','???? 2',to_timestamp('07/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),to_timestamp('08/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),to_timestamp('09/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),to_timestamp('10/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),'?? ???? 2','?? ???? 2','?? ???? 2','?? ???? 2',to_timestamp('11/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),'???????? ??????? 2',to_timestamp('13/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),'???????? ??????? ????? 2',to_timestamp('17/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),to_timestamp('18/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),to_timestamp('19/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),to_timestamp('20/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),to_timestamp('21/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),'124',to_timestamp('25/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),'????? ??????  2','2334',to_timestamp('25/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),to_timestamp('27/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),'admin',to_timestamp('21/10/24 21:01:44,346000000','DD/MM/RR HH24:MI:SSXFF'),'1');
Insert into SRAIDIHAMZA."RequetesAppel" ("Id","Numero_Dossier","Appelant","Numero_Jugement_Faisant_Objet_De_Appel","Emis_En_Date_Du","IdCRC","Centre_Comptable","Exercice_fiscal","Date_Enregistrement_Requete_Cour_Regionale_Des_Comptes","Conseiller_Rapporteur","Date_Ordonnance_Designation_Conseiller_Rapporteur","Conseiller_Rapporteur_Remplacant","Date_Ordonnance_Designation_Conseiller_Rapporteur_Remplacant","Date_Demande_Documents_Supplementaires","Date_Envoi_Requete_Parties","Parties_Agent_du_Roi_au_CRC","Parties_Entrepot_Regional","Parties_Travailleur_du_territoire","Parties_President_de_la_Commune","Date_de_reception_par_les_parties_Agent_du_Roi_au_CRC","Date_de_reception_par_les_parties_Entrepot_Regional","Date_de_reception_par_les_parties_Travailleur_du_territoire","Date_de_reception_par_les_parties_President_de_la_Commune","Reponse_au_memoire_d_appel_Agent_du_Roi_au_CRC","Reponse_au_memoire_d_appel_Entrepot_Regional","Reponse_au_memoire_d_appel_Travailleur_du_territoire","Reponse_au_memoire_d_appel_President_de_la_Commune","Date_Preparation_Rapport","Designation_du_Conseiller_Reviseur","Date_Designation_du_Conseiller_Reviseur","Designation_du_Conseiller_Reviseur_Remplacant","Date_Designation_du_Conseiller_Reviseur_Remplacant","Date_de_preparation_de_l_avis_de_l_examinateur","Date_Transmission_Dossier_Ministere_Public","Date_Retour_Dossier_Ministere_Public","Date_Conclusions_Ministere_Public","Numero_Conclusions_Ministere_Public","Date_de_la_session","Dispositif_Decision","Numero_Decision","Date_d_envoi_de_la_decision_pour_notifier_les_parties","Date_de_reception_par_le_comptable_d_une_copie_de_la_decision","UpdatedBy","UpdateTime","IsActive") values ('92439AFD57A1446590485422AA260A71','7','???? 7','107',to_timestamp('01/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),'7269CBD8B1BA4B9F8456F347E7ACB0BA','???? 1',to_timestamp('21/10/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),to_timestamp('02/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),'?????? 7',to_timestamp('05/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),'?????? 7',to_timestamp('06/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),to_timestamp('06/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),to_timestamp('06/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),'???? ????? 7','???? 7','???? 7','???? 7',to_timestamp('07/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),to_timestamp('08/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),to_timestamp('09/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),to_timestamp('10/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),'?? ???? 7','?? ???? 7','?? ???? 7','?? ???? 7',to_timestamp('11/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),'???????? ??????? 7',to_timestamp('13/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),'???????? ??????? ????? 7',to_timestamp('17/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),to_timestamp('18/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),to_timestamp('19/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),to_timestamp('20/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),to_timestamp('21/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),'129',to_timestamp('28/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),'????? ??????  7','2339',to_timestamp('29/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),to_timestamp('27/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),'admin',to_timestamp('21/10/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),'1');
Insert into SRAIDIHAMZA."RequetesAppel" ("Id","Numero_Dossier","Appelant","Numero_Jugement_Faisant_Objet_De_Appel","Emis_En_Date_Du","IdCRC","Centre_Comptable","Exercice_fiscal","Date_Enregistrement_Requete_Cour_Regionale_Des_Comptes","Conseiller_Rapporteur","Date_Ordonnance_Designation_Conseiller_Rapporteur","Conseiller_Rapporteur_Remplacant","Date_Ordonnance_Designation_Conseiller_Rapporteur_Remplacant","Date_Demande_Documents_Supplementaires","Date_Envoi_Requete_Parties","Parties_Agent_du_Roi_au_CRC","Parties_Entrepot_Regional","Parties_Travailleur_du_territoire","Parties_President_de_la_Commune","Date_de_reception_par_les_parties_Agent_du_Roi_au_CRC","Date_de_reception_par_les_parties_Entrepot_Regional","Date_de_reception_par_les_parties_Travailleur_du_territoire","Date_de_reception_par_les_parties_President_de_la_Commune","Reponse_au_memoire_d_appel_Agent_du_Roi_au_CRC","Reponse_au_memoire_d_appel_Entrepot_Regional","Reponse_au_memoire_d_appel_Travailleur_du_territoire","Reponse_au_memoire_d_appel_President_de_la_Commune","Date_Preparation_Rapport","Designation_du_Conseiller_Reviseur","Date_Designation_du_Conseiller_Reviseur","Designation_du_Conseiller_Reviseur_Remplacant","Date_Designation_du_Conseiller_Reviseur_Remplacant","Date_de_preparation_de_l_avis_de_l_examinateur","Date_Transmission_Dossier_Ministere_Public","Date_Retour_Dossier_Ministere_Public","Date_Conclusions_Ministere_Public","Numero_Conclusions_Ministere_Public","Date_de_la_session","Dispositif_Decision","Numero_Decision","Date_d_envoi_de_la_decision_pour_notifier_les_parties","Date_de_reception_par_le_comptable_d_une_copie_de_la_decision","UpdatedBy","UpdateTime","IsActive") values ('5B3F72EA7FB34A22B2AF0CAAE70FA940','10','???? 10','110',to_timestamp('01/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),'733141D99A1E47A79B850BDF6780C4A0','???? 1',to_timestamp('02/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),to_timestamp('02/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),'?????? 10',to_timestamp('05/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),'?????? 10',to_timestamp('06/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),to_timestamp('06/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),to_timestamp('06/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),'???? ????? 10','???? 10','???? 10','???? 10',to_timestamp('07/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),to_timestamp('08/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),to_timestamp('09/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),to_timestamp('10/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),'?? ???? 10','?? ???? 10','?? ???? 10','?? ???? 10',to_timestamp('11/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),'???????? ??????? 10',to_timestamp('13/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),'???????? ??????? ????? 10',to_timestamp('17/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),to_timestamp('18/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),to_timestamp('19/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),to_timestamp('20/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),to_timestamp('21/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),'132',to_timestamp('28/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),'????? ??????  10','2342',to_timestamp('29/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),to_timestamp('27/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),'admin',to_timestamp('21/10/24 21:01:44,346000000','DD/MM/RR HH24:MI:SSXFF'),'1');
Insert into SRAIDIHAMZA."RequetesAppel" ("Id","Numero_Dossier","Appelant","Numero_Jugement_Faisant_Objet_De_Appel","Emis_En_Date_Du","IdCRC","Centre_Comptable","Exercice_fiscal","Date_Enregistrement_Requete_Cour_Regionale_Des_Comptes","Conseiller_Rapporteur","Date_Ordonnance_Designation_Conseiller_Rapporteur","Conseiller_Rapporteur_Remplacant","Date_Ordonnance_Designation_Conseiller_Rapporteur_Remplacant","Date_Demande_Documents_Supplementaires","Date_Envoi_Requete_Parties","Parties_Agent_du_Roi_au_CRC","Parties_Entrepot_Regional","Parties_Travailleur_du_territoire","Parties_President_de_la_Commune","Date_de_reception_par_les_parties_Agent_du_Roi_au_CRC","Date_de_reception_par_les_parties_Entrepot_Regional","Date_de_reception_par_les_parties_Travailleur_du_territoire","Date_de_reception_par_les_parties_President_de_la_Commune","Reponse_au_memoire_d_appel_Agent_du_Roi_au_CRC","Reponse_au_memoire_d_appel_Entrepot_Regional","Reponse_au_memoire_d_appel_Travailleur_du_territoire","Reponse_au_memoire_d_appel_President_de_la_Commune","Date_Preparation_Rapport","Designation_du_Conseiller_Reviseur","Date_Designation_du_Conseiller_Reviseur","Designation_du_Conseiller_Reviseur_Remplacant","Date_Designation_du_Conseiller_Reviseur_Remplacant","Date_de_preparation_de_l_avis_de_l_examinateur","Date_Transmission_Dossier_Ministere_Public","Date_Retour_Dossier_Ministere_Public","Date_Conclusions_Ministere_Public","Numero_Conclusions_Ministere_Public","Date_de_la_session","Dispositif_Decision","Numero_Decision","Date_d_envoi_de_la_decision_pour_notifier_les_parties","Date_de_reception_par_le_comptable_d_une_copie_de_la_decision","UpdatedBy","UpdateTime","IsActive") values ('7A8E1D34ADB042A6BAAC7085762A85DF','8','???? 8','108',to_timestamp('21/10/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),'733141D99A1E47A79B850BDF6780C4A0','???? 1',to_timestamp('02/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),to_timestamp('02/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),'?????? 8',to_timestamp('05/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),'?????? 8',to_timestamp('06/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),to_timestamp('06/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),to_timestamp('06/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),'???? ????? 8','???? 8','???? 8','???? 8',to_timestamp('07/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),to_timestamp('08/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),to_timestamp('09/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),to_timestamp('10/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),'?? ???? 8','?? ???? 8','?? ???? 8','?? ???? 8',to_timestamp('11/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),'???????? ??????? 8',to_timestamp('13/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),'???????? ??????? ????? 8',to_timestamp('17/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),to_timestamp('18/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),to_timestamp('19/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),to_timestamp('20/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),to_timestamp('21/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),'130',to_timestamp('28/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),'????? ??????  8','2340',to_timestamp('29/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),to_timestamp('27/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),'admin',to_timestamp('21/10/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),'1');
Insert into SRAIDIHAMZA."RequetesAppel" ("Id","Numero_Dossier","Appelant","Numero_Jugement_Faisant_Objet_De_Appel","Emis_En_Date_Du","IdCRC","Centre_Comptable","Exercice_fiscal","Date_Enregistrement_Requete_Cour_Regionale_Des_Comptes","Conseiller_Rapporteur","Date_Ordonnance_Designation_Conseiller_Rapporteur","Conseiller_Rapporteur_Remplacant","Date_Ordonnance_Designation_Conseiller_Rapporteur_Remplacant","Date_Demande_Documents_Supplementaires","Date_Envoi_Requete_Parties","Parties_Agent_du_Roi_au_CRC","Parties_Entrepot_Regional","Parties_Travailleur_du_territoire","Parties_President_de_la_Commune","Date_de_reception_par_les_parties_Agent_du_Roi_au_CRC","Date_de_reception_par_les_parties_Entrepot_Regional","Date_de_reception_par_les_parties_Travailleur_du_territoire","Date_de_reception_par_les_parties_President_de_la_Commune","Reponse_au_memoire_d_appel_Agent_du_Roi_au_CRC","Reponse_au_memoire_d_appel_Entrepot_Regional","Reponse_au_memoire_d_appel_Travailleur_du_territoire","Reponse_au_memoire_d_appel_President_de_la_Commune","Date_Preparation_Rapport","Designation_du_Conseiller_Reviseur","Date_Designation_du_Conseiller_Reviseur","Designation_du_Conseiller_Reviseur_Remplacant","Date_Designation_du_Conseiller_Reviseur_Remplacant","Date_de_preparation_de_l_avis_de_l_examinateur","Date_Transmission_Dossier_Ministere_Public","Date_Retour_Dossier_Ministere_Public","Date_Conclusions_Ministere_Public","Numero_Conclusions_Ministere_Public","Date_de_la_session","Dispositif_Decision","Numero_Decision","Date_d_envoi_de_la_decision_pour_notifier_les_parties","Date_de_reception_par_le_comptable_d_une_copie_de_la_decision","UpdatedBy","UpdateTime","IsActive") values ('8FD2B6399F7345FDA8B803B0A098B1E5','1','???? 1','101',to_timestamp('01/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),'7269CBD8B1BA4B9F8456F347E7ACB0BA','???? 1',to_timestamp('02/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),to_timestamp('02/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),'?????? 1',to_timestamp('05/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),'?????? 1',to_timestamp('06/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),to_timestamp('06/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),to_timestamp('06/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),'???? ????? 1','???? 1','???? 1','???? 1',to_timestamp('07/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),to_timestamp('08/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),to_timestamp('09/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),to_timestamp('10/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),'?? ???? 1','?? ???? 1','?? ???? 1','?? ???? 1',to_timestamp('11/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),'???????? ??????? 1 ',to_timestamp('13/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),'???????? ??????? ????? 1',to_timestamp('17/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),to_timestamp('18/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),to_timestamp('19/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),to_timestamp('20/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),to_timestamp('21/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),'123',to_timestamp('24/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),'????? ??????  1','2333',to_timestamp('24/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),to_timestamp('27/09/24 00:00:00,000000000','DD/MM/RR HH24:MI:SSXFF'),'admin',to_timestamp('21/10/24 21:01:44,346000000','DD/MM/RR HH24:MI:SSXFF'),'1');
REM INSERTING into SRAIDIHAMZA."RequetesAppelTemp"
SET DEFINE OFF;
REM INSERTING into SRAIDIHAMZA."RolePermissions"
SET DEFINE OFF;
REM INSERTING into SRAIDIHAMZA."Roles"
SET DEFINE OFF;
Insert into SRAIDIHAMZA."Roles" ("Id","Code","Label","Description","IsActive") values ('88011E0846EE4DB0812723A9FB2F99BE','Admin','Admin',null,'1');
Insert into SRAIDIHAMZA."Roles" ("Id","Code","Label","Description","IsActive") values ('EF874E27B31749EA90171B85ED8B22E1','Utilisateur','Utilisateur',null,'1');
REM INSERTING into SRAIDIHAMZA."TypeGrades"
SET DEFINE OFF;
Insert into SRAIDIHAMZA."TypeGrades" ("Id","Code","Label","Description","IsActive") values ('F66923CA20634B83AFFA42753B243383',null,'Grade 1',null,'1');
Insert into SRAIDIHAMZA."TypeGrades" ("Id","Code","Label","Description","IsActive") values ('B73C227BADEB44258E5DFD17FC397D2C',null,'Grade 2',null,'1');
REM INSERTING into SRAIDIHAMZA."TypeUtilisateurs"
SET DEFINE OFF;
Insert into SRAIDIHAMZA."TypeUtilisateurs" ("Id","Code","Label","Description","IsActive") values ('F7B6C052E2154C14AA3EA0E2FEA5E1D8',null,'Utilisateur 1',null,'1');
Insert into SRAIDIHAMZA."TypeUtilisateurs" ("Id","Code","Label","Description","IsActive") values ('DC8AA89FEE7F42C3B87B40D3567C64A0',null,'Utilisateur 2',null,'1');
REM INSERTING into SRAIDIHAMZA."UtilisateurLoggings"
SET DEFINE OFF;
REM INSERTING into SRAIDIHAMZA."UtilisateurPermissions"
SET DEFINE OFF;
REM INSERTING into SRAIDIHAMZA."UtilisateurRoles"
SET DEFINE OFF;
REM INSERTING into SRAIDIHAMZA."Utilisateurs"
SET DEFINE OFF;
Insert into SRAIDIHAMZA."Utilisateurs" ("Id","Nom","Prenom","NomArabe","PrenomArabe","Email","Login","Password","TypeUtilisateurId","TypeGradeId","UpdatedBy","UpdateTime","IsActive") values ('85ECDF94C52343CCB129C3798CAE1B7C','system','administrateur',null,null,'admin@courdescomptes.ma','admin','17-D9-B7-C0-6B-78-58-19-82-0C-F0-F4-98-F2-0C-DF','F7B6C052E2154C14AA3EA0E2FEA5E1D8','F66923CA20634B83AFFA42753B243383','admin',null,'1');
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
--  DDL for Index PK_RequetesAppelTemp
--------------------------------------------------------

  CREATE UNIQUE INDEX "SRAIDIHAMZA"."PK_RequetesAppelTemp" ON "SRAIDIHAMZA"."RequetesAppelTemp" ("Id") 
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
--  DDL for Index IX_RequetesAppel_IdCRC
--------------------------------------------------------

  CREATE INDEX "SRAIDIHAMZA"."IX_RequetesAppel_IdCRC" ON "SRAIDIHAMZA"."RequetesAppel" ("IdCRC") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
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
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
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
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
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
--  DDL for Index IX_UtilisateurPermissions_PermissionId
--------------------------------------------------------

  CREATE INDEX "SRAIDIHAMZA"."IX_UtilisateurPermissions_PermissionId" ON "SRAIDIHAMZA"."UtilisateurPermissions" ("PermissionId") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
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
      TO_DATE(dbt."Exercice_fiscal", 'YYYY-MM-DD'), 
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

  ALTER TABLE "SRAIDIHAMZA"."TypeUtilisateurs" MODIFY ("Label" NOT NULL ENABLE);
  ALTER TABLE "SRAIDIHAMZA"."TypeUtilisateurs" MODIFY ("IsActive" NOT NULL ENABLE);
  ALTER TABLE "SRAIDIHAMZA"."TypeUtilisateurs" ADD CONSTRAINT "PK_TypeUtilisateurs" PRIMARY KEY ("Id")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "SRAIDIHAMZA"."TypeUtilisateurs" MODIFY ("Id" NOT NULL ENABLE);
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
