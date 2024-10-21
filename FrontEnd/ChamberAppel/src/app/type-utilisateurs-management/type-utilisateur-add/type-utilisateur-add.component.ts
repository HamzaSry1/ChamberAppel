import { Component } from '@angular/core';
import { Router } from '@angular/router';
import { AppMessageService } from 'src/app/app-message.service';
import { TypeUtilisateur } from 'src/app/generatedapis/models/TypeUtilisateur';
import { TypeUtilisateursService } from 'src/app/generatedapis/services/TypeUtilisateursService';

@Component({
  selector: 'app-type-utilisateur-add',
  templateUrl: './type-utilisateur-add.component.html',
  styleUrls: ['./type-utilisateur-add.component.scss']
})
export class TypeUtilisateurAddComponent {
  constructor(
    private _notify: AppMessageService,
    private _router: Router,
  ) { }

  OnSave(data: TypeUtilisateur) {
    TypeUtilisateursService.postApiTypeUtilisateursCreateAsync(data)
      .then(() => {
        this._notify.Success(AppMessageService.Add);
        this._router.navigate(['/type-utilisateurs']);
      })
      .catch(() => {
        this._notify.Error(AppMessageService.ErrorAddEdit);
      });
  }
}
