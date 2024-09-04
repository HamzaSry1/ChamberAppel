import { INavData } from '@coreui/angular';

export const navItems: INavData[] = [
  {
    name: 'Accueil',
    url: '/accueil',
    iconComponent: { name: 'cil-align-left' },
  },

  {
    name: 'Gestion des utilisateurs',
    url: '/utilisateurs',
    iconComponent: { name: 'cil-group' },
  },

  {
    name: 'Gestion des permissions',
    url: '/permissions',
    iconComponent: { name: 'cil-lock-unlocked' },
  },

  {
    name: 'Gestion des roles',
    url: '/roles',
    iconComponent: { name: 'cil-lock-locked' },
  },
];
