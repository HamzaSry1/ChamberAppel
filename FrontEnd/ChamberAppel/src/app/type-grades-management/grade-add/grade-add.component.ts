import { Component } from '@angular/core';
import { Router } from '@angular/router';
import { AppMessageService } from 'src/app/app-message.service';
import { TypeGrade } from 'src/app/generatedapis/models/TypeGrade';
import { TypeGradesService } from 'src/app/generatedapis/services/TypeGradesService';

@Component({
  selector: 'app-grade-add',
  templateUrl: './grade-add.component.html',
  styleUrls: ['./grade-add.component.scss']
})
export class GradeAddComponent {
  constructor(
    private _notify: AppMessageService,
    private _router: Router,
  ) { }

  OnSave(data: TypeGrade) {
    TypeGradesService.postApiTypeGradesCreateAsync(data)
      .then(() => {
        this._notify.Success(AppMessageService.Add);
        this._router.navigate(['/grades']);
      })
      .catch(() => {
        this._notify.Error(AppMessageService.ErrorAddEdit);
      });
  }
}
