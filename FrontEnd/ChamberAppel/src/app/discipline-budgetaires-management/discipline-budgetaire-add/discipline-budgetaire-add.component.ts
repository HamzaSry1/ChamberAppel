import { Component } from '@angular/core';
import { Router } from '@angular/router';
import { AppMessageService } from 'src/app/app-message.service';
import { DisciplineBudgetaire } from 'src/app/generatedapis/models/DisciplineBudgetaire';
import { DisciplineBudgetairesService } from 'src/app/generatedapis/services/DisciplineBudgetairesService';

@Component({
  selector: 'app-discipline-budgetaire-add',
  templateUrl: './discipline-budgetaire-add.component.html',
  styleUrls: ['./discipline-budgetaire-add.component.scss'],
})
export class DisciplineBudgetaireAddComponent {
  constructor(private _notify: AppMessageService, private _router: Router) {}

  OnSave(data: DisciplineBudgetaire) {
    DisciplineBudgetairesService.postApiDisciplineBudgetairesCreateAsync(data)
      .then(() => {
        this._notify.Success(AppMessageService.Add);
        this._router.navigate(['/discipline-budgetaires']);
      })
      .catch(() => {
        this._notify.Error(AppMessageService.ErrorAddEdit);
      });
  }
}
