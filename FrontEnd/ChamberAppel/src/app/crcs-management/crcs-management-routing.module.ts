import { NgModule } from '@angular/core';
import { RouterModule, Routes } from '@angular/router';
import { CrcListComponent } from './crc-list/crc-list.component';
import { CrcAddComponent } from './crc-add/crc-add.component';
import { CrcEditComponent } from './crc-edit/crc-edit.component';
import { CrcDetailComponent } from './crc-detail/crc-detail.component';
import { CrcDeleteComponent } from './crc-delete/crc-delete.component';

const routes: Routes = [
  {
    path: "",
    component: CrcListComponent
  },
  {
    path: "ajouter",
    component: CrcAddComponent
  },
  {
    path: "modifier/:id",
    component: CrcEditComponent
  },
  {
    path: "detail/:id",
    component: CrcDetailComponent
  },
  {
    path: "supprimer/:id",
    component: CrcDeleteComponent
  },
];

@NgModule({
  imports: [RouterModule.forChild(routes)],
  exports: [RouterModule]
})
export class CrcsManagementRoutingModule { }
