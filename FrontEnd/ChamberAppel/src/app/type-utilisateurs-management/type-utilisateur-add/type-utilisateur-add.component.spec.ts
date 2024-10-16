import { ComponentFixture, TestBed } from '@angular/core/testing';

import { TypeUtilisateurAddComponent } from './type-utilisateur-add.component';

describe('TypeUtilisateurAddComponent', () => {
  let component: TypeUtilisateurAddComponent;
  let fixture: ComponentFixture<TypeUtilisateurAddComponent>;

  beforeEach(() => {
    TestBed.configureTestingModule({
      declarations: [TypeUtilisateurAddComponent]
    });
    fixture = TestBed.createComponent(TypeUtilisateurAddComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
