-- Utilisateurs
INSERT INTO "SRAIDIHAMZA"."Permissions" ("Id", "Groupe", "Code", "Label", "Description", "IsActive") VALUES (SYS_GUID(), 'Utilisateurs', 'GetAll', 'Voir la liste des utilisateurs', 'Voir la liste des utilisateurs', '1');
INSERT INTO "SRAIDIHAMZA"."Permissions" ("Id", "Groupe", "Code", "Label", "Description", "IsActive") VALUES (SYS_GUID(), 'Utilisateurs', 'GetById', 'Voir les détails de utilisateur', 'Voir les détails de utilisateur', '1');
INSERT INTO "SRAIDIHAMZA"."Permissions" ("Id", "Groupe", "Code", "Label", "Description", "IsActive") VALUES (SYS_GUID(), 'Utilisateurs', 'Create', 'Ajouter un utilisateur', 'Ajouter un utilisateur', '1');
INSERT INTO "SRAIDIHAMZA"."Permissions" ("Id", "Groupe", "Code", "Label", "Description", "IsActive") VALUES (SYS_GUID(), 'Utilisateurs', 'Update', 'Modifier un utilisateur', 'Modifier un utilisateur', '1');
INSERT INTO "SRAIDIHAMZA"."Permissions" ("Id", "Groupe", "Code", "Label", "Description", "IsActive") VALUES (SYS_GUID(), 'Utilisateurs', 'Delete', 'Supprimer un utilisateur', 'Supprimer un utilisateur', '1');
INSERT INTO "SRAIDIHAMZA"."Permissions" ("Id", "Groupe", "Code", "Label", "Description", "IsActive") VALUES (SYS_GUID(), 'Utilisateurs', 'Exporter', 'Exporter la liste des utilisateurs', 'Exporter la liste des utilisateurs', '1');
INSERT INTO "SRAIDIHAMZA"."Permissions" ("Id", "Groupe", "Code", "Label", "Description", "IsActive") VALUES (SYS_GUID(), 'Utilisateurs', 'ChangePassword', 'Modifier le mot de passe', 'Modifier le mot de passe', '1');
INSERT INTO "SRAIDIHAMZA"."Permissions" ("Id", "Groupe", "Code", "Label", "Description", "IsActive") VALUES (SYS_GUID(), 'Utilisateurs', 'AddPermissions', 'Ajouter des permissions', 'Ajouter des permissions', '1');
INSERT INTO "SRAIDIHAMZA"."Permissions" ("Id", "Groupe", "Code", "Label", "Description", "IsActive") VALUES (SYS_GUID(), 'Utilisateurs', 'GetPermissions', 'Voir toutes les permissions', 'Voir toutes les permissions', '1');
INSERT INTO "SRAIDIHAMZA"."Permissions" ("Id", "Groupe", "Code", "Label", "Description", "IsActive") VALUES (SYS_GUID(), 'Utilisateurs', 'AddRoles', 'Ajouter des rôles', 'Ajouter des rôles', '1');
INSERT INTO "SRAIDIHAMZA"."Permissions" ("Id", "Groupe", "Code", "Label", "Description", "IsActive") VALUES (SYS_GUID(), 'Utilisateurs', 'GetRoles', 'Voir tous les rôles', 'Voir tous les rôles', '1');

-- Permissions
INSERT INTO "SRAIDIHAMZA"."Permissions" ("Id", "Groupe", "Code", "Label", "Description", "IsActive") VALUES (SYS_GUID(), 'Permissions', 'GetAll', 'Voir la liste des permissions', 'Voir la liste des permissions', '1');
INSERT INTO "SRAIDIHAMZA"."Permissions" ("Id", "Groupe", "Code", "Label", "Description", "IsActive") VALUES (SYS_GUID(), 'Permissions', 'GetById', 'Voir les détails de la permission', 'Voir les détails de la permission', '1');
INSERT INTO "SRAIDIHAMZA"."Permissions" ("Id", "Groupe", "Code", "Label", "Description", "IsActive") VALUES (SYS_GUID(), 'Permissions', 'Create', 'Ajouter une permission', 'Ajouter une permission', '1');
INSERT INTO "SRAIDIHAMZA"."Permissions" ("Id", "Groupe", "Code", "Label", "Description", "IsActive") VALUES (SYS_GUID(), 'Permissions', 'Update', 'Modifier une permission', 'Modifier une permission', '1');
INSERT INTO "SRAIDIHAMZA"."Permissions" ("Id", "Groupe", "Code", "Label", "Description", "IsActive") VALUES (SYS_GUID(), 'Permissions', 'Delete', 'Supprimer une permission', 'Supprimer une permission', '1');
INSERT INTO "SRAIDIHAMZA"."Permissions" ("Id", "Groupe", "Code", "Label", "Description", "IsActive") VALUES (SYS_GUID(), 'Permissions', 'Exporter', 'Exporter la liste des permissions', 'Exporter la liste des permissions', '1');

