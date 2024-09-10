import { Component } from '@angular/core';
import { FormControl, FormGroup, Validators } from '@angular/forms';
import { ActivatedRoute } from '@angular/router';
import { RolesService } from '../../generatedapis/services/RolesService';
import { Guid } from 'guid-typescript';
import { NgxSpinnerService } from 'ngx-spinner';

@Component({
  selector: 'app-roles-detail',
  templateUrl: './roles-detail.component.html',
  styleUrls: ['./roles-detail.component.scss'],
})
export class RolesDetailComponent {
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
    id: new FormControl({
      value: Guid.EMPTY,
      disabled: true,
    }),
    label: new FormControl('', Validators.required),
    code: new FormControl('', Validators.required),
    isActive: new FormControl(false),
  });

  Get(id: string) {
    this._loader.show();
    RolesService.getApiRolesGetById(id)
      .then((result) => {
        this.Reactiveform.setValue({
          id: result.data?.id ?? '',
          label: result.data?.label ?? '',
          code: result.data?.code ?? '',
          isActive: result.data?.isArchive ?? false,
        });
      })
      .finally(() => this._loader.hide());
  }
}
