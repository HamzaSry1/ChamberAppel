import { INavData } from '@coreui/angular';

export const navItems: INavData[] = [
  {
    name: 'Dashboard',
    url: '/dashboard',
    iconComponent: { name: 'cil-speedometer' },
    // badge: {
    //   color: 'info',
    //   text: 'NEW',
    // },
  },
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
];
