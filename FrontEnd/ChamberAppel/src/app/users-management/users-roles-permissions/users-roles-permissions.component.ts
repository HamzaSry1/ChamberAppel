import { Component, OnInit } from '@angular/core';
import { FormArray, FormBuilder, FormControl, FormGroup } from '@angular/forms';
import { ActivatedRoute } from '@angular/router';
import { AppMessageService } from 'src/app/app-message.service';
import { Role } from '../../generatedapis/models/Role';
import { PermissionsService } from '../../generatedapis/services/PermissionsService';
import { RolesService } from '../../generatedapis/services/RolesService';
import { UtilisateursService } from '../../generatedapis/services/UtilisateursService';
import { HttpStatusCode } from 'src/app/generatedapis/models/HttpStatusCode';
import { Permission } from 'src/app/generatedapis/models/Permission';
import { AuthService } from 'src/app/auth/auth.service';
import { Features } from 'src/app/auth/permissions';
import { DtoPermissionGroupe } from 'src/app/generatedapis/models/DtoPermissionGroupe';
import { DtoCheckedListRequest } from 'src/app/generatedapis/models/DtoCheckedListRequest';
import { DtoChecked } from 'src/app/shared/DtoChecked';
import { DtoPermissionGroupeListApiResponse } from 'src/app/generatedapis/models/DtoPermissionGroupeListApiResponse';
import { BooleanApiResponse } from 'src/app/generatedapis/models/BooleanApiResponse';
import { NgxSpinnerService } from 'ngx-spinner';
import { ButtonStyle } from 'src/app/shared/button-style';

@Component({
  selector: 'app-users-roles-permissions',
  templateUrl: './users-roles-permissions.component.html',
  styleUrls: ['./users-roles-permissions.component.scss'],
})
export class UsersRolesPermissionsComponent implements OnInit {
  public features = {
    AddPermissions: this.authService.checkPermission(
      Features.Utilisateurs.AddPermissions
    ),
    AddRoles: this.authService.checkPermission(Features.Utilisateurs.AddRoles),
  };

  public CreateButtonStyle = ButtonStyle.primary;
  public ReturnButtonStyle = ButtonStyle.secondary;

  public Roles!: Role[];
  public Permissions!: DtoPermissionGroupe[];
  public PermissionModel!: DtoCheckedListRequest;
  public RolesModel!: DtoCheckedListRequest;
  public ListPermissionChecked!: DtoChecked[];
  public ListRolesChecked!: string[];
  public UserId!: string;
  public form!: FormGroup;
  public collapsedGroups: boolean[] = [];

  constructor(
    fb: FormBuilder,
    private _notify: AppMessageService,
    private _activeRoute: ActivatedRoute,
    private authService: AuthService,
    private _loader: NgxSpinnerService,
  ) {
    this.form = fb.group({
      selectedPermissions: new FormArray([]),
      selectedRoles: new FormArray([]),
    });
  }

  ngOnInit(): void {
    this.UserId = this._activeRoute.snapshot.params['id'];
    this.LoadPermissions();
    this.LoadRoles();
    this.GetPermissionsIdChecked();
    this.GetRolesIdChecked();
  }

  toggleGroup(index: number) {
    this.collapsedGroups[index] = !this.collapsedGroups[index];
  }

  isGroupCollapsed(index: number): boolean {
    return this.collapsedGroups[index] ?? true;
  }

  toggleGroupPermissions(event: any, groupName: DtoPermissionGroupe) {
    for (
      let index = 0;
      index < (groupName?.permissions?.length ?? 0);
      index++
    ) {
      if (event.target.checked) {
        this.AddPermissionIdAsChecked(
          groupName.permissions?.[index].id ?? '',
          groupName.permissions?.[index].id ?? ''
        );
      } else {
        this.DeletePermissionIdUnChecked(
          groupName.permissions?.[index].id ?? ''
        );
      }
    }
  }

  isGroupIndeterminate(groupName: DtoPermissionGroupe): boolean {
    const selectedPermissions = groupName.permissions?.filter((permission) =>
      this.IsPermissionIdChecked(permission.id)
    );
    return (
      selectedPermissions !== undefined &&
      selectedPermissions.length > 0 &&
      selectedPermissions.length < (groupName.permissions?.length ?? 0)
    );
  }

  AddPermissionIdAsChecked(id: string, group: string) {
    this.ListPermissionChecked.push({ id, group });
  }

  DeletePermissionIdUnChecked(id: string) {
    this.ListPermissionChecked = this.ListPermissionChecked.filter(
      (x) => x.id != id
    );
  }

