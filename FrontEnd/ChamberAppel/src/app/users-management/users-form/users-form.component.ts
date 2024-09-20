import { Component, EventEmitter, Input, OnInit, Output } from '@angular/core';
import { FormControl, FormGroup, Validators } from '@angular/forms';
import { ActivatedRoute } from '@angular/router';
import { Guid } from 'guid-typescript';
import { NgxSpinnerService } from 'ngx-spinner';
import { AppMessageService } from 'src/app/app-message.service';
import { AuthService } from 'src/app/auth/auth.service';
import { DtoUtilisateurApiResponse } from 'src/app/generatedapis/models/DtoUtilisateurApiResponse';
import { HttpStatusCode } from 'src/app/generatedapis/models/HttpStatusCode';
import { UtilisateursService } from 'src/app/generatedapis/services/UtilisateursService';
import { Const } from 'src/app/Helpers/Const';
import { Validator } from 'src/app/Helpers/custom-validation';
import { ButtonStyle } from 'src/app/shared/button-style';

@Component({
  selector: 'app-users-form',
  templateUrl: './users-form.component.html',
  styleUrls: ['./users-form.component.scss']
})
export class UsersFormComponent implements OnInit {

  public Id!: string;
  public validationMessages = Const.ValidationMessages;
  public DefaultSelectName!: string;
  public AddOrEditButtonStyle!: string;
  public DeleteButtonStyle = ButtonStyle.danger;
  public ReturnButtonStyle = ButtonStyle.secondary;
  @Input() title!: string;
  @Input() titleMobile!: string;
  @Input() formIsDisabled!: boolean;
  @Input() IsCreateOrUpdate!: boolean;
  @Input() IsDelete!: boolean;
  @Output() Save: EventEmitter<any> = new EventEmitter();
  @Output() Delete: EventEmitter<any> = new EventEmitter();

  constructor(private _notify: AppMessageService, private _authService: AuthService, private _loader: NgxSpinnerService, private _activatedRouter: ActivatedRoute) {
    this.Id = this._activatedRouter.snapshot.params['id'];
  }

  ngOnInit(): void {
    this.DefaultSelectName = this._notify.DefaultSelectOption;
    if (this.Id != null && this.Id != undefined) {
      this.GetDataById(this.Id);
    }
    // Create
    if (this.IsCreateOrUpdate == true && this.Id == null) {
      this.AddOrEditButtonStyle = ButtonStyle.primary;
    } else {
      this.AddOrEditButtonStyle = ButtonStyle.success;
      // Remove password validation for update
      this.ReactiveForm.get('password')?.clearValidators();
      this.ReactiveForm.get('password')?.updateValueAndValidity();
    }
    if (this.formIsDisabled) {
      this.ReactiveForm.disable();
    }
  }

  ReactiveForm = new FormGroup({
    id: new FormControl({
      value: Guid.EMPTY,
      disabled: true,
    }),
    personnePhysiqueId: new FormControl({
      value: Guid.EMPTY,
      disabled: true,
    }),
    nom: new FormControl('', Validators.required),
    prenom: new FormControl('', Validators.required),
    nomArabe: new FormControl(''),
    prenomArabe: new FormControl(''),
    email: new FormControl('', [
      Validators.required,
      Validators.email,
      Validator.emailIsCdc,
    ]),
    login: new FormControl('', Validators.required),
    password: new FormControl('', [
      Validators.required,
    ]),
    isActive: new FormControl(1),
    updatedBy: new FormControl(''),
    updateTime: new FormControl(),
  });

  // Validator.passwordValidator,

  GetDataById(Id: string) {
    this._loader.show();
    UtilisateursService.getApiUtilisateursGetByIdAsync(Id).then((res: DtoUtilisateurApiResponse) => {
      if (res.statusCode == HttpStatusCode._200) {
        this.ReactiveForm.patchValue({
          id: res.data?.id,
          nom: res.data?.nom ?? "",
          prenom: res.data?.prenom ?? "",
          nomArabe: res.data?.nomArabe ?? "",
          prenomArabe: res.data?.prenomArabe ?? "",
          email: res.data?.email ?? "",
          password: res.data?.password,
          login: res.data?.login ?? "",
          updatedBy: res.data?.updatedBy,
          isActive: res.data?.isActive
        })
      } else {
        this._notify.Error(AppMessageService.ServerError)
      }
    }).finally(() => this._loader.hide())
  }

  OnSave() {
    if (this.ReactiveForm.valid) {
      this.ReactiveForm.patchValue({
        updatedBy: this._authService.GetCurrentUserName(),
      });

      this.Save.emit(this.ReactiveForm.getRawValue())
    }
    else this.ReactiveForm.markAllAsTouched();
  }

  OnDelete() {
    this.Delete.emit(this.ReactiveForm.getRawValue())
  }
}
