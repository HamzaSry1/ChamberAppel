import { Component } from '@angular/core';
import { ButtonStyle } from 'src/app/shared/button-style';

@Component({
  selector: 'app-page500',
  templateUrl: './page500.component.html',
  styleUrls: ['./page500.component.scss']
})
export class Page500Component {

  public ReturnButtonStyle = ButtonStyle.secondary;
  constructor() { }
}
