import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';

import { DisciplineBudgetairesManagementRoutingModule } from './discipline-budgetaires-management-routing.module';
import { DisciplineBudgetaireAddComponent } from './discipline-budgetaire-add/discipline-budgetaire-add.component';
import { DisciplineBudgetaireEditComponent } from './discipline-budgetaire-edit/discipline-budgetaire-edit.component';
import { DisciplineBudgetaireDeleteComponent } from './discipline-budgetaire-delete/discipline-budgetaire-delete.component';
import { DisciplineBudgetaireDetailComponent } from './discipline-budgetaire-detail/discipline-budgetaire-detail.component';
import { DisciplineBudgetaireListComponent } from './discipline-budgetaire-list/discipline-budgetaire-list.component';
import { DisciplineBudgetaireFormComponent } from './discipline-budgetaire-form/discipline-budgetaire-form.component';


@NgModule({
  declarations: [
    DisciplineBudgetaireAddComponent,
    DisciplineBudgetaireEditComponent,
    DisciplineBudgetaireDeleteComponent,
    DisciplineBudgetaireDetailComponent,
    DisciplineBudgetaireListComponent,
    DisciplineBudgetaireFormComponent
  ],
  imports: [
    CommonModule,
    DisciplineBudgetairesManagementRoutingModule
  ]
})
export class DisciplineBudgetairesManagementModule { }
