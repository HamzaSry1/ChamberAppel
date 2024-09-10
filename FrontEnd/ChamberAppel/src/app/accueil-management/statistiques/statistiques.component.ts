import { TileFactoryAdherentParMois } from './tiles/tile-adherents-par-mois';
import { Component, HostListener, OnInit } from '@angular/core';
import { AuthService } from 'src/app/auth/auth.service';
import { Features } from 'src/app/auth/permissions';
import * as echarts from 'echarts';
import { AdherentsService } from 'src/app/generatedapis/services/AdherentsService';
import { AdherentsStatistiquesListApiResult } from 'src/app/generatedapis/models/AdherentsStatistiquesListApiResult';
import { TileFactoryAdherentParSexe, TileFactoryAdherentParRegion, TileFactoryAdherentParStatut, TileFactoryAdherentParType, TileFactoryAdherentParTypeAux } from './tiles/index';
import { AppMessageService } from 'src/app/app-message.service';
import { Observable, from, forkJoin, catchError, of } from 'rxjs';

@Component({
  selector: 'app-statistiques',
  templateUrl: './statistiques.component.html',
  styleUrls: ['./statistiques.component.scss'],
})
export class StatistiquesComponent implements OnInit {
  pageStatus: 'loading' | 'loaded' | 'error' | 'noData' = 'loading';

  public AdherentsParType = 'AdherentsParType';
  public AdherentsParTypeAux = 'AdherentsParTypeAux';
  public AdherentsParSexe = 'AdherentsParSexe';
  public AdherentsParStatut = 'AdherentsParStatut';
  public AdherentsParRegion = 'AdherentsParRegion';
  public AdherentsParDateAdhesions = 'AdherentsParDateAdhesions';
  public AdherentsParDateDecede = 'AdherentsParDateDecede';
  public AdherentsParDateRadie = 'AdherentsParDateRadie';

  public features = {
    ShowStatistiques: this.authService.checkPermission(Features.Adherents.GetStatistiques),
    ShowAdherentsParType: this.authService.checkPermission(Features.Adherents.ShowAdherentsParType),
    ShowAdherentsParTypeAux: this.authService.checkPermission(Features.Adherents.ShowAdherentsParType),
    ShowAdherentsParSexe: this.authService.checkPermission(Features.Adherents.ShowAdherentsParSexe),
    ShowAdherentsParStatut: this.authService.checkPermission(Features.Adherents.ShowAdherentsParStatut),
    ShowAdherentsParRegion: this.authService.checkPermission(Features.Adherents.ShowAdherentsParRegion),
    ShowAdherentsParMois: this.authService.checkPermission(Features.Adherents.ShowAdherentsParMois),
  };
  private charts: echarts.EChartsType[] = [];

  constructor(
    private authService: AuthService,
    private _notify: AppMessageService,
  ) {}
  resizeAllCharts() {
    this.charts.forEach((c) => c.resize());
  }

  @HostListener('window:resize', ['$event'])
  onResize(event: Event) {
    this.resizeAllCharts();
  }

  ngOnInit(): void {
    this.pageStatus = 'loading';

    forkJoin([
      this.GetDataStatistiques(this.AdherentsParType),
      this.GetDataStatistiques(this.AdherentsParTypeAux),
      this.GetDataStatistiques(this.AdherentsParSexe),
      this.GetDataStatistiques(this.AdherentsParStatut),
      this.GetDataStatistiques(this.AdherentsParRegion),
      this.GetDataStatistiques(this.AdherentsParDateAdhesions),
      this.GetDataStatistiques(this.AdherentsParDateDecede),
      this.GetDataStatistiques(this.AdherentsParDateRadie),
    ]).subscribe(([AdherentsParType, AdherentsParTypeAux, AdherentsParSexe, AdherentsParStatut, AdherentsParRegion, AdherentsParDateAdhesions, AdherentsParDateDecede, AdherentsParDateRadie]) => {
      if (AdherentsParType && AdherentsParType.data) {
        const factory = new TileFactoryAdherentParType();
        this.LoadChart('adherents_par_type', factory.GetOptions(AdherentsParType.data));
      }
      if (AdherentsParTypeAux && AdherentsParTypeAux.data) {
        const factory = new TileFactoryAdherentParTypeAux();
        this.LoadChart('adherents_par_type_aux', factory.GetOptions(AdherentsParTypeAux.data));
      }
      if (AdherentsParSexe && AdherentsParSexe.data) {
        const factory = new TileFactoryAdherentParSexe();
        this.LoadChart('adherents_par_sexe', factory.GetOptions(AdherentsParSexe.data));
      }
      if (AdherentsParStatut && AdherentsParStatut.data) {
        const factory = new TileFactoryAdherentParStatut();
        this.LoadChart('adherents_par_statut', factory.GetOptions(AdherentsParStatut.data));
      }
      if (AdherentsParRegion && AdherentsParRegion.data) {
        const factory = new TileFactoryAdherentParRegion();
        this.LoadChart('adherents_par_region', factory.GetOptions(AdherentsParRegion.data));
      }
      if (AdherentsParDateAdhesions && AdherentsParDateAdhesions.data) {
        const factory = new TileFactoryAdherentParMois();
        this.LoadChart('adherents_par_date', factory.GetOptions(AdherentsParDateAdhesions.data, AdherentsParDateDecede.data, AdherentsParDateRadie?.data));
      }
      this.pageStatus = 'loaded';
    });
  }
  LoadChart(elementId: string, options: any) {
    var chartDom = document.getElementById(elementId);
    var myChart = echarts.init(chartDom);
    this.charts.push(myChart);
    options && myChart.setOption(options);
  }
  GetDataStatistiques(source?: string): Observable<AdherentsStatistiquesListApiResult> {
    const promise = AdherentsService.postApiAdherentsGetDataStatistiques(source);
    return from(promise).pipe(
      catchError((error) => {
        console.error('An error occurred:', error);
        this._notify.Error(AppMessageService.ErrorLoadingListe);
        return of({} as AdherentsStatistiquesListApiResult);
      }),
    );
  }
}
