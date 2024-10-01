import { Component, OnInit } from '@angular/core';
import { ButtonStyle } from 'src/app/shared/button-style';
import Stepper from 'bs-stepper';
@Component({
  selector: 'app-importe-index',
  templateUrl: './importe-index.component.html',
  styleUrls: ['./importe-index.component.scss']
})
export class ImporteIndexComponent implements OnInit {

  ngOnInit(): void {
    const stepperElement = document.querySelector('#stepper1');
    if (stepperElement !== null) {
      this.stepper = new Stepper(stepperElement, {
        linear: false,
        animation: true,
      });
    }
  }

  public ReturnButtonStyle = ButtonStyle.secondary;
  public ExempleButtonStyle = ButtonStyle.success;
  public stepper!: Stepper;
  public ValidationPartIsDisabled = true;
  public MargePartIsDisabled = true;

  Next() {
    this.stepper.next();
  }

  Previous() {
    this.stepper.previous();
  }

  GoToValidation(event: any) {
    console.log(event);

    // this.ValidationPartIsDisabled = false;
    // this.Next();
  }

  GoToMarge() {
    this.MargePartIsDisabled = false;
    // redirect to list of the discipline budgetaire
  }
}
