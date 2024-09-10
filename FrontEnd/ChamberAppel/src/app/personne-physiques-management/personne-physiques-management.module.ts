import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';

import { PersonnePhysiquesManagementRoutingModule } from './personne-physiques-management-routing.module';
import { PersonnePhysiqueAddComponent } from './personne-physique-add/personne-physique-add.component';
import { PersonnePhysiqueEditComponent } from './personne-physique-edit/personne-physique-edit.component';
import { PersonnePhysiqueDetailComponent } from './personne-physique-detail/personne-physique-detail.component';
import { PersonnePhysiqueDeleteComponent } from './personne-physique-delete/personne-physique-delete.component';
import { PersonnePhysiqueFormComponent } from './personne-physique-form/personne-physique-form.component';

import { AlertModule, ButtonModule, CardModule, GridModule, TableModule } from '@coreui/angular';
import { IconModule } from '@coreui/icons-angular';
import { FormsModule, ReactiveFormsModule } from '@angular/forms';
import { NgxSpinnerModule } from 'ngx-spinner';
import { NgbModule } from '@ng-bootstrap/ng-bootstrap';
import { MatDialogModule } from '@angular/material/dialog';
import { MatSortModule } from '@angular/material/sort';
import { MatIconModule } from '@angular/material/icon';
import { SharedTableCaseModule } from '../shared-table-case/shared-table-case.module';
import { DesignSystemModule } from '../design-system/design-system.module';
import { AddLiaisonComponent } from './add-liaison/add-liaison.component';
import { AddLiaisonEnfantComponent } from './add-liaison-enfant/add-liaison-enfant.component';

@NgModule({
  declarations: [PersonnePhysiqueAddComponent, PersonnePhysiqueEditComponent, PersonnePhysiqueDetailComponent, PersonnePhysiqueDeleteComponent, PersonnePhysiqueFormComponent, AddLiaisonComponent, AddLiaisonEnfantComponent],
  imports: [
    CommonModule,
    PersonnePhysiquesManagementRoutingModule,
    AlertModule,
    ButtonModule,
    TableModule,
    NgxSpinnerModule,
    CardModule,
    GridModule,
    IconModule,
    FormsModule,
    NgbModule,
    MatIconModule,
    MatSortModule,
    ReactiveFormsModule,
    SharedTableCaseModule,
    DesignSystemModule,
    MatDialogModule,
  ],
})
export class PersonnePhysiquesManagementModule {}
