import { Component, Output, EventEmitter, Input } from '@angular/core';

@Component({
  selector: 'app-table-error',
  templateUrl: './table-error.component.html',
  styleUrls: ['./table-error.component.scss'],
})
export class TableErrorComponent {
  @Input()
  retry: boolean = false;
  @Output() errorEvent: EventEmitter<any> = new EventEmitter<any>();

  triggerErrorEvent() {
    this.errorEvent?.emit();
  }
}
