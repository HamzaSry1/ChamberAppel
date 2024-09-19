--------------------------------------------------------
--  Fichier créé - jeudi-septembre-19-2024   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table ChamberAppelDisciplineBudgetaires
--------------------------------------------------------

  CREATE TABLE "SRAIDIHAMZA"."ChamberAppelDisciplineBudgetaires" 
   (	"Id" RAW(16), 
	"Numero_de_dossier" NVARCHAR2(2000), 
	"Appelant" NVARCHAR2(2000), 
	"Numero_de_verdict_appelant" NVARCHAR2(2000), 
	"Publie_le" TIMESTAMP (7), 
	"A_propos_du_CRC_de_la_region" NVARCHAR2(2000), 
	"Centre_comptable" NVARCHAR2(2000), 
	"Date_enregistrement_de_la_requete_aupres_du_CRC" TIMESTAMP (7), 
	"Date_et_numero_de_la_requete_du_ministere_public" NVARCHAR2(2000), 
	"Date_et_numero_de_ordre_de_nomination_du_conseiller_programme" NVARCHAR2(2000), 
	"Conseiller_rapporteur" NVARCHAR2(2000), 
	"Date_et_numero_de_arrete_designant_le_rapporteur_successeur" NVARCHAR2(2000), 
	"Conseiller_rapporteur_successeur" NVARCHAR2(2000), 
	"La_date_a_laquelle_la_petition_a_ete_envoyee_aux_parties" NVARCHAR2(2000), 
	"Parties" NVARCHAR2(2000), 
	"Date_de_demande_de_documents_complementaires" TIMESTAMP (7), 
	"La_date_a_laquelle_observateur_a_ete_convoque_a_audience" TIMESTAMP (7), 
	"Date_de_realisation_de_la_recherche_sur_le_terrain" TIMESTAMP (7), 
	"Date_a_laquelle_le_rapport_a_ete_prepare" TIMESTAMP (7), 
	"La_date_a_laquelle_le_dossier_a_ete_transmis_au_ministere_public" TIMESTAMP (7), 
	"Date_et_numero_des_conclusions_du_ministere_public" NVARCHAR2(2000), 
	"Date_et_numero_des_conclusions_du_parquet" NVARCHAR2(2000), 
	"Date_a_laquelle_le_suiveur_a_reçu_la_convocation_pour_inspection" TIMESTAMP (7), 
	"Date_a_laquelle_avocat_a_recu_la_convocation_pour_inspection" TIMESTAMP (7), 
	"Date_a_laquelle_le_suiveur_a_ete_informe" TIMESTAMP (7), 
	"Date_a_laquelle_avocat_a_ete_informe" TIMESTAMP (7), 
	"Date_a_laquelle_le_dossier_a_ete_renvoye_par_le_bureau_central_de_contrôle" TIMESTAMP (7), 
	"Convoquer_observateur_et_avocat_pour_assister_a_audience_de_determination_de_la_peine" NVARCHAR2(2000), 
	"Date_audience_du_jugement" TIMESTAMP (7), 
	"Date_de_audience_de_determination_de_la_peine" TIMESTAMP (7), 
	"Operateur_de_decision" NVARCHAR2(2000), 
	"Numero_de_resolution" NVARCHAR2(2000), 
	"La_date_a_laquelle_la_decision_a_ete_envoyee_pour_notification_aux_parties" TIMESTAMP (7), 
	"La_date_a_laquelle_le_comptable_a_reçu_une_copie_de_la_decision" TIMESTAMP (7)
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
	"Code" NVARCHAR2(20), 
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
--  DDL for Table PersonnePhysiques
--------------------------------------------------------

  CREATE TABLE "SRAIDIHAMZA"."PersonnePhysiques" 
   (	"Id" RAW(16), 
	"Nom" NVARCHAR2(20), 
	"Prenom" NVARCHAR2(20), 
	"NomArabe" NVARCHAR2(20), 
	"PrenomArabe" NVARCHAR2(20), 
	"Email" NVARCHAR2(80), 
	"UpdatedBy" NVARCHAR2(10), 
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
	"Code" NVARCHAR2(20), 
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
--  DDL for Table UtilisateurLogs
--------------------------------------------------------

  CREATE TABLE "SRAIDIHAMZA"."UtilisateurLogs" 
   (	"Id" RAW(16), 
	"UtilisateurId" RAW(16), 
	"Action" NVARCHAR2(255), 
	"Timestamp" TIMESTAMP (7), 
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
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table UtilisateurRoles
--------------------------------------------------------

  CREATE TABLE "SRAIDIHAMZA"."UtilisateurRoles" 
   (	"Id" RAW(16), 
	"UtilisateurId" RAW(16), 
	"RoleId" RAW(16)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table Utilisateurs
--------------------------------------------------------

  CREATE TABLE "SRAIDIHAMZA"."Utilisateurs" 
   (	"Id" RAW(16), 
	"PersonnePhysiqueId" RAW(16), 
	"Login" NVARCHAR2(50), 
	"Password" NVARCHAR2(50)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
REM INSERTING into SRAIDIHAMZA."ChamberAppelDisciplineBudgetaires"
SET DEFINE OFF;
REM INSERTING into SRAIDIHAMZA."__EFMigrationsHistory"
SET DEFINE OFF;
Insert into SRAIDIHAMZA."__EFMigrationsHistory" ("MigrationId","ProductVersion") values ('20240918231017_RemovePropertyfromUtilisateurTable','8.0.8');
Insert into SRAIDIHAMZA."__EFMigrationsHistory" ("MigrationId","ProductVersion") values ('20240918231457_RemovePropertyfromUtilisateurTable-2','8.0.8');
Insert into SRAIDIHAMZA."__EFMigrationsHistory" ("MigrationId","ProductVersion") values ('20240918232402_ReWriteUtilisateurTable','8.0.8');
Insert into SRAIDIHAMZA."__EFMigrationsHistory" ("MigrationId","ProductVersion") values ('20240915123751_Initail-Migration','8.0.8');
REM INSERTING into SRAIDIHAMZA."Permissions"
SET DEFINE OFF;
Insert into SRAIDIHAMZA."Permissions" ("Id","Groupe","Code","Label","Description","IsActive") values ('E64C8DADD3A940C4A4F9C5399D5684E5','Permissions','GetById','PermissionsGetById',null,'1');
Insert into SRAIDIHAMZA."Permissions" ("Id","Groupe","Code","Label","Description","IsActive") values ('4C0E8DF618D14EC9B32344BAA685D082','Permissions','GetAll','PermissionsGetAll',null,'1');
Insert into SRAIDIHAMZA."Permissions" ("Id","Groupe","Code","Label","Description","IsActive") values ('0F3FDD8BBE254A74868E7FE358BEA712','Permissions','Update','PermissionsUpdate',null,'1');
Insert into SRAIDIHAMZA."Permissions" ("Id","Groupe","Code","Label","Description","IsActive") values ('E735B67EA07B4219BD0892EDC8DFDEBA','Permissions','Delete','PermissionsDelete',null,'1');
Insert into SRAIDIHAMZA."Permissions" ("Id","Groupe","Code","Label","Description","IsActive") values ('CA2FE5B01CF6425092C23E5C0482E1E2','Permissions','Create','PermissionsCreate',null,'1');
Insert into SRAIDIHAMZA."Permissions" ("Id","Groupe","Code","Label","Description","IsActive") values ('DF82C68CC9BE422DA33B1447E5E4312F','Permissions','Exporter','PermissionsExporter',null,'1');
Insert into SRAIDIHAMZA."Permissions" ("Id","Groupe","Code","Label","Description","IsActive") values ('5B8BB988013C46BEBD0F3A62545074AB','Roles','GetById','RolesGetById',null,'1');
Insert into SRAIDIHAMZA."Permissions" ("Id","Groupe","Code","Label","Description","IsActive") values ('D4356B3F101D4CEBB58970D6AD04FBE5','Roles','GetAll','RolesGetAll',null,'1');
Insert into SRAIDIHAMZA."Permissions" ("Id","Groupe","Code","Label","Description","IsActive") values ('0E7ADC84E5B045159E37EC543FC84226','Roles','Update','RolesUpdate',null,'1');
Insert into SRAIDIHAMZA."Permissions" ("Id","Groupe","Code","Label","Description","IsActive") values ('73A14A18B0084FC5ACF66E3DD50DB120','Roles','Delete','RolesDelete',null,'1');
Insert into SRAIDIHAMZA."Permissions" ("Id","Groupe","Code","Label","Description","IsActive") values ('4C4FFF0318E54FA1B7073DE5BD87614D','Roles','Create','RolesCreate',null,'1');
Insert into SRAIDIHAMZA."Permissions" ("Id","Groupe","Code","Label","Description","IsActive") values ('CDCF72EDB3AF4EE793A11510603888AD','Roles','AddPermissions','RolesAddPermissions',null,'1');
Insert into SRAIDIHAMZA."Permissions" ("Id","Groupe","Code","Label","Description","IsActive") values ('03D36DCF3BFE402884EC8DE29ADD5A17','Roles','GetPermissions','RolesGetPermissions',null,'1');
Insert into SRAIDIHAMZA."Permissions" ("Id","Groupe","Code","Label","Description","IsActive") values ('ABA32F57432941378EF2320ABA62B7D1','Roles','Exporter','RolesExporter',null,'1');
Insert into SRAIDIHAMZA."Permissions" ("Id","Groupe","Code","Label","Description","IsActive") values ('74FD16DCE26D4DC1BA6FB6D4A19792F2','PersonnePhysique','Create','PersonnePhysiqueCreate',null,'1');
Insert into SRAIDIHAMZA."Permissions" ("Id","Groupe","Code","Label","Description","IsActive") values ('C3215D0FCA314F5BABA952CD84769D24','PersonnePhysique','Delete','PersonnePhysiqueDelete',null,'1');
Insert into SRAIDIHAMZA."Permissions" ("Id","Groupe","Code","Label","Description","IsActive") values ('40C8C39DC1FC44F5B384FA143CDDC1C4','PersonnePhysique','GetById','PersonnePhysiqueGetById',null,'1');
Insert into SRAIDIHAMZA."Permissions" ("Id","Groupe","Code","Label","Description","IsActive") values ('863C94595A8E4BD290296CF8E12613C5','PersonnePhysique','GetAll','PersonnePhysiqueGetAll',null,'1');
Insert into SRAIDIHAMZA."Permissions" ("Id","Groupe","Code","Label","Description","IsActive") values ('F4615909561241D6ADFAD99233E7159B','PersonnePhysique','Update','PersonnePhysiqueUpdate',null,'1');
Insert into SRAIDIHAMZA."Permissions" ("Id","Groupe","Code","Label","Description","IsActive") values ('388327DBAAA44BC0AA5FE4E055581171','PersonnePhysique','Exporter','PersonnePhysiqueExporter',null,'1');
Insert into SRAIDIHAMZA."Permissions" ("Id","Groupe","Code","Label","Description","IsActive") values ('DB7396CAC0BE4F269B6AE15E8150A460','Utilisateurs','AddPermissions','UtilisateursAddPermissions',null,'1');
Insert into SRAIDIHAMZA."Permissions" ("Id","Groupe","Code","Label","Description","IsActive") values ('D36A12D6D9C04462B4747003F8DE1046','Utilisateurs','AddRoles','UtilisateursAddRoles',null,'1');
Insert into SRAIDIHAMZA."Permissions" ("Id","Groupe","Code","Label","Description","IsActive") values ('C0DAAA8BF1944D69B27F9BAFFB4F6333','Utilisateurs','GetPermissions','UtilisateursGetPermissions',null,'1');
Insert into SRAIDIHAMZA."Permissions" ("Id","Groupe","Code","Label","Description","IsActive") values ('69A28BD033D144D19634A10B72B74E5D','Utilisateurs','GetRoles','UtilisateursGetRoles',null,'1');
Insert into SRAIDIHAMZA."Permissions" ("Id","Groupe","Code","Label","Description","IsActive") values ('22C0304943B1461CADD486EFA5DED1EE','Utilisateurs','Create','UtilisateursCreate',null,'1');
Insert into SRAIDIHAMZA."Permissions" ("Id","Groupe","Code","Label","Description","IsActive") values ('7D44B0BBDDBC4717BD64B51150CDBCDF','Utilisateurs','Delete','UtilisateursDelete',null,'1');
Insert into SRAIDIHAMZA."Permissions" ("Id","Groupe","Code","Label","Description","IsActive") values ('85CB999513C244F1B6ABB1825409C59A','Utilisateurs','GetById','UtilisateursGetById',null,'1');
Insert into SRAIDIHAMZA."Permissions" ("Id","Groupe","Code","Label","Description","IsActive") values ('71B6E0D9E4634E748E84433E74B5D934','Utilisateurs','GetAll','UtilisateursGetAll',null,'1');
Insert into SRAIDIHAMZA."Permissions" ("Id","Groupe","Code","Label","Description","IsActive") values ('00A94D100F26431892EA388EF08DAE68','Utilisateurs','Update','UtilisateursUpdate',null,'1');
Insert into SRAIDIHAMZA."Permissions" ("Id","Groupe","Code","Label","Description","IsActive") values ('0F988F466069410EB117D505723942F7','Utilisateurs','ChangePassword','UtilisateursChangePassword',null,'1');
Insert into SRAIDIHAMZA."Permissions" ("Id","Groupe","Code","Label","Description","IsActive") values ('3DA50D8975994E498B6562CAF6779EDF','Utilisateurs','ShowProfile','UtilisateursShowProfile',null,'1');
Insert into SRAIDIHAMZA."Permissions" ("Id","Groupe","Code","Label","Description","IsActive") values ('1E6C67705678411085A4C1F7FFD42545','Utilisateurs','Exporter','UtilisateursExporter',null,'1');
REM INSERTING into SRAIDIHAMZA."PersonnePhysiques"
SET DEFINE OFF;
Insert into SRAIDIHAMZA."PersonnePhysiques" ("Id","Nom","Prenom","NomArabe","PrenomArabe","Email","UpdatedBy","UpdateTime","IsActive") values ('AF38F9AE21DECD42A727A8A6521C2689','System','Administrateur','System','Administrateur','admin@courdescomptes.ma',null,to_timestamp('15/09/24 14:38:37,193891800','DD/MM/RR HH24:MI:SSXFF'),'1');
Insert into SRAIDIHAMZA."PersonnePhysiques" ("Id","Nom","Prenom","NomArabe","PrenomArabe","Email","UpdatedBy","UpdateTime","IsActive") values ('6AA07662BBB3EB43A323ADAFEE161B10','Hamza','Hamza',null,null,'dcdcdcze@courdescomptes.ma','Admin',to_timestamp('19/09/24 01:30:06,272520100','DD/MM/RR HH24:MI:SSXFF'),'1');
REM INSERTING into SRAIDIHAMZA."RolePermissions"
SET DEFINE OFF;
REM INSERTING into SRAIDIHAMZA."Roles"
SET DEFINE OFF;
Insert into SRAIDIHAMZA."Roles" ("Id","Code","Label","Description","IsActive") values ('6B2A2A6C1FBC4F6A87D7D6C3A1B7E9D5','Admin','Admin','Administrateur avec un accès et un contrôle complets sur toutes les fonctionnalités et paramètres du système','1');
Insert into SRAIDIHAMZA."Roles" ("Id","Code","Label","Description","IsActive") values ('33C27E99805A4C449128248B342A2394','Utilisateur','Utilisateur','Utilisateur avec des droits d’accès limités aux fonctionnalités principales du système','1');
REM INSERTING into SRAIDIHAMZA."UtilisateurLogs"
SET DEFINE OFF;
REM INSERTING into SRAIDIHAMZA."UtilisateurPermissions"
SET DEFINE OFF;
Insert into SRAIDIHAMZA."UtilisateurPermissions" ("Id","UtilisateurId","PermissionId") values ('EB7BF900A24BCC459429C2F7AE3AA82F','3CC64D73E9680940A16589225FF8727F','D36A12D6D9C04462B4747003F8DE1046');
Insert into SRAIDIHAMZA."UtilisateurPermissions" ("Id","UtilisateurId","PermissionId") values ('B91C6E08AC5E994DA254F8452FD21EE3','3CC64D73E9680940A16589225FF8727F','1E6C67705678411085A4C1F7FFD42545');
Insert into SRAIDIHAMZA."UtilisateurPermissions" ("Id","UtilisateurId","PermissionId") values ('C44B910D02EA4C468F85A716DDFF0514','3CC64D73E9680940A16589225FF8727F','71B6E0D9E4634E748E84433E74B5D934');
Insert into SRAIDIHAMZA."UtilisateurPermissions" ("Id","UtilisateurId","PermissionId") values ('523BFA41A4907248A9D6BE8D833DFC2F','3CC64D73E9680940A16589225FF8727F','73A14A18B0084FC5ACF66E3DD50DB120');
Insert into SRAIDIHAMZA."UtilisateurPermissions" ("Id","UtilisateurId","PermissionId") values ('5E77AC49ADD36A4A9D87692912AF2D32','3CC64D73E9680940A16589225FF8727F','C0DAAA8BF1944D69B27F9BAFFB4F6333');
Insert into SRAIDIHAMZA."UtilisateurPermissions" ("Id","UtilisateurId","PermissionId") values ('41D0AC613AFFC949AB6DB274318F4BD1','3CC64D73E9680940A16589225FF8727F','40C8C39DC1FC44F5B384FA143CDDC1C4');
Insert into SRAIDIHAMZA."UtilisateurPermissions" ("Id","UtilisateurId","PermissionId") values ('0165B16406EF8E4E8D5A0DAF1FD7ED68','3CC64D73E9680940A16589225FF8727F','D4356B3F101D4CEBB58970D6AD04FBE5');
Insert into SRAIDIHAMZA."UtilisateurPermissions" ("Id","UtilisateurId","PermissionId") values ('42D7F76F74778344966B2E65D5954F24','3CC64D73E9680940A16589225FF8727F','0E7ADC84E5B045159E37EC543FC84226');
Insert into SRAIDIHAMZA."UtilisateurPermissions" ("Id","UtilisateurId","PermissionId") values ('0BE78B75605DC848B59CB1EAA298DDDD','3CC64D73E9680940A16589225FF8727F','0F3FDD8BBE254A74868E7FE358BEA712');
Insert into SRAIDIHAMZA."UtilisateurPermissions" ("Id","UtilisateurId","PermissionId") values ('6B854980515DE74FA62640FCE53D1746','3CC64D73E9680940A16589225FF8727F','CA2FE5B01CF6425092C23E5C0482E1E2');
Insert into SRAIDIHAMZA."UtilisateurPermissions" ("Id","UtilisateurId","PermissionId") values ('9F4B7A80DD8B9446A62B73FE4454D2AC','3CC64D73E9680940A16589225FF8727F','22C0304943B1461CADD486EFA5DED1EE');
Insert into SRAIDIHAMZA."UtilisateurPermissions" ("Id","UtilisateurId","PermissionId") values ('BEC8278F06CCF94197E0B2D97958770D','3CC64D73E9680940A16589225FF8727F','4C4FFF0318E54FA1B7073DE5BD87614D');
Insert into SRAIDIHAMZA."UtilisateurPermissions" ("Id","UtilisateurId","PermissionId") values ('207A589C0868744CA3950A5771D798C9','3CC64D73E9680940A16589225FF8727F','74FD16DCE26D4DC1BA6FB6D4A19792F2');
Insert into SRAIDIHAMZA."UtilisateurPermissions" ("Id","UtilisateurId","PermissionId") values ('B614CEA1FFD5A645BDBCFB5F2B4D952D','3CC64D73E9680940A16589225FF8727F','DF82C68CC9BE422DA33B1447E5E4312F');
Insert into SRAIDIHAMZA."UtilisateurPermissions" ("Id","UtilisateurId","PermissionId") values ('9D6F0BA2DEED9D458BE79CCE1FDA108A','3CC64D73E9680940A16589225FF8727F','4C0E8DF618D14EC9B32344BAA685D082');
Insert into SRAIDIHAMZA."UtilisateurPermissions" ("Id","UtilisateurId","PermissionId") values ('950F7AA92F03BA4CB697B6B946FCE9B8','3CC64D73E9680940A16589225FF8727F','3DA50D8975994E498B6562CAF6779EDF');
Insert into SRAIDIHAMZA."UtilisateurPermissions" ("Id","UtilisateurId","PermissionId") values ('348719AD0CE6EF4C948C01B63C389E5D','3CC64D73E9680940A16589225FF8727F','69A28BD033D144D19634A10B72B74E5D');
Insert into SRAIDIHAMZA."UtilisateurPermissions" ("Id","UtilisateurId","PermissionId") values ('4C1EB9B0C917384F9AB5AE32CE3AD00A','3CC64D73E9680940A16589225FF8727F','E735B67EA07B4219BD0892EDC8DFDEBA');
Insert into SRAIDIHAMZA."UtilisateurPermissions" ("Id","UtilisateurId","PermissionId") values ('7C9E69B5BAC92944B6316FAE4FA273C0','3CC64D73E9680940A16589225FF8727F','7D44B0BBDDBC4717BD64B51150CDBCDF');
Insert into SRAIDIHAMZA."UtilisateurPermissions" ("Id","UtilisateurId","PermissionId") values ('D360F6B6096A724588A47E1A19E120D1','3CC64D73E9680940A16589225FF8727F','DB7396CAC0BE4F269B6AE15E8150A460');
Insert into SRAIDIHAMZA."UtilisateurPermissions" ("Id","UtilisateurId","PermissionId") values ('65D7ECC0E10B084EA19417BBAA194093','3CC64D73E9680940A16589225FF8727F','C3215D0FCA314F5BABA952CD84769D24');
Insert into SRAIDIHAMZA."UtilisateurPermissions" ("Id","UtilisateurId","PermissionId") values ('151A96C14E67414FB824D2990478CE8F','3CC64D73E9680940A16589225FF8727F','863C94595A8E4BD290296CF8E12613C5');
Insert into SRAIDIHAMZA."UtilisateurPermissions" ("Id","UtilisateurId","PermissionId") values ('FACCAFC5123F304591CA9EB5882DA1B9','3CC64D73E9680940A16589225FF8727F','03D36DCF3BFE402884EC8DE29ADD5A17');
Insert into SRAIDIHAMZA."UtilisateurPermissions" ("Id","UtilisateurId","PermissionId") values ('B0DCD2CB7EEA5E4AA944108D50280D14','3CC64D73E9680940A16589225FF8727F','00A94D100F26431892EA388EF08DAE68');
Insert into SRAIDIHAMZA."UtilisateurPermissions" ("Id","UtilisateurId","PermissionId") values ('AE37EACE462C374293433F476B5EB64A','3CC64D73E9680940A16589225FF8727F','CDCF72EDB3AF4EE793A11510603888AD');
Insert into SRAIDIHAMZA."UtilisateurPermissions" ("Id","UtilisateurId","PermissionId") values ('C8FA0DDA491A644884F9960A24721029','3CC64D73E9680940A16589225FF8727F','5B8BB988013C46BEBD0F3A62545074AB');
Insert into SRAIDIHAMZA."UtilisateurPermissions" ("Id","UtilisateurId","PermissionId") values ('29E677E7956AB248ABC94EF10E84F92D','3CC64D73E9680940A16589225FF8727F','ABA32F57432941378EF2320ABA62B7D1');
Insert into SRAIDIHAMZA."UtilisateurPermissions" ("Id","UtilisateurId","PermissionId") values ('337FB0EA8AA34847B7473CD68803B5F3','3CC64D73E9680940A16589225FF8727F','388327DBAAA44BC0AA5FE4E055581171');
Insert into SRAIDIHAMZA."UtilisateurPermissions" ("Id","UtilisateurId","PermissionId") values ('BBA91EEC288465418EA31337960D9D26','3CC64D73E9680940A16589225FF8727F','E64C8DADD3A940C4A4F9C5399D5684E5');
Insert into SRAIDIHAMZA."UtilisateurPermissions" ("Id","UtilisateurId","PermissionId") values ('ABC852F12D5F84479D9566FD4E2FA52A','3CC64D73E9680940A16589225FF8727F','F4615909561241D6ADFAD99233E7159B');
Insert into SRAIDIHAMZA."UtilisateurPermissions" ("Id","UtilisateurId","PermissionId") values ('955325F407D80A47BADD1D11EC2A3E0C','3CC64D73E9680940A16589225FF8727F','85CB999513C244F1B6ABB1825409C59A');
Insert into SRAIDIHAMZA."UtilisateurPermissions" ("Id","UtilisateurId","PermissionId") values ('784D82FAF455664289111AC0BB439EA7','3CC64D73E9680940A16589225FF8727F','0F988F466069410EB117D505723942F7');
REM INSERTING into SRAIDIHAMZA."UtilisateurRoles"
SET DEFINE OFF;
Insert into SRAIDIHAMZA."UtilisateurRoles" ("Id","UtilisateurId","RoleId") values ('34EA04A1BC3C69489FE1493420AC4B7F','3CC64D73E9680940A16589225FF8727F','6B2A2A6C1FBC4F6A87D7D6C3A1B7E9D5');
REM INSERTING into SRAIDIHAMZA."Utilisateurs"
SET DEFINE OFF;
Insert into SRAIDIHAMZA."Utilisateurs" ("Id","PersonnePhysiqueId","Login","Password") values ('3CC64D73E9680940A16589225FF8727F','AF38F9AE21DECD42A727A8A6521C2689','Admin','17-D9-B7-C0-6B-78-58-19-82-0C-F0-F4-98-F2-0C-DF');
Insert into SRAIDIHAMZA."Utilisateurs" ("Id","PersonnePhysiqueId","Login","Password") values ('EE603B2675CC694E917F75F8F6188520','6AA07662BBB3EB43A323ADAFEE161B10','Hamza','17-D9-B7-C0-6B-78-58-19-82-0C-F0-F4-98-F2-0C-DF');
--------------------------------------------------------
--  DDL for Index IX_UtilisateurRoles_RoleId
--------------------------------------------------------

  CREATE INDEX "SRAIDIHAMZA"."IX_UtilisateurRoles_RoleId" ON "SRAIDIHAMZA"."UtilisateurRoles" ("RoleId") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index IX_Utilisateurs_PersonnePhysiqueId
--------------------------------------------------------

  CREATE INDEX "SRAIDIHAMZA"."IX_Utilisateurs_PersonnePhysiqueId" ON "SRAIDIHAMZA"."Utilisateurs" ("PersonnePhysiqueId") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
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
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index PK_UtilisateurPermissions
--------------------------------------------------------

  CREATE UNIQUE INDEX "SRAIDIHAMZA"."PK_UtilisateurPermissions" ON "SRAIDIHAMZA"."UtilisateurPermissions" ("Id") 
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
--  DDL for Index IX_UtilisateurPermissions_UtilisateurId
--------------------------------------------------------

  CREATE INDEX "SRAIDIHAMZA"."IX_UtilisateurPermissions_UtilisateurId" ON "SRAIDIHAMZA"."UtilisateurPermissions" ("UtilisateurId") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index PK_PersonnePhysiques
--------------------------------------------------------

  CREATE UNIQUE INDEX "SRAIDIHAMZA"."PK_PersonnePhysiques" ON "SRAIDIHAMZA"."PersonnePhysiques" ("Id") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index PK_ChamberAppelDisciplineBudgetaires
--------------------------------------------------------

  CREATE UNIQUE INDEX "SRAIDIHAMZA"."PK_ChamberAppelDisciplineBudgetaires" ON "SRAIDIHAMZA"."ChamberAppelDisciplineBudgetaires" ("Id") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
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
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index PK_UtilisateurLogs
--------------------------------------------------------

  CREATE UNIQUE INDEX "SRAIDIHAMZA"."PK_UtilisateurLogs" ON "SRAIDIHAMZA"."UtilisateurLogs" ("Id") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index IX_UtilisateurPermissions_PermissionId
--------------------------------------------------------

  CREATE INDEX "SRAIDIHAMZA"."IX_UtilisateurPermissions_PermissionId" ON "SRAIDIHAMZA"."UtilisateurPermissions" ("PermissionId") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
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
--  Constraints for Table ChamberAppelDisciplineBudgetaires
--------------------------------------------------------

  ALTER TABLE "SRAIDIHAMZA"."ChamberAppelDisciplineBudgetaires" MODIFY ("Id" NOT NULL ENABLE);
  ALTER TABLE "SRAIDIHAMZA"."ChamberAppelDisciplineBudgetaires" ADD CONSTRAINT "PK_ChamberAppelDisciplineBudgetaires" PRIMARY KEY ("Id")
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
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table PersonnePhysiques
--------------------------------------------------------

  ALTER TABLE "SRAIDIHAMZA"."PersonnePhysiques" MODIFY ("Id" NOT NULL ENABLE);
  ALTER TABLE "SRAIDIHAMZA"."PersonnePhysiques" MODIFY ("Nom" NOT NULL ENABLE);
  ALTER TABLE "SRAIDIHAMZA"."PersonnePhysiques" MODIFY ("Prenom" NOT NULL ENABLE);
  ALTER TABLE "SRAIDIHAMZA"."PersonnePhysiques" MODIFY ("Email" NOT NULL ENABLE);
  ALTER TABLE "SRAIDIHAMZA"."PersonnePhysiques" MODIFY ("IsActive" NOT NULL ENABLE);
  ALTER TABLE "SRAIDIHAMZA"."PersonnePhysiques" ADD CONSTRAINT "PK_PersonnePhysiques" PRIMARY KEY ("Id")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
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
  ALTER TABLE "SRAIDIHAMZA"."Utilisateurs" MODIFY ("PersonnePhysiqueId" NOT NULL ENABLE);
  ALTER TABLE "SRAIDIHAMZA"."Utilisateurs" MODIFY ("Login" NOT NULL ENABLE);
  ALTER TABLE "SRAIDIHAMZA"."Utilisateurs" MODIFY ("Password" NOT NULL ENABLE);
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
--  Constraints for Table UtilisateurLogs
--------------------------------------------------------

  ALTER TABLE "SRAIDIHAMZA"."UtilisateurLogs" MODIFY ("Id" NOT NULL ENABLE);
  ALTER TABLE "SRAIDIHAMZA"."UtilisateurLogs" MODIFY ("UtilisateurId" NOT NULL ENABLE);
  ALTER TABLE "SRAIDIHAMZA"."UtilisateurLogs" MODIFY ("Action" NOT NULL ENABLE);
  ALTER TABLE "SRAIDIHAMZA"."UtilisateurLogs" MODIFY ("Timestamp" NOT NULL ENABLE);
  ALTER TABLE "SRAIDIHAMZA"."UtilisateurLogs" MODIFY ("Description" NOT NULL ENABLE);
  ALTER TABLE "SRAIDIHAMZA"."UtilisateurLogs" ADD CONSTRAINT "PK_UtilisateurLogs" PRIMARY KEY ("Id")
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
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
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

  ALTER TABLE "SRAIDIHAMZA"."Utilisateurs" ADD CONSTRAINT "FK_Utilisateurs_PersonnePhysiques_PersonnePhysiqueId" FOREIGN KEY ("PersonnePhysiqueId")
	  REFERENCES "SRAIDIHAMZA"."PersonnePhysiques" ("Id") ON DELETE CASCADE ENABLE;
