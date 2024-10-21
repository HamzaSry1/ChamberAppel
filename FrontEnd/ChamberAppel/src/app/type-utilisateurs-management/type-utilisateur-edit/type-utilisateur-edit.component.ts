import { Component } from '@angular/core';
import { Router } from '@angular/router';
import { AppMessageService } from 'src/app/app-message.service';
import { TypeUtilisateur } from 'src/app/generatedapis/models/TypeUtilisateur';
import { TypeUtilisateursService } from 'src/app/generatedapis/services/TypeUtilisateursService';

@Component({
  selector: 'app-type-utilisateur-edit',
  templateUrl: './type-utilisateur-edit.component.html',
  styleUrls: ['./type-utilisateur-edit.component.scss']
})
export class TypeUtilisateurEditComponent {
  constructor(
    private _notify: AppMessageService,
    private _router: Router,
  ) { }

  OnSave(data: TypeUtilisateur) {
    TypeUtilisateursService.putApiTypeUtilisateursUpdateAsync(data)
      .then(() => {
        this._notify.Success(AppMessageService.Edit);
        this._router.navigate(['/type-utilisateurs']);
      })
      .catch(() => {
        this._notify.Error(AppMessageService.ErrorAddEdit);
      });
  }
}
