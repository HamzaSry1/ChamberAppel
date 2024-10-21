import { Component } from '@angular/core';
import { Router } from '@angular/router';
import { ConfirmBoxEvokeService } from '@costlydeveloper/ngx-awesome-popup';
import { AppMessageService } from 'src/app/app-message.service';
import { TypeGrade } from 'src/app/generatedapis/models/TypeGrade';
import { TypeGradesService } from 'src/app/generatedapis/services/TypeGradesService';

@Component({
  selector: 'app-grade-delete',
  templateUrl: './grade-delete.component.html',
  styleUrls: ['./grade-delete.component.scss']
})
export class GradeDeleteComponent {
  constructor(
    private _notify: AppMessageService,
    private _notifyConfirm: ConfirmBoxEvokeService,
    private _router: Router,
  ) { }

  ConfirmDelete(data: TypeGrade) {
    this._notifyConfirm.danger('Supprimer', 'Souhaitez-vous supprimer ' + data.label + ' définitivement ?', 'Supprimer', 'Fermer').subscribe((resp) => {
      const ClickedButton = resp.clickedButtonID;
      if (ClickedButton == 'supprimer') {
        this.Delete(data.id as string);
      }
    });
  }

  Delete(id: string) {
    TypeGradesService.deleteApiTypeGradesDeleteAsync(id)
      .then(() => {
        this._notify.Success(AppMessageService.Delete);
        this._router.navigate(['/grades']);
      })
      .catch(() => this._notify.Error(AppMessageService.ErrorDelete));
  }
}