  IsPermissionIdChecked(PermissionId: string | undefined): boolean {
    if (!this.ListPermissionChecked) {
      return false;
    }
    for (let index = 0; index < this.ListPermissionChecked.length; index++) {
      if (this.ListPermissionChecked[index].id === PermissionId) {
        return true;
      }
    }
    return false;
  }

  IsGroupChecked(group: string | undefined | null): boolean {
    if (!this.ListPermissionChecked) {
      return false;
    }
    for (let index = 0; index < this.ListPermissionChecked.length; index++) {
      if (group && this.ListPermissionChecked[index].group == group) {
        return true;
      }
    }
    return false;
  }

  GetPermissionsIdChecked() {
    this._loader.show();
    return UtilisateursService.getApiUtilisateursGetPermissionsAsync(
      this.UserId
    ).then((result) => {
      this.ListPermissionChecked =
        result.data
          ?.filter((p) => p.id)
          .map((p) => new DtoChecked(p.id || '', p.groupe || '')) ?? [];
      const selected = this.form.controls['selectedPermissions'] as FormArray;
      this.ListPermissionChecked.map((p) => selected.push(new FormControl(p)));
    }).finally(() => this._loader.hide());
  }

  AddRoleIdAsChecked(id: string) {
    this.ListRolesChecked.push(id);
  }

  DeleteRoleIdUnChecked(id: string) {
    this.ListRolesChecked = this.ListRolesChecked.filter((item) => item !== id);
  }

  GetRolesIdChecked() {
    this._loader.show();
    return UtilisateursService.getApiUtilisateursGetRolesAsync(
      this.UserId
    ).then((result) => {
      this.ListRolesChecked = result.data?.map((p) => p.id ?? '') ?? [];
      const selected = this.form.controls['selectedRoles'] as FormArray;
      this.ListRolesChecked.map((r) => selected.push(new FormControl(r)));
    }).finally(() => this._loader.hide());
  }

  FindPermissionById(id: string): Permission | undefined {
    for (let index = 0; index < this.Permissions.length; index++) {
      const found = this.Permissions[index].permissions?.find(
        (p) => p.id == id
      );
      if (found) return found;
    }
    return undefined;
  }

  FindRoleById(id: string | undefined) {
    if (!this.ListRolesChecked) {
      return false;
    }
    for (let index = 0; index < this.ListRolesChecked.length; index++) {
      if (this.ListRolesChecked[index] == id) return true;
    }
    return false;
  }

  LoadRoles() {
    this._loader.show();
    RolesService.getApiRolesGetAllAsync().then((result) => {
      this.Roles = result.data ?? [];
    }).finally(() => this._loader.hide());;
  }

  LoadPermissions() {
    this._loader.show();
    PermissionsService.getApiPermissionsGetAllByGroupeAsync().then(
      (result: DtoPermissionGroupeListApiResponse) => {
        this.Permissions = result.data ?? [];
        this.collapsedGroups = this.Permissions.map((p) => true);
      }
    ).finally(() => this._loader.hide());
  }

  OnChangeRole(event: any) {
    if (event.target.checked) {
      this.AddRoleIdAsChecked(event.target.value);
    } else {
      this.DeleteRoleIdUnChecked(event.target.value);
    }
  }

  OnChangePermissions(event: any) {
    if (event.target.checked) {
      const p = this.FindPermissionById(event.target.value);
      this.AddPermissionIdAsChecked(event.target.value, p?.groupe ?? '');
    } else {
      this.DeletePermissionIdUnChecked(event.target.value);
    }
  }

  SaveRoles() {
    this.RolesModel = {
      id: this.UserId,
      listCheckedId: this.ListRolesChecked,
    };
    UtilisateursService.postApiUtilisateursAddRolesAsync(this.RolesModel)
      .then((result: BooleanApiResponse) => {
        if (result.statusCode == HttpStatusCode._200) {
          this._notify.Success(AppMessageService.Add);
        }
      })
      .catch(() => this._notify.Error(AppMessageService.ErrorAddEdit));
  }

  SavePermissions() {
    this.PermissionModel = {
      id: this.UserId,
      listCheckedId: this.ListPermissionChecked.map((p) => p.id),
    };
    UtilisateursService.postApiUtilisateursAddPermissionsAsync(
      this.PermissionModel
    ).then((result) => {
      if (result.data) {
        this._notify.Success(AppMessageService.Add);
      } else {
        this._notify.Error(AppMessageService.ErrorAddEdit);
      }
    });
  }
}
