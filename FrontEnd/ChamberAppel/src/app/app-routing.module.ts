import { NgModule } from '@angular/core';
import {
  DefaultUrlSerializer,
  RouterModule,
  Routes,
  UrlSerializer,
  UrlTree,
} from '@angular/router';

import { DefaultLayoutComponent } from './containers';
import { Page404Component } from './views/pages/page404/page404.component';
import { Page500Component } from './views/pages/page500/page500.component';
import { AuthGuard } from './auth/auth.guard';

class CaseInsensitiveUrlSerializer extends DefaultUrlSerializer {
  override parse(url: string): UrlTree {
    // Convert the URL to lowercase before parsing
    return super.parse(url.toLowerCase());
  }
}

const routes: Routes = [
  {
    path: '',
    redirectTo: 'accueil',
    pathMatch: 'full',
  },
  {
    path: 'auth',
    loadChildren: () => import('./auth/auth.module').then((m) => m.AuthModule),
  },
  {
    path: '',
    component: DefaultLayoutComponent,
    data: {
      title: 'Accueil',
    },
    children: [
      {
        path: 'accueil',
        loadChildren: () =>
          import('./accueil-management/accueil-management.module').then(
            (m) => m.AccueilManagementModule
          ),
        canActivate: [AuthGuard],
      },

      {
        path: 'utilisateurs',
        loadChildren: () =>
          import('./users-management/users-management.module').then(
            (m) => m.UsersManagementModule
          ),
        canActivate: [AuthGuard],
      },
      {
        path: 'permissions',
        loadChildren: () =>
          import('./permissions-management/permissions-management.module').then(
            (m) => m.PermissionsManagementModule
          ),
        canActivate: [AuthGuard],
      },
      {
        path: 'personne-physiques',
        loadChildren: () =>
          import(
            './personne-physiques-management/personne-physiques-management.module'
          ).then((m) => m.PersonnePhysiquesManagementModule),
        canActivate: [AuthGuard],
      },
      {
        path: 'roles',
        loadChildren: () =>
          import('./roles-management/roles-management.module').then(
            (m) => m.RolesManagementModule
          ),
        canActivate: [AuthGuard],
      },
      {
        path: 'chamberAppelDisciplineBudgetaires',
        loadChildren: () =>
          import('./chamber-appel-discipline-budgetaires-management/chamber-appel-discipline-budgetaires-management.module').then(
            (m) => m.ChamberAppelDisciplineBudgetairesManagementModule
          ),
        canActivate: [AuthGuard],
      },
      {
        path: 'pages',
        loadChildren: () =>
          import('./views/pages/pages.module').then((m) => m.PagesModule),
        canActivate: [AuthGuard],
      },
    ],
  },
  {
    path: '500',
    component: Page500Component,
    data: {
      title: 'Page 500',
    },
  },
  { path: '**', component: Page404Component },
];

const config: any = {
  useHash: false,
  scrollPositionRestoration: 'top',
  anchorScrolling: 'enabled',
  initialNavigation: 'enabledBlocking',
};

@NgModule({
  imports: [RouterModule.forRoot(routes, config)],
  exports: [RouterModule],
  providers: [
    {
      provide: UrlSerializer,
      useClass: CaseInsensitiveUrlSerializer,
    },
  ],
})
export class AppRoutingModule { }
