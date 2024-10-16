import { ComponentFixture, TestBed } from '@angular/core/testing';

import { TypeUtilisateurEditComponent } from './type-utilisateur-edit.component';

describe('TypeUtilisateurEditComponent', () => {
  let component: TypeUtilisateurEditComponent;
  let fixture: ComponentFixture<TypeUtilisateurEditComponent>;

  beforeEach(() => {
    TestBed.configureTestingModule({
      declarations: [TypeUtilisateurEditComponent]
    });
    fixture = TestBed.createComponent(TypeUtilisateurEditComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
