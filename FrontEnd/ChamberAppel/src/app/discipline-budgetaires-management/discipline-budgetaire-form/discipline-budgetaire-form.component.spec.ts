import { ComponentFixture, TestBed } from '@angular/core/testing';

import { DisciplineBudgetaireFormComponent } from './discipline-budgetaire-form.component';

describe('DisciplineBudgetaireFormComponent', () => {
  let component: DisciplineBudgetaireFormComponent;
  let fixture: ComponentFixture<DisciplineBudgetaireFormComponent>;

  beforeEach(() => {
    TestBed.configureTestingModule({
      declarations: [DisciplineBudgetaireFormComponent]
    });
    fixture = TestBed.createComponent(DisciplineBudgetaireFormComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
