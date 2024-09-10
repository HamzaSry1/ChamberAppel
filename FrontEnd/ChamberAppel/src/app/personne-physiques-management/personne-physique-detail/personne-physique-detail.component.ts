import { Component } from '@angular/core';

@Component({
  selector: 'app-personne-physique-detail',
  templateUrl: './personne-physique-detail.component.html',
  styleUrls: ['./personne-physique-detail.component.scss'],
})
export class PersonnePhysiqueDetailComponent {
  public title = 'Détail Personne Physique';
  public titleMobile = 'Dtl. Personne Physique';
  public IsFormDisable = true;
}
