import { ComponentFixture, TestBed } from '@angular/core/testing';

import { DisciplineBudgetaireDetailComponent } from './discipline-budgetaire-detail.component';

describe('DisciplineBudgetaireDetailComponent', () => {
  let component: DisciplineBudgetaireDetailComponent;
  let fixture: ComponentFixture<DisciplineBudgetaireDetailComponent>;

  beforeEach(() => {
    TestBed.configureTestingModule({
      declarations: [DisciplineBudgetaireDetailComponent]
    });
    fixture = TestBed.createComponent(DisciplineBudgetaireDetailComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
