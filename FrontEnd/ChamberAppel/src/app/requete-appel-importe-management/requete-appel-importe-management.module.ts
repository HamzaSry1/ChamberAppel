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

import { RequeteAppelImporteManagementRoutingModule } from './requete-appel-importe-management-routing.module';
import { RequeteIndexComponent } from './requete-index/requete-index.component';
import { RequeteValidationComponent } from './requete-validation/requete-validation.component';
import { RequeteUploadComponent } from './requete-upload/requete-upload.component';

@NgModule({
  declarations: [
    RequeteIndexComponent,
    RequeteValidationComponent,
    RequeteUploadComponent,
  ],
  imports: [
    CommonModule,
    RequeteAppelImporteManagementRoutingModule,
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
export class RequeteAppelImporteManagementModule {}
