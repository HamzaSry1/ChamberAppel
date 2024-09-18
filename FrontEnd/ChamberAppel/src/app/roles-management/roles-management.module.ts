import { FormsModule, ReactiveFormsModule } from '@angular/forms';
import { AlertModule, ButtonModule, CardModule, GridModule, NavModule, TableModule, TabsModule } from '@coreui/angular';
import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';
import { RolesManagementRoutingModule } from './roles-management-routing.module';
import { RolesListComponent } from './roles-list/roles-list.component';
import { RolesAddComponent } from './roles-add/roles-add.component';
import { RolesEditComponent } from './roles-edit/roles-edit.component';
import { RolesDetailComponent } from './roles-detail/roles-detail.component';
import { RolesDeleteComponent } from './roles-delete/roles-delete.component';
import { RolesPermissionsComponent } from './roles-permissions/roles-permissions.component';
import { IconModule } from '@coreui/icons-angular';
import { NgxSpinnerModule } from 'ngx-spinner';
import { NgbModule } from '@ng-bootstrap/ng-bootstrap';
import { MatIconModule } from '@angular/material/icon';
import { MatSortModule } from '@angular/material/sort';
import { SharedTableCaseModule } from '../shared-table-case/shared-table-case.module';
import { DesignSystemModule } from '../design-system/design-system.module';
import { RolesFormComponent } from './roles-form/roles-form.component';

@NgModule({
  declarations: [RolesListComponent, RolesAddComponent, RolesEditComponent, RolesDetailComponent, RolesDeleteComponent, RolesPermissionsComponent, RolesFormComponent],
  imports: [CommonModule, RolesManagementRoutingModule, AlertModule, ButtonModule, MatIconModule, MatSortModule, TableModule, CardModule, NgbModule, FormsModule, GridModule, IconModule, NgxSpinnerModule, ReactiveFormsModule, SharedTableCaseModule, DesignSystemModule],
})
export class RolesManagementModule {}
