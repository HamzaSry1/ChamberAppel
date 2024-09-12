import { Component } from '@angular/core';
import { Router } from '@angular/router';
import { AppMessageService } from 'src/app/app-message.service';
import { HttpStatusCode } from 'src/app/generatedapis/models/HttpStatusCode';
import { PersonnePhysique } from 'src/app/generatedapis/models/PersonnePhysique';
import { PersonnePhysiquesService } from 'src/app/generatedapis/services/PersonnePhysiquesService';

@Component({
  selector: 'app-personne-physique-edit',
  templateUrl: './personne-physique-edit.component.html',
  styleUrls: ['./personne-physique-edit.component.scss'],
})
export class PersonnePhysiqueEditComponent {
  public IsAddOrEdit = true;
  public title = 'Modifier Personne Physique';
  public titleMobile = 'Mdf. Personne Physique';
  public url!: string;
  constructor(
    private _notify: AppMessageService,
    private _router: Router,
  ) {
    this.url = this._router.getCurrentNavigation()?.previousNavigation?.finalUrl?.toString() as string;
  }

  Save(data: any) {
    data.updateTime = new Date().toISOString();
    PersonnePhysiquesService.putApiPersonnePhysiquesUpdateAsync(data)
      .then((res) => {
        if (res.statusCode == HttpStatusCode._200) {
          this._notify.Success(AppMessageService.Edit);
          this._router.navigate([this.url]);
        }
      })
      .catch(() => this._notify.Error(AppMessageService.ErrorAddEdit));
  }
}
