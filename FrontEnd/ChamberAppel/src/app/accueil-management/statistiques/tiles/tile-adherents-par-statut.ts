import { AdherentsStatistiques } from 'src/app/generatedapis/models/AdherentsStatistiques';
import { TileData } from './tile-data';

export class TileFactoryAdherentParStatut {
  public GetOptions(data: AdherentsStatistiques[]): any {
    const typesStatuts = data.sort((a, b) => (a.order ?? 0) - (b.order ?? 0));
    const ListOfModel: TileData[] = [];
    for (let i = 0; i < typesStatuts.length; i++) {
      const model: TileData = {
        value: typesStatuts[i].value as number,
        name: typesStatuts[i].key as string,
      };
      ListOfModel.push(model);
    }
    this.options.series[0].data = [...ListOfModel] as never[];
    return this.options;
  }

  private options = {
    title: {
      text: 'Adhérents par statuts',
      left: 'center',
    },
    // tooltip: {
    //   trigger: 'item',
    // },
    legend: {
      orient: 'vertical',
      left: 'right',
      type: 'scroll',
    },
    series: [
      {
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
