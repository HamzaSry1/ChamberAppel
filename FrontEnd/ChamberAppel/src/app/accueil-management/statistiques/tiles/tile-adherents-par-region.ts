import { AdherentsStatistiques } from 'src/app/generatedapis/models/AdherentsStatistiques';

export class TileFactoryAdherentParRegion {
  public GetOptions(data: AdherentsStatistiques[]): any {
    const total = data.reduce((total, stat) => total + (stat.value || 0), 0);
    const Regions = data.sort((a, b) => (a.order ?? 0) - (b.order ?? 0)).map((item, index) => [index, item.key, item.value, total]);
    this.options.dataset.source = [['ordre', 'key', 'value', 'Total'], ...Regions] as never[];
    return this.options;
  }

  private options = {
    title: {
      text: 'Adhérents par région',
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
      max: 12,
      text: ['0', '12'],
      dimension: 0,
      inRange: {
        color: ['#FF5733', '#4CAF50', '#2196F3', '#FFC107', '#E91E63', '#9C27B0', '#FF9800', '#00BCD4', '#795548', '#3F51B5', '#8BC34A', '#607D8B', '#708D9B'],
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
