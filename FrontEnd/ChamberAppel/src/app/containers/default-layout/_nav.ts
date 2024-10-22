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
    name: 'Discipline budgétaires',
    url: 'discipline-budgetaires',
    iconComponent: { name: 'cil-balance-scale' },
  },
  {
    name: "Requêtes d'appel",
    url: 'requetes-appel',
    iconComponent: { name: 'cil-balance-scale' },
  },
  {
    name: 'Importation',
    iconComponent: { name: 'cil-cloud-download' },
    children: [
      {
        name: 'Disciplines budgétaires',
        url: 'discipline-budgetaires-importe',
        iconComponent: { name: 'cil-cloud-download' },
      },
      {
        name: "Requêtes d'appel",
        url: 'requetes-appel-importe',
        iconComponent: { name: 'cil-cloud-download' },
      },
    ],
  },
  {
    name: "Référentielles",
    iconComponent: { name: 'cil-settings' },
    children: [
      {
        name: 'Type Utilisateurs',
        url: '/type-utilisateurs',
        iconComponent: { name: 'cil-group' },
      },
      {
        name: 'Crcs',
        url: '/crcs',
        iconComponent: { name: 'cil-star' },
      },
      {
        name: 'Grades',
        url: '/grades',
        iconComponent: { name: 'cil-list' },
      },
    ],
  },
];
