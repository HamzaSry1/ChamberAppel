import { NgModule } from '@angular/core';
import { RouterModule, Routes } from '@angular/router';
import { GradeListComponent } from './grade-list/grade-list.component';
import { GradeAddComponent } from './grade-add/grade-add.component';

const routes: Routes = [
  {
    path: "",
    component: GradeListComponent
  },
  {
    path: "ajouter",
    component: GradeAddComponent
  },
  {
    path: "modifier/:id",
    component: GradeAddComponent
  },
  {
    path: "detail/:id",
    component: GradeAddComponent
  },
  {
    path: "supprimer/:id",
    component: GradeAddComponent
  },
];

@NgModule({
  imports: [RouterModule.forChild(routes)],
  exports: [RouterModule]
})
export class TypeGradesManagementRoutingModule { }
