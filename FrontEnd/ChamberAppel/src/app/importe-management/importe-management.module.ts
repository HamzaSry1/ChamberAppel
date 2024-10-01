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
import { ImporteManagementRoutingModule } from './importe-management-routing.module';
import { ImporteIndexComponent } from './importe-index/importe-index.component';
import { ImporteMargeComponent } from './importe-marge/importe-marge.component';
import { ImporteValidationComponent } from './importe-validation/importe-validation.component';
import { ImporteUploadComponent } from './importe-upload/importe-upload.component';


@NgModule({
  declarations: [
    ImporteIndexComponent,
    ImporteMargeComponent,
    ImporteValidationComponent,
    ImporteUploadComponent
  ],
  imports: [
    CommonModule,
    ImporteManagementRoutingModule,
    NgxSpinnerModule, IconModule, MatSortModule, FormsModule, NgbModule, MatIconModule, ReactiveFormsModule, SharedTableCaseModule, DesignSystemModule
  ]
})
export class ImporteManagementModule { }
