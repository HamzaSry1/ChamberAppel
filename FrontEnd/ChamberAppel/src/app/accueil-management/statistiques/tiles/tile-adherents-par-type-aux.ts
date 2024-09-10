import { AdherentsStatistiques } from 'src/app/generatedapis/models/AdherentsStatistiques';
import { TileData } from './tile-data';

export class TileFactoryAdherentParTypeAux {
  public GetOptions(data: AdherentsStatistiques[]): any {
    const ListOfModel: TileData[] = [];
    const sorted = data.sort((a, b) => (a.order ?? 0) - (b.order ?? 0));
    for (let i = 0; i < sorted.length; i++) {
      const model: TileData = {
        value: sorted[i].value as number,
        name: sorted[i].key as string,
      };
      ListOfModel.push(model);
    }
    this.options.series[0].data = [...ListOfModel] as never[];
    return this.options;
  }

  private options = {
    title: {
      text: 'Auxiliaires actifs',
      left: 'center',
    },
    // tooltip: {
    //   trigger: 'item',
    // },
    legend: {
      orient: 'vertical',
      left: 'left',
      type: 'scroll',
    },
    series: [
      {
        name: 'Accès depuis',
        type: 'pie',
        radius: ['40%', '70%'],
        avoidLabelOverlap: false,
        itemStyle: {
          borderRadius: 10,
          borderColor: '#fff',
          borderWidth: 2,
        },
        label: {
          show: false,
          position: 'center',
          formatter: '{b}: {c} ({d}%)',
        },
        emphasis: {
          label: {
            show: true,
            fontWeight: 'bold',
          },
        },
        labelLine: {
          show: false,
        },
        data: [],
      },
    ],
  };
}