-- Roles
INSERT INTO "SRAIDIHAMZA"."Permissions" ("Id", "Groupe", "Code", "Label", "Description", "IsActive") VALUES (SYS_GUID(), 'Roles', 'GetAll', 'Voir la liste des rôles', 'Voir la liste des rôles', '1');
INSERT INTO "SRAIDIHAMZA"."Permissions" ("Id", "Groupe", "Code", "Label", "Description", "IsActive") VALUES (SYS_GUID(), 'Roles', 'GetById', 'Voir les détails du rôle', 'Voir les détails du rôle', '1');
INSERT INTO "SRAIDIHAMZA"."Permissions" ("Id", "Groupe", "Code", "Label", "Description", "IsActive") VALUES (SYS_GUID(), 'Roles', 'Create', 'Ajouter un rôle', 'Ajouter un rôle', '1');
INSERT INTO "SRAIDIHAMZA"."Permissions" ("Id", "Groupe", "Code", "Label", "Description", "IsActive") VALUES (SYS_GUID(), 'Roles', 'Update', 'Modifier un rôle', 'Modifier un rôle', '1');
INSERT INTO "SRAIDIHAMZA"."Permissions" ("Id", "Groupe", "Code", "Label", "Description", "IsActive") VALUES (SYS_GUID(), 'Roles', 'Delete', 'Supprimer un rôle', 'Supprimer un rôle', '1');
INSERT INTO "SRAIDIHAMZA"."Permissions" ("Id", "Groupe", "Code", "Label", "Description", "IsActive") VALUES (SYS_GUID(), 'Roles', 'Exporter', 'Exporter la liste des rôles', 'Exporter la liste des rôles', '1');
INSERT INTO "SRAIDIHAMZA"."Permissions" ("Id", "Groupe", "Code", "Label", "Description", "IsActive") VALUES (SYS_GUID(), 'Roles', 'AddPermissions', 'Ajouter des permissions', 'Ajouter des permissions', '1');
INSERT INTO "SRAIDIHAMZA"."Permissions" ("Id", "Groupe", "Code", "Label", "Description", "IsActive") VALUES (SYS_GUID(), 'Roles', 'GetPermissions', 'Voir toutes les permissions', 'Voir toutes les permissions', '1');

-- RequeteAppels
INSERT INTO "SRAIDIHAMZA"."Permissions" ("Id", "Groupe", "Code", "Label", "Description", "IsActive") VALUES (SYS_GUID(), 'RequeteAppels', 'GetAll', 'Voir la liste des requêtes appel', 'Voir la liste des requêtes appel', '1');
INSERT INTO "SRAIDIHAMZA"."Permissions" ("Id", "Groupe", "Code", "Label", "Description", "IsActive") VALUES (SYS_GUID(), 'RequeteAppels', 'GetById', 'Voir les détails de la requête appel', 'Voir les détails de la requête appel', '1');
INSERT INTO "SRAIDIHAMZA"."Permissions" ("Id", "Groupe", "Code", "Label", "Description", "IsActive") VALUES (SYS_GUID(), 'RequeteAppels', 'Create', 'Ajouter une requête appel', 'Ajouter une requête appel', '1');
INSERT INTO "SRAIDIHAMZA"."Permissions" ("Id", "Groupe", "Code", "Label", "Description", "IsActive") VALUES (SYS_GUID(), 'RequeteAppels', 'Update', 'Modifier une requête appel', 'Modifier une requête appel', '1');
INSERT INTO "SRAIDIHAMZA"."Permissions" ("Id", "Groupe", "Code", "Label", "Description", "IsActive") VALUES (SYS_GUID(), 'RequeteAppels', 'Delete', 'Supprimer une requête appel', 'Supprimer une requête appel', '1');
INSERT INTO "SRAIDIHAMZA"."Permissions" ("Id", "Groupe", "Code", "Label", "Description", "IsActive") VALUES (SYS_GUID(), 'RequeteAppels', 'Exporter', 'Exporter la liste des requêtes appel', 'Exporter la liste des requêtes appel', '1');

