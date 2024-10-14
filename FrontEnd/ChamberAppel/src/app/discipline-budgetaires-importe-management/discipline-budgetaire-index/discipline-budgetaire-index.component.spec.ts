import { ComponentFixture, TestBed } from '@angular/core/testing';

import { DisciplineBudgetaireIndexComponent } from './discipline-budgetaire-index.component';

describe('DisciplineBudgetaireIndexComponent', () => {
  let component: DisciplineBudgetaireIndexComponent;
  let fixture: ComponentFixture<DisciplineBudgetaireIndexComponent>;

  beforeEach(() => {
    TestBed.configureTestingModule({
      declarations: [DisciplineBudgetaireIndexComponent]
    });
    fixture = TestBed.createComponent(DisciplineBudgetaireIndexComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
