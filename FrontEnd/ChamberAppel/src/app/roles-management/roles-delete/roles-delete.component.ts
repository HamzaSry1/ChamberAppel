import { Component } from '@angular/core';
import { FormControl, FormGroup, Validators } from '@angular/forms';
import { ActivatedRoute, Router } from '@angular/router';
import { ConfirmBoxEvokeService } from '@costlydeveloper/ngx-awesome-popup';
import { AppMessageService } from 'src/app/app-message.service';
import { RolesService } from '../../generatedapis/services/RolesService';
import { Guid } from 'guid-typescript';
import { NgxSpinnerService } from 'ngx-spinner';
import { AuthService } from 'src/app/auth/auth.service';
import { Features } from 'src/app/auth/permissions';

@Component({
  selector: 'app-roles-delete',
  templateUrl: './roles-delete.component.html',
  styleUrls: ['./roles-delete.component.scss'],
})
export class RolesDeleteComponent {
  public features = {
    Delete: this.authService.checkPermission(Features.Roles.Delete),
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
    id: new FormControl({
      value: Guid.EMPTY,
      disabled: true,
    }),
    label: new FormControl('', Validators.required),
    code: new FormControl('', Validators.required),
    isActive: new FormControl(1),
  });

  Get(id: string) {
    this._loader.show();
    RolesService.getApiRolesGetById(id)
      .then((result) => {
        this.Reactiveform.setValue({
          id: result.data?.id ?? '',
          label: result.data?.label ?? '',
          code: result.data?.code ?? '',
          isActive: result.data?.isActive ?? 0,
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
    RolesService.deleteApiRolesDeleteAsync(this.Reactiveform.getRawValue().id as string)
      .then(() => {
        this._notify.Success(AppMessageService.Delete);
        this._router.navigate(['/roles']);
      })
      .catch(() => this._notify.Error(AppMessageService.ErrorDelete));
  }
}