-- RequeteAppelsImport
INSERT INTO "SRAIDIHAMZA"."Permissions" ("Id", "Groupe", "Code", "Label", "Description", "IsActive") VALUES (SYS_GUID(), 'RequeteAppelsImport', 'Upload', 'Uploader le fichier des requêtes appel', 'Uploader le fichier des requêtes appel', '1');
INSERT INTO "SRAIDIHAMZA"."Permissions" ("Id", "Groupe", "Code", "Label", "Description", "IsActive") VALUES (SYS_GUID(), 'RequeteAppelsImport', 'Confirm', 'Confirmer le fichier des requêtes appel', 'Confirmer le fichier des requêtes appel', '1');
INSERT INTO "SRAIDIHAMZA"."Permissions" ("Id", "Groupe", "Code", "Label", "Description", "IsActive") VALUES (SYS_GUID(), 'RequeteAppelsImport', 'Exporter', 'Exporter le fichier avec les erreurs', 'Exporter le fichier avec les erreurs', '1');

-- DisciplineBudgetairesImport
INSERT INTO "SRAIDIHAMZA"."Permissions" ("Id", "Groupe", "Code", "Label", "Description", "IsActive") VALUES (SYS_GUID(), 'DisciplineBudgetairesImport', 'Upload', 'Uploader le fichier de discipline budgétaire', 'Uploader le fichier de discipline budgétaire', '1');
INSERT INTO "SRAIDIHAMZA"."Permissions" ("Id", "Groupe", "Code", "Label", "Description", "IsActive") VALUES (SYS_GUID(), 'DisciplineBudgetairesImport', 'Confirm', 'Confirmer le fichier de discipline budgétaire', 'Confirmer le fichier de discipline budgétaire', '1');
INSERT INTO "SRAIDIHAMZA"."Permissions" ("Id", "Groupe", "Code", "Label", "Description", "IsActive") VALUES (SYS_GUID(), 'DisciplineBudgetairesImport', 'Exporter', 'Exporter le fichier avec les erreurs', 'Exporter le fichier avec les erreurs', '1');

-- DisciplineBudgetaires
INSERT INTO "SRAIDIHAMZA"."Permissions" ("Id", "Groupe", "Code", "Label", "Description", "IsActive") VALUES (SYS_GUID(), 'DisciplineBudgetaires', 'GetAll', 'Voir la liste des disciplines budgétaires', 'Voir la liste des disciplines budgétaires', '1');
INSERT INTO "SRAIDIHAMZA"."Permissions" ("Id", "Groupe", "Code", "Label", "Description", "IsActive") VALUES (SYS_GUID(), 'DisciplineBudgetaires', 'GetById', 'Voir les détails de la discipline budgétaire', 'Voir les détails de la discipline budgétaire', '1');
INSERT INTO "SRAIDIHAMZA"."Permissions" ("Id", "Groupe", "Code", "Label", "Description", "IsActive") VALUES (SYS_GUID(), 'DisciplineBudgetaires', 'Create', 'Ajouter une discipline budgétaire', 'Ajouter une discipline budgétaire', '1');
INSERT INTO "SRAIDIHAMZA"."Permissions" ("Id", "Groupe", "Code", "Label", "Description", "IsActive") VALUES (SYS_GUID(), 'DisciplineBudgetaires', 'Update', 'Modifier une discipline budgétaire', 'Modifier une discipline budgétaire', '1');
INSERT INTO "SRAIDIHAMZA"."Permissions" ("Id", "Groupe", "Code", "Label", "Description", "IsActive") VALUES (SYS_GUID(), 'DisciplineBudgetaires', 'Delete', 'Supprimer une discipline budgétaire', 'Supprimer une discipline budgétaire', '1');
INSERT INTO "SRAIDIHAMZA"."Permissions" ("Id", "Groupe", "Code", "Label", "Description", "IsActive") VALUES (SYS_GUID(), 'DisciplineBudgetaires', 'Exporter', 'Exporter la liste des disciplines budgétaires', 'Exporter la liste des disciplines budgétaires', '1');

