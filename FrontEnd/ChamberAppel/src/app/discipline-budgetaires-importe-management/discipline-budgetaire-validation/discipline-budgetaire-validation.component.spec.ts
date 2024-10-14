import { ComponentFixture, TestBed } from '@angular/core/testing';

import { DisciplineBudgetaireValidationComponent } from './discipline-budgetaire-validation.component';

describe('DisciplineBudgetaireValidationComponent', () => {
  let component: DisciplineBudgetaireValidationComponent;
  let fixture: ComponentFixture<DisciplineBudgetaireValidationComponent>;

  beforeEach(() => {
    TestBed.configureTestingModule({
      declarations: [DisciplineBudgetaireValidationComponent]
    });
    fixture = TestBed.createComponent(DisciplineBudgetaireValidationComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
