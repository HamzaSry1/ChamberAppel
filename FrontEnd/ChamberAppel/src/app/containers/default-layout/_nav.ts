import { INavData } from '@coreui/angular';

export const navItems: INavData[] = [
  {
    name: 'Accueil',
    url: '/accueil',
    iconComponent: { name: 'cil-align-left' },
  },
  {
    name: "Gestion d'accès",
    iconComponent: { name: 'cil-settings' },
    children: [
      {
        name: 'Utilisateurs',
        url: '/utilisateurs',
        iconComponent: { name: 'cil-group' },
      },
      {
        name: 'Permissions',
        url: '/permissions',
        iconComponent: { name: 'cil-lock-locked' },
      },
      {
        name: 'Roles',
        url: '/roles',
        iconComponent: { name: 'cil-lock-unlocked' },
      },
    ],
  },
  {
    name: 'Discipline budgetaires',
    url: 'discipline-budgetaires',
    iconComponent: { name: 'cil-balance-scale' },
  },
  {
    name: "Requetes d'appel",
    url: 'requetes-appel',
    iconComponent: { name: 'cil-balance-scale' },
  },
  {
    name: 'Importe',
    iconComponent: { name: 'cil-cloud-download' },
    children: [
      {
        name: 'Discipline budgetaires',
        url: 'discipline-budgetaires-importe',
        iconComponent: { name: 'cil-cloud-download' },
      },
      {
        name: "Requetes d'appel",
        url: 'requetes-appel-importe',
        iconComponent: { name: 'cil-cloud-download' },
      },
    ],
  },
];