-- CRCs
INSERT INTO "SRAIDIHAMZA"."Permissions" ("Id", "Groupe", "Code", "Label", "Description", "IsActive") VALUES (SYS_GUID(), 'CRCs', 'GetAll', 'Voir la liste des cours régionales des comptes', 'Voir la liste des cours régionales des comptes', '1');
INSERT INTO "SRAIDIHAMZA"."Permissions" ("Id", "Groupe", "Code", "Label", "Description", "IsActive") VALUES (SYS_GUID(), 'CRCs', 'GetById', 'Voir les détails de la cour régionale des comptes', 'Voir les détails de la cour régionale des comptes', '1');
INSERT INTO "SRAIDIHAMZA"."Permissions" ("Id", "Groupe", "Code", "Label", "Description", "IsActive") VALUES (SYS_GUID(), 'CRCs', 'Create', 'Ajouter une cour régionale des comptes', 'Ajouter une cour régionale des comptes', '1');
INSERT INTO "SRAIDIHAMZA"."Permissions" ("Id", "Groupe", "Code", "Label", "Description", "IsActive") VALUES (SYS_GUID(), 'CRCs', 'Update', 'Modifier une cour régionale des comptes', 'Modifier une cour régionale des comptes', '1');
INSERT INTO "SRAIDIHAMZA"."Permissions" ("Id", "Groupe", "Code", "Label", "Description", "IsActive") VALUES (SYS_GUID(), 'CRCs', 'Delete', 'Supprimer une cour régionale des comptes', 'Supprimer une cour régionale des comptes', '1');
INSERT INTO "SRAIDIHAMZA"."Permissions" ("Id", "Groupe", "Code", "Label", "Description", "IsActive") VALUES (SYS_GUID(), 'CRCs', 'Exporter', 'Exporter la liste des cours régionales des comptes', 'Exporter la liste des cours régionales des comptes', '1');

-- TypeGrades
INSERT INTO "SRAIDIHAMZA"."Permissions" ("Id", "Groupe", "Code", "Label", "Description", "IsActive") VALUES (SYS_GUID(), 'TypeGrades', 'GetAll', 'Voir la liste des grades', 'Voir la liste des grades', '1');
INSERT INTO "SRAIDIHAMZA"."Permissions" ("Id", "Groupe", "Code", "Label", "Description", "IsActive") VALUES (SYS_GUID(), 'TypeGrades', 'GetById', 'Voir les détails du grade', 'Voir les détails du grade', '1');
INSERT INTO "SRAIDIHAMZA"."Permissions" ("Id", "Groupe", "Code", "Label", "Description", "IsActive") VALUES (SYS_GUID(), 'TypeGrades', 'Create', 'Ajouter un grade', 'Ajouter un grade', '1');
INSERT INTO "SRAIDIHAMZA"."Permissions" ("Id", "Groupe", "Code", "Label", "Description", "IsActive") VALUES (SYS_GUID(), 'TypeGrades', 'Update', 'Modifier un grade', 'Modifier un grade', '1');
INSERT INTO "SRAIDIHAMZA"."Permissions" ("Id", "Groupe", "Code", "Label", "Description", "IsActive") VALUES (SYS_GUID(), 'TypeGrades', 'Delete', 'Supprimer un grade', 'Supprimer un grade', '1');
INSERT INTO "SRAIDIHAMZA"."Permissions" ("Id", "Groupe", "Code", "Label", "Description", "IsActive") VALUES (SYS_GUID(), 'TypeGrades', 'Exporter', 'Exporter la liste des grades', 'Exporter la liste des grades', '1');

-- TypeUtilisateurs
INSERT INTO "SRAIDIHAMZA"."Permissions" ("Id", "Groupe", "Code", "Label", "Description", "IsActive") VALUES (SYS_GUID(), 'TypeUtilisateurs', 'GetAll', 'Voir la liste des types utilisateurs', 'Voir la liste des types utilisateurs', '1');
INSERT INTO "SRAIDIHAMZA"."Permissions" ("Id", "Groupe", "Code", "Label", "Description", "IsActive") VALUES (SYS_GUID(), 'TypeUtilisateurs', 'GetById', 'Voir les détails du type utilisateur', 'Voir les détails du type utilisateur', '1');
INSERT INTO "SRAIDIHAMZA"."Permissions" ("Id", "Groupe", "Code", "Label", "Description", "IsActive") VALUES (SYS_GUID(), 'TypeUtilisateurs', 'Create', 'Ajouter un type utilisateur', 'Ajouter un type utilisateur', '1');
INSERT INTO "SRAIDIHAMZA"."Permissions" ("Id", "Groupe", "Code", "Label", "Description", "IsActive") VALUES (SYS_GUID(), 'TypeUtilisateurs', 'Update', 'Modifier un type utilisateur', 'Modifier un type utilisateur', '1');
INSERT INTO "SRAIDIHAMZA"."Permissions" ("Id", "Groupe", "Code", "Label", "Description", "IsActive") VALUES (SYS_GUID(), 'TypeUtilisateurs', 'Delete', 'Supprimer un type utilisateur', 'Supprimer un type utilisateur', '1');
INSERT INTO "SRAIDIHAMZA"."Permissions" ("Id", "Groupe", "Code", "Label", "Description", "IsActive") VALUES (SYS_GUID(), 'TypeUtilisateurs', 'Exporter', 'Exporter la liste des types utilisateurs', 'Exporter la liste des types utilisateurs', '1');
