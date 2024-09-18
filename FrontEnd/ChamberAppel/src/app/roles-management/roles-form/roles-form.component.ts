import { Component, EventEmitter, Input, OnInit, Output } from '@angular/core';
import { FormControl, FormGroup, Validators } from '@angular/forms';
import { ActivatedRoute } from '@angular/router';
import { Guid } from 'guid-typescript';
import { NgxSpinnerService } from 'ngx-spinner';
import { AppMessageService } from 'src/app/app-message.service';
import { HttpStatusCode } from 'src/app/generatedapis/models/HttpStatusCode';
import { RoleApiResponse } from 'src/app/generatedapis/models/RoleApiResponse';
import { RolesService } from 'src/app/generatedapis/services/RolesService';
import { Const } from 'src/app/Helpers/Const';
import { ButtonStyle } from 'src/app/shared/button-style';

@Component({
  selector: 'app-roles-form',
  templateUrl: './roles-form.component.html',
  styleUrls: ['./roles-form.component.scss']
})
export class RolesFormComponent implements OnInit {

  public Id!: string;
  public validationMessages = Const.ValidationMessages;
  public AddOrEditButtonStyle!: string;
  public DeleteButtonStyle = ButtonStyle.Delete;
  public ReturnButtonStyle = ButtonStyle.Return;
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
      this.AddOrEditButtonStyle = ButtonStyle.Create;
    } else {
      this.AddOrEditButtonStyle = ButtonStyle.Update;
    }
    if (this.formIsDisabled) {
      this.ReactiveForm.disable();
    }
  }

  GetDataById(Id: string) {
    this._loader.show();
    RolesService.getApiRolesGetById(this.Id).then((res: RoleApiResponse) => {
      if (res.statusCode == HttpStatusCode._200) {
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