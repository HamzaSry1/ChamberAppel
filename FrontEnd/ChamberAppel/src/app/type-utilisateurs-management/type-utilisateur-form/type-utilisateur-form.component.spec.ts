import { ComponentFixture, TestBed } from '@angular/core/testing';

import { TypeUtilisateurFormComponent } from './type-utilisateur-form.component';

describe('TypeUtilisateurFormComponent', () => {
  let component: TypeUtilisateurFormComponent;
  let fixture: ComponentFixture<TypeUtilisateurFormComponent>;

  beforeEach(() => {
    TestBed.configureTestingModule({
      declarations: [TypeUtilisateurFormComponent]
    });
    fixture = TestBed.createComponent(TypeUtilisateurFormComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
