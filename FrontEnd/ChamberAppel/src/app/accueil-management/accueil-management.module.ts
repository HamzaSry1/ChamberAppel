import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';
import { AccueilManagementRoutingModule } from './accueil-management-routing.module';
import { IndexComponent } from './index/index.component';

@NgModule({
  declarations: [IndexComponent],
  imports: [CommonModule, AccueilManagementRoutingModule],
})
export class AccueilManagementModule { }
