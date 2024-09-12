import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';
import { AccueilManagementRoutingModule } from './accueil-management-routing.module';
import { IndexComponent } from './index/index.component';
import { ShortcutsComponent } from './shortcuts/shortcuts.component';

@NgModule({
  declarations: [IndexComponent, ShortcutsComponent],
  imports: [CommonModule, AccueilManagementRoutingModule],
})
export class AccueilManagementModule {}
