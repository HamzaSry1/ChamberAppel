import { Component } from '@angular/core';
import { Router } from '@angular/router';
import { AppMessageService } from 'src/app/app-message.service';
import { DisciplineBudgetaire } from 'src/app/generatedapis/models/DisciplineBudgetaire';
import { DisciplineBudgetairesService } from 'src/app/generatedapis/services/DisciplineBudgetairesService';

@Component({
  selector: 'app-discipline-budgetaire-edit',
  templateUrl: './discipline-budgetaire-edit.component.html',
  styleUrls: ['./discipline-budgetaire-edit.component.scss']
})
export class DisciplineBudgetaireEditComponent {
  constructor(
    private _notify: AppMessageService,
    private _router: Router,
  ) { }

  OnSave(data: DisciplineBudgetaire) {
    DisciplineBudgetairesService.putApiDisciplineBudgetairesUpdateAsync(data)
      .then(() => {
        this._notify.Success(AppMessageService.Edit);
        this._router.navigate(['/discipline-budgetaires']);
      })
      .catch(() => {
        this._notify.Error(AppMessageService.ErrorAddEdit);
      });
  }
}
