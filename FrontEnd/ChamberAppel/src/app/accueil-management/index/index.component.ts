import { Component, OnInit } from '@angular/core';
import { AuthService } from 'src/app/auth/auth.service';
import { Features } from 'src/app/auth/permissions';

@Component({
  selector: 'app-index',
  templateUrl: './index.component.html',
  styleUrls: ['./index.component.scss'],
})
export class IndexComponent implements OnInit {
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
  ngOnInit(): void {}
  toggleTabs(): void {
    this.showDashboard = !this.showDashboard;
  }
}
