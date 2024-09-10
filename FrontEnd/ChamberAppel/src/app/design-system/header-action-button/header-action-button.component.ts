import { Component, Input, Output, EventEmitter } from '@angular/core';
import { Router } from '@angular/router';

@Component({
  selector: 'app-header-action-button',
  templateUrl: './header-action-button.component.html',
  styleUrls: ['./header-action-button.component.scss'],
})
export class HeaderActionButtonComponent {
  @Input() disabled: boolean = false;
  @Input() buttonClass: string = '';
  @Input() title: string = '';
  @Input() routerLink: string = '';
  @Input() iconClass: string = '';
  @Input() label: string = '';
  @Output() clicked: EventEmitter<void> = new EventEmitter<void>();

  constructor(private router: Router) {}

  onClick(): void {
    if (this.routerLink) {
      // Redirect to the specified routerLink if defined

      this.router.navigateByUrl(this.routerLink);
    } else {
      // Perform the click event if no routerLink is specified
      this.clicked.emit();
    }
  }
}
