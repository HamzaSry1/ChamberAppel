import { Component, OnInit } from '@angular/core';
import { FormControl, FormGroup, Validators } from '@angular/forms';
import { ActivatedRoute, Router } from '@angular/router';
import { NgxSpinnerService } from 'ngx-spinner';
import { Const } from 'src/app/Helpers/Const';
import { Validator } from 'src/app/Helpers/custom-validation';
import { AppMessageService } from 'src/app/app-message.service';
import { HttpStatusCode } from 'src/app/generatedapis/models/HttpStatusCode';
import { PersonnePhysique } from 'src/app/generatedapis/models/PersonnePhysique';
import { PersonnePhysiquesService } from 'src/app/generatedapis/services/PersonnePhysiquesService';

@Component({
  selector: 'app-personne-physique-add',
  templateUrl: './personne-physique-add.component.html',
  styleUrls: ['./personne-physique-add.component.scss'],
})
export class PersonnePhysiqueAddComponent {
  public IsAddOrEdit = true;
  public title = 'Ajouter Personne Physique';
  public titleMobile = 'Ajt. Personne Physique';
  public pageStatus: 'loading' | 'loaded' | 'error' | 'noData' = 'loaded';
  public validationMessages: any = Const.ValidationMessages;
  public DefaultSelectName!: string;
  constructor(
    private _notify: AppMessageService,
    private _router: Router,
  ) {
  }
  Save(data: PersonnePhysique) {
  }
}
