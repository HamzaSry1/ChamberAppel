import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';

import { ChamberAppelDisciplineBudgetairesManagementRoutingModule } from './chamber-appel-discipline-budgetaires-management-routing.module';
import { ChamberAppelDiscBudgAddComponent } from './chamber-appel-disc-budg-add/chamber-appel-disc-budg-add.component';
import { ChamberAppelDiscBudgEditComponent } from './chamber-appel-disc-budg-edit/chamber-appel-disc-budg-edit.component';
import { ChamberAppelDiscBudgDeleteComponent } from './chamber-appel-disc-budg-delete/chamber-appel-disc-budg-delete.component';
import { ChamberAppelDiscBudgDetailComponent } from './chamber-appel-disc-budg-detail/chamber-appel-disc-budg-detail.component';
import { ChamberAppelDiscBudgFormComponent } from './chamber-appel-disc-budg-form/chamber-appel-disc-budg-form.component';
import { ChamberAppelDiscBudgListComponent } from './chamber-appel-disc-budg-list/chamber-appel-disc-budg-list.component';


@NgModule({
  declarations: [
    ChamberAppelDiscBudgAddComponent,
    ChamberAppelDiscBudgEditComponent,
    ChamberAppelDiscBudgDeleteComponent,
    ChamberAppelDiscBudgDetailComponent,
    ChamberAppelDiscBudgFormComponent,
    ChamberAppelDiscBudgListComponent
  ],
  imports: [
    CommonModule,
    ChamberAppelDisciplineBudgetairesManagementRoutingModule
  ]
})
export class ChamberAppelDisciplineBudgetairesManagementModule { }
