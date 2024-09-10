import { Component } from '@angular/core';
import { FormControl, FormGroup, Validators } from '@angular/forms';
import { ActivatedRoute, Router } from '@angular/router';
import { ConfirmBoxEvokeService } from '@costlydeveloper/ngx-awesome-popup';
import { AppMessageService } from 'src/app/app-message.service';
import { PermissionsService } from '../../generatedapis/services/PermissionsService';
import { Guid } from 'guid-typescript';
import { NgxSpinnerService } from 'ngx-spinner';
import { AuthService } from 'src/app/auth/auth.service';
import { Features } from 'src/app/auth/permissions';

@Component({
  selector: 'app-permissions-delete',
  templateUrl: './permissions-delete.component.html',
  styleUrls: ['./permissions-delete.component.scss'],
})
export class PermissionsDeleteComponent {
  public features = {
    Delete: this.authService.checkPermission(Features.Permissions.Delete),
  };
  Id!: string;
  constructor(
    private _activeRoute: ActivatedRoute,
    private _notify: AppMessageService,
    private authService: AuthService,
    private _loader: NgxSpinnerService,
    private _notifyConfirm: ConfirmBoxEvokeService,
    private _router: Router,
  ) {}
  ngOnInit(): void {
    this.Id = this._activeRoute.snapshot.params['id'];
    this.Get(this.Id);
    this.Reactiveform.disable();
  }

  Reactiveform = new FormGroup({
    id: new FormControl({ value: Guid.EMPTY, disabled: true }),
    code: new FormControl('', Validators.required),
    label: new FormControl('', Validators.required),
    groupe: new FormControl('', Validators.required),
    description: new FormControl(''),
    isArchive: new FormControl(false),
  });

  Get(id: string) {
    this._loader.show();
    PermissionsService.getApiPermissionsGetById(id)
      .then((result) => {
        this.Reactiveform.setValue({
          id: result.data?.id ?? '',
          code: result.data?.code ?? '',
          label: result.data?.label ?? '',
          groupe: result.data?.groupe ?? '',
          description: result.data?.description ?? '',
          isArchive: result.data?.isArchive ?? false,
        });
      })
      .finally(() => this._loader.hide());
  }

  ConfirmDelete() {
    this._notifyConfirm.danger('Supprimer', 'Souhaitez-vous supprimer ' + this.Reactiveform.getRawValue().label + ' définitivement ?', 'Supprimer', 'Fermer').subscribe((resp) => {
      const ClickedButton = resp.clickedButtonID;
      if (ClickedButton == 'supprimer') {
        this.Delete();
      }
    });
  }

  Delete() {
    PermissionsService.postApiPermissionsDelete(this.Reactiveform.getRawValue().id as string)
      .then(() => {
        this._notify.Success(AppMessageService.Delete);
        this._router.navigate(['/permissions']);
      })
      .catch(() => this._notify.Error(AppMessageService.ErrorDelete));
  }
}
