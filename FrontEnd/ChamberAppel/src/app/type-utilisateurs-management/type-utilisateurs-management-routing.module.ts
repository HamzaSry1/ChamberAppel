import { NgModule } from '@angular/core';
import { RouterModule, Routes } from '@angular/router';
import { TypeUtilisateurListComponent } from './type-utilisateur-list/type-utilisateur-list.component';
import { TypeUtilisateurAddComponent } from './type-utilisateur-add/type-utilisateur-add.component';
import { TypeUtilisateurEditComponent } from './type-utilisateur-edit/type-utilisateur-edit.component';
import { TypeUtilisateurDetailComponent } from './type-utilisateur-detail/type-utilisateur-detail.component';
import { TypeUtilisateurDeleteComponent } from './type-utilisateur-delete/type-utilisateur-delete.component';

const routes: Routes = [
  {
    path: "",
    component: TypeUtilisateurListComponent
  },
  {
    path: "ajouter",
    component: TypeUtilisateurAddComponent
  },
  {
    path: "modifier/:id",
    component: TypeUtilisateurEditComponent
  },
  {
    path: "detail/:id",
    component: TypeUtilisateurDetailComponent
  },
  {
    path: "supprimer/:id",
    component: TypeUtilisateurDeleteComponent
  },
];

@NgModule({
  imports: [RouterModule.forChild(routes)],
  exports: [RouterModule]
})
export class TypeUtilisateursManagementRoutingModule { }
