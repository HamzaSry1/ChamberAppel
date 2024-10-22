import { RolesEditComponent } from './roles-edit/roles-edit.component';
import { RolesDeleteComponent } from './roles-delete/roles-delete.component';
import { RolesAddComponent } from './roles-add/roles-add.component';
import { RolesDetailComponent } from './roles-detail/roles-detail.component';
import { RolesPermissionsComponent } from './roles-permissions/roles-permissions.component';
import { NgModule } from '@angular/core';
import { RouterModule, Routes } from '@angular/router';
import { AuthGuard } from '../auth/auth.guard';
import { Access } from '../auth/Access';
import { RolesListComponent } from './roles-list/roles-list.component';

const routes: Routes = [
  {
    path: '',
    component: RolesListComponent,
    canActivate: [AuthGuard],
    // data: { permission: [Features.Roles.GetAll] },
  },
  {
    path: 'modifier/:id',
    component: RolesEditComponent,
    canActivate: [AuthGuard],
    // data: { permission: [Features.Roles.Update] },
  },
  {
    path: 'supprimer/:id',
    component: RolesDeleteComponent,
    canActivate: [AuthGuard],
    // data: { permission: [Features.Roles.Delete] },
  },
  {
    path: 'ajouter',
    component: RolesAddComponent,
    canActivate: [AuthGuard],
    // data: { permission: [Features.Roles.Add] },
  },
  {
    path: 'detail/:id',
    component: RolesDetailComponent,
    canActivate: [AuthGuard],
    // data: { permission: [Features.Roles.GetById] },
  },
  {
    path: 'roles-permissions/:id',
    component: RolesPermissionsComponent,
    canActivate: [AuthGuard],
    // data: { permission: [Features.Roles.GetPermissions] },
  },
];

@NgModule({
  imports: [RouterModule.forChild(routes)],
  exports: [RouterModule],
})
export class RolesManagementRoutingModule { }
