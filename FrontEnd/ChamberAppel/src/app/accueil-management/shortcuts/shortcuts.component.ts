import { Component } from '@angular/core';
import { AuthService } from 'src/app/auth/auth.service';
import { Features } from 'src/app/auth/permissions';

@Component({
  selector: 'app-shortcuts',
  templateUrl: './shortcuts.component.html',
  styleUrls: ['./shortcuts.component.scss'],
})
export class ShortcutsComponent {
  public features = {
    ManagementUtilisateurs: this.authService.checkPermission(Features.Utilisateurs.GetAll),
    ManagementPermissions: this.authService.checkPermission(Features.Permissions.GetAll),
    ManagementRoles: this.authService.checkPermission(Features.Roles.GetAll),
    Any: this.authService.checkPermission([
      Features.Utilisateurs.GetAll,
      Features.Permissions.GetAll,
      Features.Roles.GetAll,
    ]),
  };

  constructor(private authService: AuthService) {}

  public showDashboard = false;
  public menusClass = '';

  toggleTabs(): void {
    this.showDashboard = !this.showDashboard;
  }
}
