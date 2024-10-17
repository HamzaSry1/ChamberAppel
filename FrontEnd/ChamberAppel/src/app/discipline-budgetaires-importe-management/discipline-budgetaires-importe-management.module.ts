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

import { DisciplineBudgetairesImporteManagementRoutingModule } from './discipline-budgetaires-importe-management-routing.module';
import { DisciplineBudgetaireIndexComponent } from './discipline-budgetaire-index/discipline-budgetaire-index.component';
import { DisciplineBudgetaireValidationComponent } from './discipline-budgetaire-validation/discipline-budgetaire-validation.component';
import { DisciplineBudgetaireUploadComponent } from './discipline-budgetaire-upload/discipline-budgetaire-upload.component';


@NgModule({
  declarations: [
    DisciplineBudgetaireIndexComponent,
    DisciplineBudgetaireValidationComponent,
    DisciplineBudgetaireUploadComponent
  ],
  imports: [
    CommonModule,
    DisciplineBudgetairesImporteManagementRoutingModule,
    NgxSpinnerModule,
    IconModule,
    MatSortModule,
    FormsModule,
    NgbModule,
    MatIconModule,
    ReactiveFormsModule,
    SharedTableCaseModule,
    DesignSystemModule,
  ]
})
export class DisciplineBudgetairesImporteManagementModule { }
