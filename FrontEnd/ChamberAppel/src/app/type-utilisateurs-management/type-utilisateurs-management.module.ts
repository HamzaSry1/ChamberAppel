import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';
import { IconModule } from '@coreui/icons-angular';
import { FormsModule, ReactiveFormsModule } from '@angular/forms';
import { NgxSpinnerModule } from 'ngx-spinner';
import { NgbModule } from '@ng-bootstrap/ng-bootstrap';
import { MatSortModule } from '@angular/material/sort';
import { MatIconModule } from '@angular/material/icon';
import { SharedTableCaseModule } from '../shared-table-case/shared-table-case.module';
import { DesignSystemModule } from '../design-system/design-system.module';

import { TypeUtilisateursManagementRoutingModule } from './type-utilisateurs-management-routing.module';
import { TypeUtilisateurAddComponent } from './type-utilisateur-add/type-utilisateur-add.component';
import { TypeUtilisateurEditComponent } from './type-utilisateur-edit/type-utilisateur-edit.component';
import { TypeUtilisateurDeleteComponent } from './type-utilisateur-delete/type-utilisateur-delete.component';
import { TypeUtilisateurDetailComponent } from './type-utilisateur-detail/type-utilisateur-detail.component';
import { TypeUtilisateurFormComponent } from './type-utilisateur-form/type-utilisateur-form.component';
import { TypeUtilisateurListComponent } from './type-utilisateur-list/type-utilisateur-list.component';


@NgModule({
  declarations: [
    TypeUtilisateurAddComponent,
    TypeUtilisateurEditComponent,
    TypeUtilisateurDeleteComponent,
    TypeUtilisateurDetailComponent,
    TypeUtilisateurFormComponent,
    TypeUtilisateurListComponent
  ],
  imports: [
    CommonModule,
    TypeUtilisateursManagementRoutingModule
    , NgxSpinnerModule, IconModule, FormsModule, NgbModule, MatIconModule, MatSortModule, ReactiveFormsModule, SharedTableCaseModule, DesignSystemModule
  ]
})
export class TypeUtilisateursManagementModule { }
