import { TypeRelationPersonnePhysiqueService } from './../../generatedapis/services/TypeRelationPersonnePhysiqueService';
import { Component, OnInit } from '@angular/core';
import { FormControl, FormGroup, Validators } from '@angular/forms';
import { ActivatedRoute, Router } from '@angular/router';
import { NgxSpinnerService } from 'ngx-spinner';
import { Const } from 'src/app/Helpers/Const';
import { Validator } from 'src/app/Helpers/custom-validation';
import { AppMessageService } from 'src/app/app-message.service';
import { HttpStatusCode } from 'src/app/generatedapis/models/HttpStatusCode';
import { PersonnePhysique } from 'src/app/generatedapis/models/PersonnePhysique';
import { TypeRelationPersonnePhysique } from 'src/app/generatedapis/models/TypeRelationPersonnePhysique';
// import { TypeRelationPersonnePhysiqueDto } from 'src/app/generatedapis/models/TypeRelationPersonnePhysiqueDto';
import { VerifyExistancePersonnePhysiqueResponseApiResult } from 'src/app/generatedapis/models/VerifyExistancePersonnePhysiqueResponseApiResult';
import { PersonnePhysiquesService } from 'src/app/generatedapis/services/PersonnePhysiquesService';

@Component({
  selector: 'app-personne-physique-add',
  templateUrl: './personne-physique-add.component.html',
  styleUrls: ['./personne-physique-add.component.scss'],
})
export class PersonnePhysiqueAddComponent implements OnInit {
  public IsAddOrEdit = true;
  public title = 'Ajouter Personne Physique';
  public titleMobile = 'Ajt. Personne Physique';
  public pageStatus: 'loading' | 'loaded' | 'error' | 'noData' = 'loaded';
  public validationMessages: any = Const.ValidationMessages;
  public verifierCinExiste = true;
  public DefaultSelectName!: string;
  public Cin!: string;
  public TypeRelationPersonnePhysiques!: TypeRelationPersonnePhysique[];

  public personne_id_pere!: string;
  public personne_id_mere!: string;
  public personne_id_conjoint!: string;

  public IdTypeRelationPersonnePhysique_Fils = 2;
  public IdTypeRelationPersonnePhysique_Conjoint = 4;

  public url!: string;
  constructor(
    private _notify: AppMessageService,
    private _loader: NgxSpinnerService,
    private _router: Router,
    private _activeRoute: ActivatedRoute,
  ) {
    this.personne_id_pere = this._activeRoute.snapshot.queryParamMap.get('personne_id_pere') as string;
    this.personne_id_mere = this._activeRoute.snapshot.queryParamMap.get('personne_id_mere') as string;
    this.personne_id_conjoint = this._activeRoute.snapshot.queryParamMap.get('personne_id_conjoint') as string;

    this.url = this._router.getCurrentNavigation()?.previousNavigation?.finalUrl?.toString() as string;
  }

  ngOnInit(): void {
    this.GetTypeRelationPersonnePhysiques();
    this.DefaultSelectName = this._notify.DefaultSelectOption;
  }

  saveFormEnfant(data: PersonnePhysique) {
    // TypeRelationPersonnePhysiqueDto
    var request: any = {
      personnePhysique1: data,
      idPersonnePere: this.personne_id_pere,
      idPersonneMere: this.personne_id_mere,
      idTypeRelationPersonnePhysique: this.IdTypeRelationPersonnePhysique_Fils,
    };

    PersonnePhysiquesService.postApiPersonnePhysiquesCreateRelation(request)
      .then((res) => {
        if (res.status == HttpStatusCode.OK) {
          this._notify.Success(AppMessageService.Add);
          this._router.navigate([this.url]);
        }
      })
      .catch(() => this._notify.Error(AppMessageService.ErrorAddEdit));
  }

  saveFormConjoint(data: PersonnePhysique) {
    // TypeRelationPersonnePhysiqueDto
    var request: any = {
      personnePhysique1: data,
      idPersonneConjoint: this.personne_id_conjoint,
      idTypeRelationPersonnePhysique: this.IdTypeRelationPersonnePhysique_Conjoint,
    };

    PersonnePhysiquesService.postApiPersonnePhysiquesCreateRelation(request)
      .then((res) => {
        if (res.status == HttpStatusCode.OK) {
          this._notify.Success(AppMessageService.Add);
          this._router.navigate([this.url]);
        }
      })
      .catch(() => this._notify.Error(AppMessageService.ErrorAddEdit));
  }

  Save(data: PersonnePhysique) {
    if (this.SearchCinForm.getRawValue().IdTypeRelationPersonnePhysique == this.IdTypeRelationPersonnePhysique_Conjoint) {
      this.saveFormConjoint(data);
    } else {
      this.saveFormEnfant(data);
    }
  }

  SearchCinForm = new FormGroup({
    cin: new FormControl('', [Validator.cinValidatorNotRequired(), Validators.minLength(2), Validators.maxLength(50)]),
    IdTypeRelationPersonnePhysique: new FormControl(),
  });

  GetTypeRelationPersonnePhysiques() {
    TypeRelationPersonnePhysiqueService.getApiTypeRelationPersonnePhysiqueGetAll().then((res) => {
      this.TypeRelationPersonnePhysiques = res.data ?? [];
    });
  }

  SearchCin() {
    if (this.SearchCinForm.valid) {
      this.pageStatus = 'loading';
      this._loader.show();
      PersonnePhysiquesService.postApiPersonnePhysiquesSearchByCin(encodeURIComponent(this.SearchCinForm.getRawValue().cin as string))
        .then((result: VerifyExistancePersonnePhysiqueResponseApiResult) => {
          this.pageStatus = 'loaded';
          this._loader.hide();
          //Dispaly Info PersonnePhysique and  Redirect to update
          if (result.data?.isExisted == true) {
            this.verifierCinExiste = true;
            this._router.navigate(['/personnephysiques/modifier/' + result.data.personnePhysiqueId]);
          }
          //Stay in Add from
          else {
            this.verifierCinExiste = false;
            this.Cin = this.SearchCinForm.getRawValue().cin as string;
          }
        })
        .catch(() => {
          this.pageStatus = 'error';
          this._notify.Error(AppMessageService.ErrorLoadingListe);
        })
        .finally(() => {
          this._loader.hide();
        });
    } else this.SearchCinForm.markAsDirty();
  }
}
