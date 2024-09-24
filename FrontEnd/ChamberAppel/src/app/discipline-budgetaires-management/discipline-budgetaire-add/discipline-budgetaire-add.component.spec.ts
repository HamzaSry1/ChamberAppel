import { ComponentFixture, TestBed } from '@angular/core/testing';

import { DisciplineBudgetaireAddComponent } from './discipline-budgetaire-add.component';

describe('DisciplineBudgetaireAddComponent', () => {
  let component: DisciplineBudgetaireAddComponent;
  let fixture: ComponentFixture<DisciplineBudgetaireAddComponent>;

  beforeEach(() => {
    TestBed.configureTestingModule({
      declarations: [DisciplineBudgetaireAddComponent]
    });
    fixture = TestBed.createComponent(DisciplineBudgetaireAddComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
