import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';

import { PermissionsManagementRoutingModule } from './permissions-management-routing.module';
import { PermissionsAddComponent } from './permissions-add/permissions-add.component';
import { PermissionsEditComponent } from './permissions-edit/permissions-edit.component';
import { PermissionsDeleteComponent } from './permissions-delete/permissions-delete.component';
import { PermissionsDetailComponent } from './permissions-detail/permissions-detail.component';
import { PermissionsListComponent } from './permissions-list/permissions-list.component';
import { AlertModule, ButtonModule, CardModule, GridModule, TableModule } from '@coreui/angular';
import { IconModule } from '@coreui/icons-angular';
import { FormsModule, ReactiveFormsModule } from '@angular/forms';
import { NgxSpinnerModule } from 'ngx-spinner';
import { NgbModule } from '@ng-bootstrap/ng-bootstrap';
import { MatSortModule } from '@angular/material/sort';
import { MatIconModule } from '@angular/material/icon';
import { SharedTableCaseModule } from '../shared-table-case/shared-table-case.module';
import { DesignSystemModule } from '../design-system/design-system.module';
import { PermissionsFormComponent } from './permissions-form/permissions-form.component';

@NgModule({
  declarations: [PermissionsAddComponent, PermissionsEditComponent, PermissionsDeleteComponent, PermissionsDetailComponent, PermissionsListComponent, PermissionsFormComponent],
  imports: [CommonModule, PermissionsManagementRoutingModule, AlertModule, ButtonModule, TableModule, NgxSpinnerModule, CardModule, GridModule, IconModule, FormsModule, NgbModule, MatIconModule, MatSortModule, ReactiveFormsModule, SharedTableCaseModule, DesignSystemModule],
})
export class PermissionsManagementModule { }
