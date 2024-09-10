import { Component } from '@angular/core';
import { FormControl, FormGroup, Validators } from '@angular/forms';
import { ActivatedRoute } from '@angular/router';
import { PermissionsService } from '../../generatedapis/services/PermissionsService';
import { Guid } from 'guid-typescript';
import { NgxSpinnerService } from 'ngx-spinner';

@Component({
  selector: 'app-permissions-detail',
  templateUrl: './permissions-detail.component.html',
  styleUrls: ['./permissions-detail.component.scss'],
})
export class PermissionsDetailComponent {
  Id!: string;
  constructor(
    private _activeRoute: ActivatedRoute,
    private _loader: NgxSpinnerService,
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
}
