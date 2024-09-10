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
    ManagementAdherents: this.authService.checkPermission(Features.Adherents.GetAll),
    ExporterAdherents: this.authService.checkPermission(Features.Adherents.Exporter),
    ManagementImportAdherents: this.authService.checkPermission(Features.AdherentsImport.UploadFile),

    ShowStatistiques: this.authService.checkPermission(Features.Adherents.GetStatistiques),

    ManagementUtilisateurs: this.authService.checkPermission(Features.Utilisateurs.GetAll),
    ManagementPermissions: this.authService.checkPermission(Features.Permissions.GetAll),
    ManagementRoles: this.authService.checkPermission(Features.Roles.GetAll),
    ManagementTypeUtilisateurs: this.authService.checkPermission(Features.TypeUtilisateurs.GetAll),

    ManagementTypeGrades: this.authService.checkPermission(Features.TypeGrades.GetAll),
    ManagementTypeProvinces: this.authService.checkPermission(Features.TypeProvinces.GetAll),
    ManagementTypeRegions: this.authService.checkPermission(Features.TypeRegions.GetAll),
    ManagementTypeStatutsAdhesions: this.authService.checkPermission(Features.TypeStatutAdhesions.GetAll),

    Any: this.authService.checkPermission([
      Features.Adherents.GetAll,
      Features.Adherents.Exporter,
      Features.AdherentsImport.UploadFile,
      Features.Utilisateurs.GetAll,
      Features.Permissions.GetAll,
      Features.Roles.GetAll,
      Features.TypeUtilisateurs.GetAll,
      Features.TypeGrades.GetAll,
      Features.TypeProvinces.GetAll,
      Features.TypeRegions.GetAll,
      Features.TypeStatutAdhesions.GetAll,
    ]),
  };

  constructor(private authService: AuthService) {}

  public showDashboard = false;
  public menusClass = '';

  toggleTabs(): void {
    this.showDashboard = !this.showDashboard;
  }
}
