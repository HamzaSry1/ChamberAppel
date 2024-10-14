import { Component, EventEmitter, Output } from '@angular/core';

@Component({
  selector: 'app-discipline-budgetaire-fusionner',
  templateUrl: './discipline-budgetaire-fusionner.component.html',
  styleUrls: ['./discipline-budgetaire-fusionner.component.scss']
})
export class DisciplineBudgetaireFusionnerComponent {
  @Output() BtnConfirmer: EventEmitter<any> = new EventEmitter();
  @Output() BtnPrevious: EventEmitter<any> = new EventEmitter();

  Previous() {
    this.BtnPrevious.emit();
  }

  Confirmer() {
    this.BtnConfirmer.emit();
  }
}
