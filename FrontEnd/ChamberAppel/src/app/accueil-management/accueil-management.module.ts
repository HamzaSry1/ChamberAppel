import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';
import { AccueilManagementRoutingModule } from './accueil-management-routing.module';
import { IndexComponent } from './index/index.component';
import { StatistiqueComponent } from './statistique/statistique.component';
import { MenuComponent } from './menu/menu.component';

@NgModule({
  declarations: [IndexComponent, StatistiqueComponent, MenuComponent],
  imports: [CommonModule, AccueilManagementRoutingModule],
})
export class AccueilManagementModule { }
