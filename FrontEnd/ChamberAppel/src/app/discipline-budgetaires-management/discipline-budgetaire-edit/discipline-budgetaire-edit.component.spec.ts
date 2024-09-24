import { ComponentFixture, TestBed } from '@angular/core/testing';

import { DisciplineBudgetaireEditComponent } from './discipline-budgetaire-edit.component';

describe('DisciplineBudgetaireEditComponent', () => {
  let component: DisciplineBudgetaireEditComponent;
  let fixture: ComponentFixture<DisciplineBudgetaireEditComponent>;

  beforeEach(() => {
    TestBed.configureTestingModule({
      declarations: [DisciplineBudgetaireEditComponent]
    });
    fixture = TestBed.createComponent(DisciplineBudgetaireEditComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
