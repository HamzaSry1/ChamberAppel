import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';
import { IconModule } from '@coreui/icons-angular';
import { NgxSpinnerModule } from 'ngx-spinner';
import { NgbModule } from '@ng-bootstrap/ng-bootstrap';
import { MatIconModule } from '@angular/material/icon';
import { MatSortModule } from '@angular/material/sort';
import { SharedTableCaseModule } from '../shared-table-case/shared-table-case.module';
import { DesignSystemModule } from '../design-system/design-system.module';
import { AlertModule, ButtonModule, CardModule, GridModule, TableModule } from '@coreui/angular';


import { ChamberAppelDisciplineBudgetairesManagementRoutingModule } from './chamber-appel-discipline-budgetaires-management-routing.module';
import { ChamberAppelDiscBudgAddComponent } from './chamber-appel-disc-budg-add/chamber-appel-disc-budg-add.component';
import { ChamberAppelDiscBudgEditComponent } from './chamber-appel-disc-budg-edit/chamber-appel-disc-budg-edit.component';
import { ChamberAppelDiscBudgDeleteComponent } from './chamber-appel-disc-budg-delete/chamber-appel-disc-budg-delete.component';
import { ChamberAppelDiscBudgDetailComponent } from './chamber-appel-disc-budg-detail/chamber-appel-disc-budg-detail.component';
import { ChamberAppelDiscBudgFormComponent } from './chamber-appel-disc-budg-form/chamber-appel-disc-budg-form.component';
import { ChamberAppelDiscBudgListComponent } from './chamber-appel-disc-budg-list/chamber-appel-disc-budg-list.component';
import { FormsModule, ReactiveFormsModule } from '@angular/forms';


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
    ChamberAppelDisciplineBudgetairesManagementRoutingModule,
    AlertModule, ButtonModule, MatIconModule, MatSortModule, TableModule, CardModule, NgbModule, FormsModule, GridModule, IconModule, NgxSpinnerModule, ReactiveFormsModule, SharedTableCaseModule, DesignSystemModule
  ]
})
export class ChamberAppelDisciplineBudgetairesManagementModule { }
