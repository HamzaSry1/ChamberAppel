import { Component, EventEmitter, Output } from '@angular/core';

@Component({
  selector: 'app-requete-fusionner',
  templateUrl: './requete-fusionner.component.html',
  styleUrls: ['./requete-fusionner.component.scss']
})
export class RequeteFusionnerComponent {
  @Output() BtnConfirmer: EventEmitter<any> = new EventEmitter();
  @Output() BtnPrevious: EventEmitter<any> = new EventEmitter();

  Previous() {
    this.BtnPrevious.emit();
  }

  Confirmer() {
    this.BtnConfirmer.emit();
  }
}
