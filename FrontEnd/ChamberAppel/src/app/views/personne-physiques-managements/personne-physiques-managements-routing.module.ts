import { NgModule } from '@angular/core';
import { RouterModule, Routes } from '@angular/router';
import { PersonnePhysiqueListComponent } from './personne-physique-list/personne-physique-list.component';
import { PersonnePhysiqueDeleteComponent } from './personne-physique-delete/personne-physique-delete.component';
import { PersonnePhysiqueDetailComponent } from './personne-physique-detail/personne-physique-detail.component';
import { PersonnePhysiqueEditComponent } from './personne-physique-edit/personne-physique-edit.component';
import { PersonnePhysiqueAddComponent } from './personne-physique-add/personne-physique-add.component';

const routes: Routes = [
  {
    path: '',
    component: PersonnePhysiqueListComponent,
  },
  {
    path: 'ajouter',
    component: PersonnePhysiqueAddComponent,
  },
  {
    path: 'modifier/:id',
    component: PersonnePhysiqueEditComponent,
  },
  {
    path: 'supprimer/:id',
    component: PersonnePhysiqueDeleteComponent,
  },
  {
    path: 'detail/:id',
    component: PersonnePhysiqueDetailComponent,
  },
];

@NgModule({
  imports: [RouterModule.forChild(routes)],
  exports: [RouterModule],
})
export class PersonnePhysiquesManagementsRoutingModule {}
