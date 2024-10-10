import { Component, EventEmitter, Output } from '@angular/core';

@Component({
  selector: 'app-marge',
  templateUrl: './marge.component.html',
  styleUrls: ['./marge.component.scss']
})
export class MargeComponent {
  @Output() BtnConfirmer: EventEmitter<any> = new EventEmitter();
  @Output() BtnPrevious: EventEmitter<any> = new EventEmitter();

  Previous() {
    this.BtnPrevious.emit();
  }

  Confirmer() {
    this.BtnConfirmer.emit();
  }
}
