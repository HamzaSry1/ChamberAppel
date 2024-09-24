import { DisciplineBudgetaireListComponent } from './discipline-budgetaire-list/discipline-budgetaire-list.component';
import { NgModule } from '@angular/core';
import { RouterModule, Routes } from '@angular/router';

const routes: Routes = [
  {
    path:"",
    component : DisciplineBudgetaireListComponent,
  },
  {
    path:"ajouter",
    component : DisciplineBudgetaireListComponent,
  },
  {
    path:"supprimer",
    component : DisciplineBudgetaireListComponent,
  },
  {
    path:"modifier",
    component : DisciplineBudgetaireListComponent,
  },
  {
    path:"detail/:id",
    component : DisciplineBudgetaireListComponent,
  },
];

@NgModule({
  imports: [RouterModule.forChild(routes)],
  exports: [RouterModule]
})
export class DisciplineBudgetairesManagementRoutingModule { }
