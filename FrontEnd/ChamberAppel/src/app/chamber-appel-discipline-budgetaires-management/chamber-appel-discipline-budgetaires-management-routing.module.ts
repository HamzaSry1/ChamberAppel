import { ChamberAppelDiscBudgDetailComponent } from './chamber-appel-disc-budg-detail/chamber-appel-disc-budg-detail.component';
import { NgModule } from '@angular/core';
import { RouterModule, Routes } from '@angular/router';
import { ChamberAppelDiscBudgListComponent } from './chamber-appel-disc-budg-list/chamber-appel-disc-budg-list.component';
import { ChamberAppelDiscBudgAddComponent } from './chamber-appel-disc-budg-add/chamber-appel-disc-budg-add.component';
import { ChamberAppelDiscBudgEditComponent } from './chamber-appel-disc-budg-edit/chamber-appel-disc-budg-edit.component';
import { ChamberAppelDiscBudgDeleteComponent } from './chamber-appel-disc-budg-delete/chamber-appel-disc-budg-delete.component';

const routes: Routes = [
  {
    path: "",
    component: ChamberAppelDiscBudgListComponent,
  },
  {
    path: "ajouter",
    component: ChamberAppelDiscBudgAddComponent,
  },
  {
    path: "modifier/:id",
    component: ChamberAppelDiscBudgEditComponent,
  },
  {
    path: "detail/:id",
    component: ChamberAppelDiscBudgDetailComponent,
  },
  {
    path: "supprimer/:id",
    component: ChamberAppelDiscBudgDeleteComponent,
  },
];

@NgModule({
  imports: [RouterModule.forChild(routes)],
  exports: [RouterModule]
})
export class ChamberAppelDisciplineBudgetairesManagementRoutingModule { }
