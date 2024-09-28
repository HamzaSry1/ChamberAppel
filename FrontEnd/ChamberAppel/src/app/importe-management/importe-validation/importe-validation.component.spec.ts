import { ComponentFixture, TestBed } from '@angular/core/testing';

import { ImporteValidationComponent } from './importe-validation.component';

describe('ImporteValidationComponent', () => {
  let component: ImporteValidationComponent;
  let fixture: ComponentFixture<ImporteValidationComponent>;

  beforeEach(() => {
    TestBed.configureTestingModule({
      declarations: [ImporteValidationComponent]
    });
    fixture = TestBed.createComponent(ImporteValidationComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
