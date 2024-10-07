import { Component, EventEmitter, Output } from '@angular/core';

@Component({
  selector: 'app-importe-marge',
  templateUrl: './importe-marge.component.html',
  styleUrls: ['./importe-marge.component.scss']
})
export class ImporteMargeComponent {
  @Output() BtnConfirmer: EventEmitter<any> = new EventEmitter();
  @Output() BtnPrevious: EventEmitter<any> = new EventEmitter();

  Previous() {
    this.BtnPrevious.emit();
  }

  Confirmer() {
    this.BtnConfirmer.emit();
  }
}
