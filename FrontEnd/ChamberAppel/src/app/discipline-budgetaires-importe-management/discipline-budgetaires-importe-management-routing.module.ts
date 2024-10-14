import { NgModule } from '@angular/core';
import { RouterModule, Routes } from '@angular/router';
import { DisciplineBudgetaireIndexComponent } from './discipline-budgetaire-index/discipline-budgetaire-index.component';

const routes: Routes = [
  {
    path: '',
    component: DisciplineBudgetaireIndexComponent,
  },
];

@NgModule({
  imports: [RouterModule.forChild(routes)],
  exports: [RouterModule]
})
export class DisciplineBudgetairesImporteManagementRoutingModule { }
