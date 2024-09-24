import { ComponentFixture, TestBed } from '@angular/core/testing';

import { DisciplineBudgetaireListComponent } from './discipline-budgetaire-list.component';

describe('DisciplineBudgetaireListComponent', () => {
  let component: DisciplineBudgetaireListComponent;
  let fixture: ComponentFixture<DisciplineBudgetaireListComponent>;

  beforeEach(() => {
    TestBed.configureTestingModule({
      declarations: [DisciplineBudgetaireListComponent]
    });
    fixture = TestBed.createComponent(DisciplineBudgetaireListComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
