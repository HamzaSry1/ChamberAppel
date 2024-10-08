import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';
import { DatePipe } from '@angular/common';

import { DisciplineBudgetairesManagementRoutingModule } from './discipline-budgetaires-management-routing.module';
import { DisciplineBudgetaireAddComponent } from './discipline-budgetaire-add/discipline-budgetaire-add.component';
import { DisciplineBudgetaireEditComponent } from './discipline-budgetaire-edit/discipline-budgetaire-edit.component';
import { DisciplineBudgetaireDeleteComponent } from './discipline-budgetaire-delete/discipline-budgetaire-delete.component';
import { DisciplineBudgetaireDetailComponent } from './discipline-budgetaire-detail/discipline-budgetaire-detail.component';
import { DisciplineBudgetaireListComponent } from './discipline-budgetaire-list/discipline-budgetaire-list.component';
import { DisciplineBudgetaireFormComponent } from './discipline-budgetaire-form/discipline-budgetaire-form.component';
import { IconModule } from '@coreui/icons-angular';
import { NgxSpinnerModule } from 'ngx-spinner';
import { NgbModule } from '@ng-bootstrap/ng-bootstrap';
import { MatIconModule } from '@angular/material/icon';
import { MatSortModule } from '@angular/material/sort';
import { SharedTableCaseModule } from '../shared-table-case/shared-table-case.module';
import { DesignSystemModule } from '../design-system/design-system.module';
import { FormsModule, ReactiveFormsModule } from '@angular/forms';
import {
  AlertModule,
  ButtonModule,
  CardModule,
  GridModule,
  NavModule,
  TableModule,
  TabsModule,
} from '@coreui/angular';

@NgModule({
  declarations: [
    DisciplineBudgetaireAddComponent,
    DisciplineBudgetaireEditComponent,
    DisciplineBudgetaireDeleteComponent,
    DisciplineBudgetaireDetailComponent,
    DisciplineBudgetaireListComponent,
    DisciplineBudgetaireFormComponent,
  ],
  imports: [
    CommonModule,
    DisciplineBudgetairesManagementRoutingModule,
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
  providers: [DatePipe],
})
export class DisciplineBudgetairesManagementModule {}
