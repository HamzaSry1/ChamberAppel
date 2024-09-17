import { Role } from '../../generatedapis/models/Role';
import { RolesService } from '../../generatedapis/services/RolesService';
import { Component } from '@angular/core';
import { FormControl, FormGroup, Validators } from '@angular/forms';
import { ActivatedRoute, Router } from '@angular/router';
import { Guid } from 'guid-typescript';
import { NgxSpinnerService } from 'ngx-spinner';
import { Const } from 'src/app/Helpers/Const';
import { AppMessageService } from 'src/app/app-message.service';
import { AuthService } from 'src/app/auth/auth.service';
import { Features } from 'src/app/auth/permissions';

@Component({
  selector: 'app-roles-edit',
  templateUrl: './roles-edit.component.html',
  styleUrls: ['./roles-edit.component.scss'],
})
export class RolesEditComponent {
  public features = {
    Edit: this.authService.checkPermission(Features.Roles.Update),
  };
  public validationMessages: any = Const.ValidationMessages;
  Id!: string;
  constructor(
    private _activeRoute: ActivatedRoute,
    private authService: AuthService,
    private _notify: AppMessageService,
    private _router: Router,
    private _loader: NgxSpinnerService,
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
    code: new FormControl('', Validators.required),
    label: new FormControl('', Validators.required),
    isArchive: new FormControl(1),
  });

  Get(id: string) {
    this._loader.show();
    RolesService.getApiRolesGetById(id)
      .then((result) => {
        this.Reactiveform.setValue({
          id: result.data?.id ?? '',
          code: result.data?.code ?? '',
          label: result.data?.label ?? '',
          isArchive: result.data?.isActive ?? 0,
        });
      })
      .finally(() => this._loader.hide());
  }

  Save() {
    if (this.Reactiveform.valid) {
      RolesService.putApiRolesUpdateAsync(this.Reactiveform.getRawValue() as Role)
        .then(() => {
          this._notify.Success(AppMessageService.Edit);
          this._router.navigate(['/roles']);
        })
        .catch(() => {
          this._notify.Error(AppMessageService.ErrorAddEdit);
        });
    }
  }
}
