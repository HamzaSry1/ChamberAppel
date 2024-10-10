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

import { ChamberAppelImportManagementRoutingModule } from './chamber-appel-import-management-routing.module';
import { IndexComponent } from './index/index.component';
import { UploadComponent } from './upload/upload.component';
import { MargeComponent } from './marge/marge.component';
import { ValidationComponent } from './validation/validation.component';

@NgModule({
  declarations: [
    IndexComponent,
    UploadComponent,
    MargeComponent,
    ValidationComponent,
  ],
  imports: [
    CommonModule,
    ChamberAppelImportManagementRoutingModule,
    NgxSpinnerModule,
    IconModule,
    MatSortModule,
    FormsModule,
    NgbModule,
    MatIconModule,
    ReactiveFormsModule,
    SharedTableCaseModule,
    DesignSystemModule,
  ],
})
export class ChamberAppelImportManagementModule {}
