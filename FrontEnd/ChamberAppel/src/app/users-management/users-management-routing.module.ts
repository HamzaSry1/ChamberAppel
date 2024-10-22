import { UsersDetailsComponent } from './users-details/users-details.component';
import { UsersEditComponent } from './users-edit/users-edit.component';
import { UsersListComponent } from './users-list/users-list.component';
import { NgModule } from '@angular/core';
import { RouterModule, Routes } from '@angular/router';
import { UsersDeleteComponent } from './users-delete/users-delete.component';
import { UsersAddComponent } from './users-add/users-add.component';
import { UsersRolesPermissionsComponent } from './users-roles-permissions/users-roles-permissions.component';
import { AuthGuard } from '../auth/auth.guard';
import { UsersProfileComponent } from './users-profile/users-profile.component';
import { UsersChangePasswordComponent } from './users-change-password/users-change-password.component';
import { Access } from '../auth/Access';
const routes: Routes = [
  {
    path: '',
    component: UsersListComponent,
    canActivate: [AuthGuard],
    // data: { permission: [Features.Utilisateurs.GetAll] },
  },
  {
    path: 'modifier/:id',
    component: UsersEditComponent,
    canActivate: [AuthGuard],
    // data: { permission: [Features.Utilisateurs.Update] },
  },
  {
    path: 'supprimer/:id',
    component: UsersDeleteComponent,
    canActivate: [AuthGuard],
    // data: { permission: [Features.Utilisateurs.Delete] },
  },
  {
    path: 'ajouter',
    component: UsersAddComponent,
    canActivate: [AuthGuard],
    // data: { permission: [Features.Utilisateurs.Add] },
  },
  {
    path: 'detail/:id',
    component: UsersDetailsComponent,
    canActivate: [AuthGuard],
    // data: { permission: [Features.Utilisateurs.GetById] },
  },
  {
    path: 'monprofil',
    component: UsersProfileComponent,
    canActivate: [AuthGuard],
    // data: { permission: [Features.Utilisateurs.ShowProfile] },
  },
  {
    path: 'changepassword',
    component: UsersChangePasswordComponent,
    canActivate: [AuthGuard],
    // data: { permission: [Features.Utilisateurs.ChangePassword] },
  },
  {
    path: 'roles-permissions/:id',
    component: UsersRolesPermissionsComponent,
    canActivate: [AuthGuard],
    // data: {
    //   permission: [Features.Utilisateurs.GetPermissions, Features.Utilisateurs.GetRoles],
    // },
  },
];

@NgModule({
  imports: [RouterModule.forChild(routes)],
  exports: [RouterModule],
})
export class UsersManagementRoutingModule { }
