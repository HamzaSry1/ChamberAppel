import { Component } from '@angular/core';
import { Router } from '@angular/router';
import { ConfirmBoxEvokeService } from '@costlydeveloper/ngx-awesome-popup';
import { AppMessageService } from 'src/app/app-message.service';
import { DisciplineBudgetaire } from 'src/app/generatedapis/models/DisciplineBudgetaire';
import { DisciplineBudgetairesService } from 'src/app/generatedapis/services/DisciplineBudgetairesService';

@Component({
  selector: 'app-discipline-budgetaire-delete',
  templateUrl: './discipline-budgetaire-delete.component.html',
  styleUrls: ['./discipline-budgetaire-delete.component.scss'],
})
export class DisciplineBudgetaireDeleteComponent {
  constructor(
    private _notify: AppMessageService,
    private _notifyConfirm: ConfirmBoxEvokeService,
    private _router: Router
  ) {}

  ConfirmDelete(data: DisciplineBudgetaire) {
    this._notifyConfirm
      .danger(
        'Supprimer',
        'Souhaitez-vous supprimer ' +
          data.numero_de_dossier +
          ' définitivement ?',
        'Supprimer',
        'Fermer'
      )
      .subscribe((resp) => {
        const ClickedButton = resp.clickedButtonID;
        if (ClickedButton == 'supprimer') {
          this.Delete(data.id as string);
        }
      });
  }

  Delete(id: string) {
    DisciplineBudgetairesService.deleteApiDisciplineBudgetairesDeleteAsync(id)
      .then(() => {
        this._notify.Success(AppMessageService.Delete);
        this._router.navigate(['/roles']);
      })
      .catch(() => this._notify.Error(AppMessageService.ErrorDelete));
  }
}
