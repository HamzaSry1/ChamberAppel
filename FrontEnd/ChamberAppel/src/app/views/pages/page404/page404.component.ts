import { Component } from '@angular/core';
import { ButtonStyle } from 'src/app/shared/button-style';

@Component({
  selector: 'app-page404',
  templateUrl: './page404.component.html',
  styleUrls: ['./page404.component.scss']
})
export class Page404Component {
  public ReturnButtonStyle = ButtonStyle.secondary;
  constructor() { }
}
