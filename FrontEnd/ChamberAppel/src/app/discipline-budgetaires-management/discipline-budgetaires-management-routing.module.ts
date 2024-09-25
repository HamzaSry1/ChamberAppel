import { DisciplineBudgetaireListComponent } from './discipline-budgetaire-list/discipline-budgetaire-list.component';
import { NgModule } from '@angular/core';
import { RouterModule, Routes } from '@angular/router';
import { DisciplineBudgetaireAddComponent } from './discipline-budgetaire-add/discipline-budgetaire-add.component';
import { DisciplineBudgetaireDeleteComponent } from './discipline-budgetaire-delete/discipline-budgetaire-delete.component';
import { DisciplineBudgetaireEditComponent } from './discipline-budgetaire-edit/discipline-budgetaire-edit.component';
import { DisciplineBudgetaireDetailComponent } from './discipline-budgetaire-detail/discipline-budgetaire-detail.component';

const routes: Routes = [
  {
    path: '',
    component: DisciplineBudgetaireListComponent,
  },
  {
    path: 'ajouter',
    component: DisciplineBudgetaireAddComponent,
  },
  {
    path: 'supprimer/:id',
    component: DisciplineBudgetaireDeleteComponent,
  },
  {
    path: 'modifier/:id',
    component: DisciplineBudgetaireEditComponent,
  },
  {
    path: 'detail/:id',
    component: DisciplineBudgetaireDetailComponent,
  },
];

@NgModule({
  imports: [RouterModule.forChild(routes)],
  exports: [RouterModule],
})
export class DisciplineBudgetairesManagementRoutingModule {}
