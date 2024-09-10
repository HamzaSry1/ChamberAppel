import { Component, Input } from '@angular/core';

@Component({
  selector: 'app-page-action-header',
  templateUrl: './page-action-header.component.html',
  styleUrls: ['./page-action-header.component.scss'],
})
export class PageActionHeaderComponent {
  @Input() icon: string = '';
  @Input() title: string = '';
  @Input() titleMobile: string = '';
}
