import { Component } from '@angular/core';
import { Router } from '@angular/router';
import { ConfirmBoxEvokeService } from '@costlydeveloper/ngx-awesome-popup';
import { AppMessageService } from 'src/app/app-message.service';
import { HttpStatusCode } from 'src/app/generatedapis/models/HttpStatusCode';
import { PersonnePhysiquesService } from 'src/app/generatedapis/services/PersonnePhysiquesService';

@Component({
  selector: 'app-personne-physique-delete',
  templateUrl: './personne-physique-delete.component.html',
  styleUrls: ['./personne-physique-delete.component.scss'],
})
export class PersonnePhysiqueDeleteComponent {
  public IsDelete = true;
  public IsFormDisable = true;
  public title = 'Supprimer Personne Physique';
  public titleMobile = 'Spr. Personne Physique';
  public url!: string;

  constructor(
    private _notify: AppMessageService,
    private _notifyConfirm: ConfirmBoxEvokeService,
    private _router: Router,
  ) {
    this.url = this._router.getCurrentNavigation()?.previousNavigation?.finalUrl?.toString() as string;
  }

  ConfirmDelete(data: any) {
    this._notifyConfirm.danger('Supprimer', 'Souhaitez-vous supprimer ' + data.nom + ' ' + data.prenom + ' définitivement ?', 'Supprimer', 'Fermer').subscribe((resp) => {
      const ClickedButton = resp.clickedButtonID;
      if (ClickedButton == 'supprimer') {
        this.Delete(data.id as string);
      }
    });
  }

  Delete(id: string) {
    PersonnePhysiquesService.postApiPersonnePhysiquesDelete(id)
      .then((res) => {
        if (res.status == HttpStatusCode.OK) {
          this._notify.Success(AppMessageService.Delete);
          this._router.navigate([this.url]);
        }
      })
      .catch(() => this._notify.Error(AppMessageService.NotAbleToDelete));
  }
}
