import { AdherentsStatistiques } from 'src/app/generatedapis/models/AdherentsStatistiques';

export class TileFactoryAdherentParSexe {
  public GetOptions(data: AdherentsStatistiques[]): any {
    const total = data.reduce((total, stat) => total + (stat.value || 0), 0);
    const Sexes = data.sort((a, b) => (a.order ?? 0) - (b.order ?? 0)).map((item, index) => [index, item.key, item.value, total]);
    this.options.dataset.source = [['ordre', 'key', 'value', 'total'], ...Sexes] as never[];
    return this.options;
  }

  private options = {
    title: {
      text: 'Adhérents par sexe',
      left: 'center',
    },
    tooltip: {
      trigger: 'axis',
    },
    dataset: {
      source: [],
    },
    grid: { containLabel: true },
    xAxis: { name: '' },
    yAxis: { type: 'category' },
    visualMap: {
      orient: 'horizontal',
      left: 'center',
      min: 0,
      max: 2,
      text: ['0', '1'],
      dimension: 0,
      inRange: {
        color: ['#65B581', '#FFCE34', '#FD665F'],
      },
      show: false,
    },
    series: [
      {
        type: 'bar',
        label: {
          show: true,
          position: 'right',
          formatter: (params: any) => {
            if (params.value[2]) {
              const percentage = (((params.value[2] as number) * 100) / (params.value[3] as number)).toFixed(2);
              const value = params.value[2];
              return `${value} (${percentage}%)`;
            }
            return ``;
          },
        },
        encode: {
          x: 'value',
          y: 'key',
        },
      },
    ],
  };
}
