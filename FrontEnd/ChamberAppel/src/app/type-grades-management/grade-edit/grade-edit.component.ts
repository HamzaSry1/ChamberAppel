import { Component } from '@angular/core';
import { Router } from '@angular/router';
import { AppMessageService } from 'src/app/app-message.service';
import { TypeGrade } from 'src/app/generatedapis/models/TypeGrade';
import { TypeGradesService } from 'src/app/generatedapis/services/TypeGradesService';

@Component({
  selector: 'app-grade-edit',
  templateUrl: './grade-edit.component.html',
  styleUrls: ['./grade-edit.component.scss']
})
export class GradeEditComponent {
  constructor(
    private _notify: AppMessageService,
    private _router: Router,
  ) { }

  OnSave(data: TypeGrade) {
    TypeGradesService.putApiTypeGradesUpdateAsync(data)
      .then(() => {
        this._notify.Success(AppMessageService.Edit);
        this._router.navigate(['/grades']);
      })
      .catch(() => {
        this._notify.Error(AppMessageService.ErrorAddEdit);
      });
  }
}
