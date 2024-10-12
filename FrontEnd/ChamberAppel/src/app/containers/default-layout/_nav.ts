import { INavData } from '@coreui/angular';

export const navItems: INavData[] = [
  {
    name: 'Accueil',
    url: '/accueil',
    iconComponent: { name: 'cil-align-left' },
    // badge: {
    //   color: 'info',
    //   text: 'NEW',
    // },
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
    name: 'chambers appel',
    url: 'chambers-appel',
    iconComponent: { name: 'cil-balance-scale' },
  },
  {
    name: 'Importer',
    iconComponent: { name: 'cil-cloud-download' },
    children: [
      {
        name: 'Discipline budgetaires',
        url: 'discipline-budgetaires-importer',
        iconComponent: { name: 'cil-cloud-download' },
      },
      {
        name: 'Chamber appel',
        url: 'chamber-appel-importer',
        iconComponent: { name: 'cil-cloud-download' },
      },
    ],
  },
];
