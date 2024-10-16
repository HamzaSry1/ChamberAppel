import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';
import { IconModule } from '@coreui/icons-angular';
import { FormsModule, ReactiveFormsModule } from '@angular/forms';
import { NgxSpinnerModule } from 'ngx-spinner';
import { NgbModule } from '@ng-bootstrap/ng-bootstrap';
import { MatSortModule } from '@angular/material/sort';
import { MatIconModule } from '@angular/material/icon';
import { SharedTableCaseModule } from '../shared-table-case/shared-table-case.module';
import { DesignSystemModule } from '../design-system/design-system.module';
import { PermissionsFormComponent } from './permissions-form/permissions-form.component';

import { TypeGradesManagementRoutingModule } from './type-grades-management-routing.module';
import { GradeListComponent } from './grade-list/grade-list.component';
import { GradeAddComponent } from './grade-add/grade-add.component';
import { GradeEditComponent } from './grade-edit/grade-edit.component';
import { GradeDetailComponent } from './grade-detail/grade-detail.component';
import { GradeDeleteComponent } from './grade-delete/grade-delete.component';
import { GradeFormComponent } from './grade-form/grade-form.component';


@NgModule({
  declarations: [
    GradeListComponent,
    GradeAddComponent,
    GradeEditComponent,
    GradeDetailComponent,
    GradeDeleteComponent,
    GradeFormComponent
  ],
  imports: [
    CommonModule,
    TypeGradesManagementRoutingModule,
    , NgxSpinnerModule, IconModule, FormsModule, NgbModule, MatIconModule, MatSortModule, ReactiveFormsModule, SharedTableCaseModule, DesignSystemModule
  ]
})
export class TypeGradesManagementModule { }
