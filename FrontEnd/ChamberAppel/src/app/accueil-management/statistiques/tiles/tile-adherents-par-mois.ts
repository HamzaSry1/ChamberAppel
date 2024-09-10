import { AdherentsStatistiques } from 'src/app/generatedapis/models/AdherentsStatistiques';

export class TileFactoryAdherentParMois {
  public GetOptions(dataAdhesions: AdherentsStatistiques[], dataDecede: AdherentsStatistiques[] | null | undefined, dataRadie: AdherentsStatistiques[] | null | undefined): any {
    const axisKeys = dataAdhesions.sort((a, b) => (a.order ?? 0) - (b.order ?? 0)).map((item) => item.key);
    const adhesionsValues = dataAdhesions.sort((a, b) => (a.order ?? 0) - (b.order ?? 0)).map((item) => item.value);
    const decedeValues = dataDecede?.sort((a, b) => (a.order ?? 0) - (b.order ?? 0)).map((item) => item.value);
    const radieValues = dataRadie?.sort((a, b) => (a.order ?? 0) - (b.order ?? 0)).map((item) => item.value);

    this.options.xAxis.data = axisKeys as never[];
    this.options.series[0].data = adhesionsValues as never[];
    this.options.series[1].data = decedeValues as never[];
    this.options.series[2].data = radieValues as never[];
    return this.options;
  }

  private options = {
    title: {
      text: 'Adhérents par date',
      left: 'center',
    },
    tooltip: {
      trigger: 'axis',
    },
    xAxis: {
      type: 'category',
      data: [],
    },
    yAxis: {
      type: 'value',
    },
    series: [
      {
        name: 'adhésions',
        data: [],
        type: 'line',
      },
      {
        name: 'Décédé',
        data: [],
        type: 'line',
      },
      {
        name: 'radié',
        data: [],
        type: 'line',
      },
    ],
  };
}
