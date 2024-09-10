import { NgModule } from '@angular/core';
import { RouterModule, Routes } from '@angular/router';
import { PersonnePhysiqueAddComponent } from './personne-physique-add/personne-physique-add.component';
import { PersonnePhysiqueDetailComponent } from './personne-physique-detail/personne-physique-detail.component';
import { PersonnePhysiqueDeleteComponent } from './personne-physique-delete/personne-physique-delete.component';
import { PersonnePhysiqueEditComponent } from './personne-physique-edit/personne-physique-edit.component';

const routes: Routes = [
  {
    path: 'ajouter',
    component: PersonnePhysiqueAddComponent,
  },
  {
    path: 'detail/:id',
    component: PersonnePhysiqueDetailComponent,
  },
  {
    path: 'supprimer/:id',
    component: PersonnePhysiqueDeleteComponent,
  },
  {
    path: 'modifier/:id',
    component: PersonnePhysiqueEditComponent,
  },
];

@NgModule({
  imports: [RouterModule.forChild(routes)],
  exports: [RouterModule],
})
export class PersonnePhysiquesManagementRoutingModule {}
