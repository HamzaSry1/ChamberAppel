import { PermissionsDetailComponent } from './permissions-detail/permissions-detail.component';
import { PermissionsAddComponent } from './permissions-add/permissions-add.component';
import { PermissionsDeleteComponent } from './permissions-delete/permissions-delete.component';
import { PermissionsEditComponent } from './permissions-edit/permissions-edit.component';
import { NgModule } from '@angular/core';
import { RouterModule, Routes } from '@angular/router';
import { AuthGuard } from '../auth/auth.guard';
import { Access } from '../auth/Access';
import { PermissionsListComponent } from './permissions-list/permissions-list.component';

const routes: Routes = [
  {
    path: '',
    component: PermissionsListComponent,
    canActivate: [AuthGuard],
    // data: { permission: [Features.Permissions.GetAll] },
  },
  {
    path: 'modifier/:id',
    component: PermissionsEditComponent,
    canActivate: [AuthGuard],
    // data: { permission: [Features.Permissions.Update] },
  },
  {
    path: 'supprimer/:id',
    component: PermissionsDeleteComponent,
    canActivate: [AuthGuard],
    // data: { permission: [Features.Permissions.Delete] },
  },
  {
    path: 'ajouter',
    component: PermissionsAddComponent,
    canActivate: [AuthGuard],
    // data: { permission: [Features.Permissions.Add] },
  },
  {
    path: 'detail/:id',
    component: PermissionsDetailComponent,
    canActivate: [AuthGuard],
    // data: { permission: [Features.Permissions.GetById] },
  },
];

@NgModule({
  imports: [RouterModule.forChild(routes)],
  exports: [RouterModule],
})
export class PermissionsManagementRoutingModule {}
