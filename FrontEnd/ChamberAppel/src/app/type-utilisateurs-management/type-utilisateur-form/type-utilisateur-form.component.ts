import { TypeUtilisateursService } from './../../generatedapis/services/TypeUtilisateursService';
import { Component, EventEmitter, Input, OnInit, Output } from '@angular/core';
import { FormControl, FormGroup, Validators } from '@angular/forms';
import { ActivatedRoute } from '@angular/router';
import { Guid } from 'guid-typescript';
import { NgxSpinnerService } from 'ngx-spinner';
import { AppMessageService } from 'src/app/app-message.service';
import { HttpStatusCode } from 'src/app/generatedapis/models/HttpStatusCode';
import { TypeUtilisateurApiResponse } from 'src/app/generatedapis/models/TypeUtilisateurApiResponse';
import { Const } from 'src/app/Helpers/Const';
import { ButtonStyle } from 'src/app/shared/button-style';

@Component({
  selector: 'app-type-utilisateur-form',
  templateUrl: './type-utilisateur-form.component.html',
  styleUrls: ['./type-utilisateur-form.component.scss']
})
export class TypeUtilisateurFormComponent implements OnInit {

  public Id!: string;
  public validationMessages = Const.ValidationMessages;
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

  constructor(private _notify: AppMessageService, private _loader: NgxSpinnerService, private _activatedRouter: ActivatedRoute) {
    this.Id = this._activatedRouter.snapshot.params['id'];
  }

  ReactiveForm = new FormGroup({
    id: new FormControl({
      value: Guid.EMPTY,
      disabled: true,
    }),
    label: new FormControl('', Validators.required),
    code: new FormControl('', Validators.required),
    description: new FormControl(''),
    isActive: new FormControl(1),
  })

  ngOnInit(): void {
    if (this.Id != null && this.Id != undefined) {
      this.GetDataById(this.Id);
    }
    // Create
    if (this.IsCreateOrUpdate == true && this.Id == null) {
      this.AddOrEditButtonStyle = ButtonStyle.primary;
    } else {
      this.AddOrEditButtonStyle = ButtonStyle.success;
    }
    if (this.formIsDisabled) {
      this.ReactiveForm.disable();
    }
  }

  GetDataById(Id: string) {
    this._loader.show();
    TypeUtilisateursService.getApiTypeUtilisateursGetByIdAsync(this.Id).then((res: TypeUtilisateurApiResponse) => {
      if (res.statusCode == HttpStatusCode.OK) {
        this.ReactiveForm.patchValue({
          id: res.data?.id,
          label: res.data?.label ?? "",
          code: res.data?.code ?? "",
          description: res.data?.description ?? "",
          isActive: res.data?.isActive
        })
      } else {
        this._notify.Error(AppMessageService.ServerError)
      }
    }).finally(() => this._loader.hide())
  }

  OnSave() {
    if (this.ReactiveForm.valid) {
      this.Save.emit(this.ReactiveForm.getRawValue())
    }
    else this.ReactiveForm.markAllAsTouched();
  }

  OnDelete() {
    this.Delete.emit(this.ReactiveForm.getRawValue())
  }
}
