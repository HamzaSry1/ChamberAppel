import { ComponentFixture, TestBed } from '@angular/core/testing';

import { DisciplineBudgetaireDeleteComponent } from './discipline-budgetaire-delete.component';

describe('DisciplineBudgetaireDeleteComponent', () => {
  let component: DisciplineBudgetaireDeleteComponent;
  let fixture: ComponentFixture<DisciplineBudgetaireDeleteComponent>;

  beforeEach(() => {
    TestBed.configureTestingModule({
      declarations: [DisciplineBudgetaireDeleteComponent]
    });
    fixture = TestBed.createComponent(DisciplineBudgetaireDeleteComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
