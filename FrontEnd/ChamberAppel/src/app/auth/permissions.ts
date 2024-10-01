export class Features {
  public static Permissions = class {
    public static GetById: string = 'PermissionsGetById';
    public static GetAll: string = 'PermissionsGetAll';
    public static Update: string = 'PermissionsUpdate';
    public static Delete: string = 'PermissionsDelete';
    public static Create: string = 'PermissionsCreate';
    public static Exporter: string = 'PermissionsExporter';
  };
  public static Roles = class {
    public static GetById: string = 'RolesGetById';
    public static GetAll: string = 'RolesGetAll';
    public static Update: string = 'RolesUpdate';
    public static Delete: string = 'RolesDelete';
    public static Create: string = 'RolesCreate';
    public static Exporter: string = 'RolesExporter';

    public static AddPermissions: string = 'RolesAddPermissions';
    public static GetPermissions: string = 'RolesGetPermissions';
  };
  public static Utilisateurs = class {
    public static Create: string = 'UtilisateursCreate';
    public static Delete: string = 'UtilisateursDelete';
    public static GetById: string = 'UtilisateursGetById';
    public static GetAll: string = 'UtilisateursGetAll';
    public static Update: string = 'UtilisateursUpdate';
    public static Exporter: string = 'UtilisateursExporter';
    
    public static ChangePassword: string = 'UtilisateursChangePassword';
    public static AddPermissions: string = 'UtilisateursAddPermissions';
    public static AddRoles: string = 'UtilisateursAddRoles';
    public static GetPermissions: string = 'UtilisateursGetPermissions';
    public static GetRoles: string = 'UtilisateursGetRoles';
  };

}
