import { Component, OnInit } from '@angular/core';
import { AuthService } from 'src/app/auth/auth.service';
import { Access } from 'src/app/auth/Access';

@Component({
  selector: 'app-index',
  templateUrl: './index.component.html',
  styleUrls: ['./index.component.scss'],
})
export class IndexComponent implements OnInit {
  public features = {
    ManagementUtilisateurs: this.authService.checkPermission(Access.Utilisateurs.GetAll),
    ManagementPermissions: this.authService.checkPermission(Access.Permissions.GetAll),
    ManagementRoles: this.authService.checkPermission(Access.Roles.GetAll),
    Any: this.authService.checkPermission([
      Access.Utilisateurs.GetAll,
      Access.Permissions.GetAll,
      Access.Roles.GetAll,
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
