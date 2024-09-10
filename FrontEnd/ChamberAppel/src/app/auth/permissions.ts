export class Features {
  public static Permissions = class {
    public static GetById: string = 'PermissionsGetById';
    public static GetAll: string = 'PermissionsGetAll';
    public static Update: string = 'PermissionsUpdate';
    public static Delete: string = 'PermissionsDelete';
    public static Add: string = 'PermissionsAdd';
    public static Exporter: string = 'PermissionsExporter';
  };
  public static PersonnePhysique = class {
    public static Add: string = 'PersonnePhysiqueAdd';
    public static Delete: string = 'PersonnePhysiqueDelete';
    public static GetById: string = 'PersonnePhysiqueGetById';
    public static GetAll: string = 'PersonnePhysiqueGetAll';
    public static Update: string = 'PersonnePhysiqueUpdate';
  };
  public static Roles = class {
    public static GetById: string = 'RolesGetById';
    public static GetAll: string = 'RolesGetAll';
    public static Update: string = 'RolesUpdate';
    public static Delete: string = 'RolesDelete';
    public static Add: string = 'RolesAdd';
    public static AddPermissions: string = 'RolesAddPermissions';
    public static GetPermissions: string = 'RolesGetPermissions';
    public static Exporter: string = 'RolesExporter';
  };
  public static Utilisateurs = class {
    public static AddPermissions: string = 'UtilisateursAddPermissions';
    public static AddRoles: string = 'UtilisateursAddRoles';
    public static GetPermissions: string = 'UtilisateursGetPermissions';
    public static GetRoles: string = 'UtilisateursGetRoles';
    public static Add: string = 'UtilisateursAdd';
    public static Delete: string = 'UtilisateursDelete';
    public static GetById: string = 'UtilisateursGetById';
    public static GetAll: string = 'UtilisateursGetAll';
    public static Update: string = 'UtilisateursUpdate';
    public static SendEmailVerification: string = 'UtilisateursSendEmailVerification';
    public static ChangePassword: string = 'UtilisateursChangePassword';
    public static ShowProfile: string = 'UtilisateursShowProfile';
    public static Exporter: string = 'UtilisateursExporter';
  };

}
