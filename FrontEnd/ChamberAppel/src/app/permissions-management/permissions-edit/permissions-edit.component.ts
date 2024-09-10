import { Component } from '@angular/core';
import { FormControl, FormGroup, Validators } from '@angular/forms';
import { ActivatedRoute, Router } from '@angular/router';
import { AppMessageService } from 'src/app/app-message.service';
import { Permission } from '../../generatedapis/models/Permission';
import { PermissionsService } from '../../generatedapis/services/PermissionsService';
import { NgxSpinnerService } from 'ngx-spinner';
import { Guid } from 'guid-typescript';
import { AuthService } from 'src/app/auth/auth.service';
import { Const } from 'src/app/Helpers/Const';
import { Features } from 'src/app/auth/permissions';

@Component({
  selector: 'app-permissions-edit',
  templateUrl: './permissions-edit.component.html',
  styleUrls: ['./permissions-edit.component.scss'],
})
export class PermissionsEditComponent {
  public features = {
    Edit: this.authService.checkPermission(Features.Permissions.Update),
  };
  public validationMessages: any = Const.ValidationMessages;
  Id!: string;
  constructor(
    private _activeRoute: ActivatedRoute,
    private authService: AuthService,
    private _notify: AppMessageService,
    private _loader: NgxSpinnerService,
    private _router: Router,
  ) {}
  ngOnInit(): void {
    this.Id = this._activeRoute.snapshot.params['id'];
    this.Get(this.Id);
  }

  Reactiveform = new FormGroup({
    id: new FormControl({
      value: Guid.EMPTY,
      disabled: true,
    }),
    label: new FormControl('', Validators.required),
    code: new FormControl('', Validators.required),
    groupe: new FormControl('', Validators.required),
    description: new FormControl(''),
    isArchive: new FormControl(false),
  });

  Get(id: string) {
    this._loader.show();
    PermissionsService.getApiPermissionsGetById(id)
      .then((result) => {
        const data = result.data as Permission;
        this.Reactiveform.setValue({
          id: data.id as string,
          label: data.label as string,
          code: data.code as string,
          groupe: data.groupe as string,
          description: data.description as string,
          isArchive: data.isArchive as boolean,
        });
      })
      .finally(() => this._loader.hide());
  }

  Save() {
    if (this.Reactiveform.valid) {
      PermissionsService.postApiPermissionsUpdate(this.Reactiveform.getRawValue() as Permission)
        .then(() => {
          this._notify.Success(AppMessageService.Edit);
          this._router.navigate(['/permissions']);
        })
        .catch(() => {
          this._notify.Error(AppMessageService.ErrorAddEdit);
        });
    }
  }
}
