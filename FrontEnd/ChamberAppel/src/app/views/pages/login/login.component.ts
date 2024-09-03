import { FormControl, FormGroup, ReactiveFormsModule, Validators } from '@angular/forms';
import { Component, OnInit } from '@angular/core';
import { NgStyle } from '@angular/common';
import { ContainerComponent, RowComponent, ColComponent, CardGroupComponent, TextColorDirective, CardComponent, CardBodyComponent, FormDirective, InputGroupComponent, InputGroupTextDirective, FormControlDirective, ButtonDirective, FormModule } from '@coreui/angular';
import { ToastrService } from 'ngx-toastr';

@Component({
  selector: 'app-login',
  templateUrl: './login.component.html',
  styleUrls: ['./login.component.scss'],
  standalone: true,
  imports: [NgStyle, ReactiveFormsModule, FormModule]
  // imports: [ContainerComponent, RowComponent, ColComponent, CardGroupComponent, TextColorDirective, CardComponent, CardBodyComponent, FormDirective, InputGroupComponent, InputGroupTextDirective, IconDirective, FormControlDirective, ButtonDirective, NgStyle]
})
export class LoginComponent implements OnInit {


  constructor(private toastr: ToastrService) { }

  ReactiveForm = new FormGroup({
    login: new FormControl(),
    password: new FormControl(),
  });

  ngOnInit(): void {

  }

  //send login and password should be crypted
  Login() {
    if (this.ReactiveForm.valid) {
      this.toastr.success('Login', 'Login : ', this.ReactiveForm.getRawValue().login as any);
    } else this.ReactiveForm.markAllAsTouched();
  }
}
