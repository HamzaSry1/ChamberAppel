import { ComponentFixture, TestBed } from '@angular/core/testing';

import { RequeteValidationComponent } from './requete-validation.component';

describe('RequeteValidationComponent', () => {
  let component: RequeteValidationComponent;
  let fixture: ComponentFixture<RequeteValidationComponent>;

  beforeEach(() => {
    TestBed.configureTestingModule({
      declarations: [RequeteValidationComponent]
    });
    fixture = TestBed.createComponent(RequeteValidationComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
