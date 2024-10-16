import { ComponentFixture, TestBed } from '@angular/core/testing';

import { TypeUtilisateurDeleteComponent } from './type-utilisateur-delete.component';

describe('TypeUtilisateurDeleteComponent', () => {
  let component: TypeUtilisateurDeleteComponent;
  let fixture: ComponentFixture<TypeUtilisateurDeleteComponent>;

  beforeEach(() => {
    TestBed.configureTestingModule({
      declarations: [TypeUtilisateurDeleteComponent]
    });
    fixture = TestBed.createComponent(TypeUtilisateurDeleteComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
