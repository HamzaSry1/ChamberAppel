import { NgModule } from '@angular/core';
import { RouterModule, Routes } from '@angular/router';
import { IndexComponent } from '../accueil-management/index/index.component';

const routes: Routes = [
  {
    path: 'chamber-appel-importer',
    component: IndexComponent,
  },
  {
    path: '',
    component: IndexComponent,
  },
];

@NgModule({
  imports: [RouterModule.forChild(routes)],
  exports: [RouterModule],
})
export class ChamberAppelImportManagementRoutingModule {}
