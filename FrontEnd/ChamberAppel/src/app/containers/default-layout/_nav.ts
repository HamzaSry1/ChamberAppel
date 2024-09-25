import { INavData } from '@coreui/angular';

export const navItems: INavData[] = [
  {
    name: 'Accueil',
    url: '/accueil',
    iconComponent: { name: 'cil-apps' },
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
];
