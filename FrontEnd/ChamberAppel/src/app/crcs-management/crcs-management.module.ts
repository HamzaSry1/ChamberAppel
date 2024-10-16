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

import { CrcsManagementRoutingModule } from './crcs-management-routing.module';
import { CrcAddComponent } from './crc-add/crc-add.component';
import { CrcEditComponent } from './crc-edit/crc-edit.component';
import { CrcDetailComponent } from './crc-detail/crc-detail.component';
import { CrcDeleteComponent } from './crc-delete/crc-delete.component';
import { CrcFormComponent } from './crc-form/crc-form.component';
import { CrcListComponent } from './crc-list/crc-list.component';


@NgModule({
  declarations: [
    CrcAddComponent,
    CrcEditComponent,
    CrcDetailComponent,
    CrcDeleteComponent,
    CrcFormComponent,
    CrcListComponent
  ],
  imports: [
    CommonModule,
    CrcsManagementRoutingModule
    , NgxSpinnerModule, IconModule, FormsModule, NgbModule, MatIconModule, MatSortModule, ReactiveFormsModule, SharedTableCaseModule, DesignSystemModule
  ]
})
export class CrcsManagementModule { }
