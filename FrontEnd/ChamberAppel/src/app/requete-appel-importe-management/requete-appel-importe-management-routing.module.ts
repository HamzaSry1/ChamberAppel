import { NgModule } from '@angular/core';
import { RouterModule, Routes } from '@angular/router';
import { RequeteIndexComponent } from './requete-index/requete-index.component';

const routes: Routes = [
  {
    path: '',
    component: RequeteIndexComponent,
  },
];

@NgModule({
  imports: [RouterModule.forChild(routes)],
  exports: [RouterModule]
})
export class RequeteAppelImporteManagementRoutingModule { }
