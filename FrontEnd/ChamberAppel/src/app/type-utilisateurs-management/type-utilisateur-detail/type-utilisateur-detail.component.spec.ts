import { ComponentFixture, TestBed } from '@angular/core/testing';

import { TypeUtilisateurDetailComponent } from './type-utilisateur-detail.component';

describe('TypeUtilisateurDetailComponent', () => {
  let component: TypeUtilisateurDetailComponent;
  let fixture: ComponentFixture<TypeUtilisateurDetailComponent>;

  beforeEach(() => {
    TestBed.configureTestingModule({
      declarations: [TypeUtilisateurDetailComponent]
    });
    fixture = TestBed.createComponent(TypeUtilisateurDetailComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
