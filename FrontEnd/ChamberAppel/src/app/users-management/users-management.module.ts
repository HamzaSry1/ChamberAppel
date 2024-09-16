import { DesignSystemModule } from './../design-system/design-system.module';
import { SharedTableCaseModule } from './../shared-table-case/shared-table-case.module';
import { FormsModule, ReactiveFormsModule } from '@angular/forms';
import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';
import { UsersManagementRoutingModule } from './users-management-routing.module';
import { UsersListComponent } from './users-list/users-list.component';
import { UsersEditComponent } from './users-edit/users-edit.component';
import { UsersDetailsComponent } from './users-details/users-details.component';
import {
  AlertModule,
  ButtonModule,
  CardModule,
  GridModule,
  NavModule,
  TableModule,
  TabsModule,
} from '@coreui/angular';
import { IconModule } from '@coreui/icons-angular';
import { UsersDeleteComponent } from './users-delete/users-delete.component';
import { UsersAddComponent } from './users-add/users-add.component';
import { UsersRolesPermissionsComponent } from './users-roles-permissions/users-roles-permissions.component';
import { UsersProfileComponent } from './users-profile/users-profile.component';
import { UsersChangePasswordComponent } from './users-change-password/users-change-password.component';
import { NgxSpinnerModule } from 'ngx-spinner';
import { NgbModule } from '@ng-bootstrap/ng-bootstrap';
import { MatIconModule } from '@angular/material/icon';
import { MatSortModule } from '@angular/material/sort';
import { BrowserAnimationsModule } from '@angular/platform-browser/animations';

@NgModule({
  declarations: [
    UsersListComponent,
    UsersEditComponent,
    UsersDetailsComponent,
    UsersDeleteComponent,
    UsersAddComponent,
    UsersRolesPermissionsComponent,
    UsersProfileComponent,
    UsersChangePasswordComponent,
  ],
  imports: [
    CommonModule,
    UsersManagementRoutingModule,
    AlertModule,
    ButtonModule,
    TableModule,
    CardModule,
    GridModule,
    IconModule,
    FormsModule,
    ReactiveFormsModule,
    NgxSpinnerModule,
    NavModule,
    TabsModule,
    NgbModule,
    MatIconModule,
    MatSortModule,
    SharedTableCaseModule,
    DesignSystemModule,
  ],
})
export class UsersManagementModule { }
