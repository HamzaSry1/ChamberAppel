import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';

import { ChamberAppelManagementRoutingModule } from './chamber-appel-management-routing.module';
import { ChamberAppelFormComponent } from './chamber-appel-form/chamber-appel-form.component';
import { ChamberAppelDeleteComponent } from './chamber-appel-delete/chamber-appel-delete.component';
import { ChamberAppelDetailComponent } from './chamber-appel-detail/chamber-appel-detail.component';
import { ChamberAppelEditComponent } from './chamber-appel-edit/chamber-appel-edit.component';
import { ChamberAppelListComponent } from './chamber-appel-list/chamber-appel-list.component';
import { ChamberAppelAddComponent } from './chamber-appel-add/chamber-appel-add.component';
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
    ChamberAppelFormComponent,
    ChamberAppelDeleteComponent,
    ChamberAppelDetailComponent,
    ChamberAppelEditComponent,
    ChamberAppelListComponent,
    ChamberAppelAddComponent,
  ],
  imports: [
    CommonModule,
    ChamberAppelManagementRoutingModule,
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
})
export class ChamberAppelManagementModule {}
