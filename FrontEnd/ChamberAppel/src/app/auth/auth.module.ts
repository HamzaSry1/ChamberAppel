import { SharedTableCaseModule } from './../shared-table-case/shared-table-case.module';
import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';
import { ReactiveFormsModule } from '@angular/forms';
import { AuthRoutingModule } from './auth-routing.module';
import { LoginComponent } from './login/login.component';
import { ButtonModule, CardModule, FormModule, GridModule } from '@coreui/angular';
import { IconModule } from '@coreui/icons-angular';
import { ResetPasswordComponent } from './reset-password/reset-password.component';
import { NgxSpinnerModule } from 'ngx-spinner';
@NgModule({
  declarations: [LoginComponent, ResetPasswordComponent],
  imports: [CommonModule, AuthRoutingModule, ReactiveFormsModule, CardModule, ButtonModule, GridModule, IconModule, FormModule, SharedTableCaseModule, NgxSpinnerModule],
})
export class AuthModule {}
