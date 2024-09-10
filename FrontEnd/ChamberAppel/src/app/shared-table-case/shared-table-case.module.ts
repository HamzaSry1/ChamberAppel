import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';
import { SharedTableCaseRoutingModule } from './shared-table-case-routing.module';
import { TableNoDataComponent } from './table-no-data/table-no-data.component';
import { TableLoadingComponent } from './table-loading/table-loading.component';
import { TableErrorComponent } from './table-error/table-error.component';

@NgModule({
  declarations: [TableNoDataComponent, TableLoadingComponent, TableErrorComponent],
  exports: [TableNoDataComponent, TableLoadingComponent, TableErrorComponent],
  imports: [CommonModule, SharedTableCaseRoutingModule],
})
export class SharedTableCaseModule { }
