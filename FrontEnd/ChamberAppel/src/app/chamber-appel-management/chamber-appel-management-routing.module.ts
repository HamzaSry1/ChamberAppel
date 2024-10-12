import { NgModule } from '@angular/core';
import { RouterModule, Routes } from '@angular/router';
import { ChamberAppelListComponent } from './chamber-appel-list/chamber-appel-list.component';
import { ChamberAppelAddComponent } from './chamber-appel-add/chamber-appel-add.component';
import { ChamberAppelDeleteComponent } from './chamber-appel-delete/chamber-appel-delete.component';
import { ChamberAppelEditComponent } from './chamber-appel-edit/chamber-appel-edit.component';
import { ChamberAppelDetailComponent } from './chamber-appel-detail/chamber-appel-detail.component';

const routes: Routes = [
  {
    path: '',
    component: ChamberAppelListComponent,
  },
  {
    path: 'ajouter',
    component: ChamberAppelAddComponent,
  },
  {
    path: 'supprimer/:id',
    component: ChamberAppelDeleteComponent,
  },
  {
    path: 'modifier/:id',
    component: ChamberAppelEditComponent,
  },
  {
    path: 'detail/:id',
    component: ChamberAppelDetailComponent,
  },
];

@NgModule({
  imports: [RouterModule.forChild(routes)],
  exports: [RouterModule]
})
export class ChamberAppelManagementRoutingModule { }
