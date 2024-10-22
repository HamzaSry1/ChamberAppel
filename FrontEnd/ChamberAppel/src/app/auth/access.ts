export class Access {
  public static Utilisateurs = class {
    public static GetAll: string = 'Voir la liste des utilisateurs';
    public static GetById: string = "Voir les détails de l'utilisateur";
    public static Create: string = 'Ajouter un utilisateur';
    public static Update: string = 'Modifier un utilisateur';
    public static Delete: string = 'Supprimer un utilisateur';
    public static Exporter: string = 'Exporter la liste des utilisateurs';
    public static ChangePassword: string = 'Modifier le mot de passe';
    public static AddPermissions: string = 'Ajouter des permissions';
    public static GetPermissions: string = 'Voir toutes les permissions';
    public static AddRoles: string = 'Ajouter des rôles';
    public static GetRoles: string = 'Voir tous les rôles';
  };

  public static Permissions = class {
    public static GetAll: string = 'Voir la liste des permissions';
    public static GetById: string = 'Voir les détails de la permission';
    public static Create: string = 'Ajouter une permission';
    public static Update: string = 'Modifier une permission';
    public static Delete: string = 'Supprimer une permission';
    public static Exporter: string = 'Exporter la liste des permissions';
  };

  public static Roles = class {
    public static GetAll: string = 'Voir la liste des rôles';
    public static GetById: string = 'Voir les détails du rôle';
    public static Create: string = 'Ajouter un rôle';
    public static Update: string = 'Modifier un rôle';
    public static Delete: string = 'Supprimer un rôle';
    public static Exporter: string = 'Exporter la liste des rôles';
    public static AddPermissions: string = 'Ajouter des permissions';
    public static GetPermissions: string = 'Voir toutes les permissions';
  };

  public static RequeteAppels = class {
    public static GetAll: string = "Voir la liste des requêtes d'appel";
    public static GetById: string = "Voir les détails de la requête d'appel";
    public static Create: string = "Ajouter une requête d'appel";
    public static Update: string = "Modifier une requête d'appel";
    public static Delete: string = "Supprimer une requête d'appel";
    public static Exporter: string = "Exporter la liste des requêtes d'appel";
  };

  public static RequeteAppelsImport = class {
    public static Upload: string = "Uploader le fichier des requêtes d'appel";
    public static Confirm: string = "Confirmer le fichier des requêtes d'appel";
    public static Exporter: string = "Exporter le fichier avec les erreurs";
  };

  public static DisciplineBudgetairesImport = class {
    public static Upload: string = "Uploader le fichier de discipline budgétaire";
    public static Confirm: string = "Confirmer le fichier de discipline budgétaire";
    public static Exporter: string = "Exporter le fichier avec les erreurs";
  };

  public static DisciplineBudgetaires = class {
    public static GetAll: string = 'Voir la liste des disciplines budgétaires';
    public static GetById: string = 'Voir les détails de la discipline budgétaire';
    public static Create: string = 'Ajouter une discipline budgétaire';
    public static Update: string = 'Modifier une discipline budgétaire';
    public static Delete: string = 'Supprimer une discipline budgétaire';
    public static Exporter: string = 'Exporter la liste des disciplines budgétaires';
  };

  public static CRCs = class {
    public static GetAll: string = 'Voir la liste des cours régionales des comptes';
    public static GetById: string = 'Voir les détails de la cour régionale des comptes';
    public static Create: string = 'Ajouter une cour régionale des comptes';
    public static Update: string = 'Modifier une cour régionale des comptes';
    public static Delete: string = 'Supprimer une cour régionale des comptes';
    public static Exporter: string = 'Exporter la liste des cours régionales des comptes';
  };

  public static TypeGrades = class {
    public static GetAll: string = 'Voir la liste des grades';
    public static GetById: string = 'Voir les détails du grade';
    public static Create: string = 'Ajouter un grade';
    public static Update: string = 'Modifier un grade';
    public static Delete: string = 'Supprimer un grade';
    public static Exporter: string = 'Exporter la liste des grades';
  };

  public static TypeUtilisateurs = class {
    public static GetAll: string = 'Voir la liste des types d\'utilisateurs';
    public static GetById: string = 'Voir les détails du type d\'utilisateur';
    public static Create: string = 'Ajouter un type d\'utilisateur';
    public static Update: string = 'Modifier un type d\'utilisateur';
    public static Delete: string = 'Supprimer un type d\'utilisateur';
    public static Exporter: string = 'Exporter la liste des types d\'utilisateurs';
  };
}
