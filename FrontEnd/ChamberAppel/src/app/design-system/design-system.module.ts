import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';
import { PageActionHeaderComponent } from './page-action-header/page-action-header.component';
import { HeaderActionButtonComponent } from './header-action-button/header-action-button.component';
import { FormsModule, ReactiveFormsModule } from '@angular/forms';
import { MatDialogModule } from '@angular/material/dialog';
import { SharedTableCaseModule } from '../shared-table-case/shared-table-case.module';
import { MatTableModule } from '@angular/material/table';
import { MatSortModule } from '@angular/material/sort';
import { MatIconModule } from '@angular/material/icon';
import { NgbModule } from '@ng-bootstrap/ng-bootstrap';
import { RouterModule } from '@angular/router';

@NgModule({
  declarations: [
    PageActionHeaderComponent,
    HeaderActionButtonComponent,
  ],
  imports: [CommonModule, FormsModule, ReactiveFormsModule, MatDialogModule, SharedTableCaseModule, MatTableModule, MatSortModule, NgbModule, MatIconModule, RouterModule],
  exports: [
    PageActionHeaderComponent,
    HeaderActionButtonComponent,
  ],
})
export class DesignSystemModule { }
