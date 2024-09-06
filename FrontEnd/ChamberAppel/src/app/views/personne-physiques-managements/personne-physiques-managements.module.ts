import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';
import { FormsModule, ReactiveFormsModule } from '@angular/forms';
import { PersonnePhysiquesManagementsRoutingModule } from './personne-physiques-managements-routing.module';
import { PersonnePhysiqueListComponent } from './personne-physique-list/personne-physique-list.component';
import { PersonnePhysiqueAddComponent } from './personne-physique-add/personne-physique-add.component';
import { PersonnePhysiqueEditComponent } from './personne-physique-edit/personne-physique-edit.component';
import { PersonnePhysiqueDeleteComponent } from './personne-physique-delete/personne-physique-delete.component';
import { PersonnePhysiqueDetailComponent } from './personne-physique-detail/personne-physique-detail.component';
import { PersonnePhysiqueFormComponent } from './personne-physique-form/personne-physique-form.component';


@NgModule({
  declarations: [PersonnePhysiqueListComponent , PersonnePhysiqueAddComponent , PersonnePhysiqueEditComponent , PersonnePhysiqueDeleteComponent , PersonnePhysiqueDetailComponent , PersonnePhysiqueFormComponent],
  imports: [
    CommonModule,
    PersonnePhysiquesManagementsRoutingModule,
    ReactiveFormsModule,
    FormsModule,
  ]
})
export class PersonnePhysiquesManagementsModule { }
