import { Component } from '@angular/core';
import { ButtonStyle } from 'src/app/shared/button-style';

@Component({
  selector: 'app-importe-index',
  templateUrl: './importe-index.component.html',
  styleUrls: ['./importe-index.component.scss']
})
export class ImporteIndexComponent {

  public ReturnButtonStyle = ButtonStyle.secondary;
  public ExempleButtonStyle = ButtonStyle.success;

}
