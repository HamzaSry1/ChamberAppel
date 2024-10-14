import { ComponentFixture, TestBed } from '@angular/core/testing';

import { DisciplineBudgetaireFusionnerComponent } from './discipline-budgetaire-fusionner.component';

describe('DisciplineBudgetaireFusionnerComponent', () => {
  let component: DisciplineBudgetaireFusionnerComponent;
  let fixture: ComponentFixture<DisciplineBudgetaireFusionnerComponent>;

  beforeEach(() => {
    TestBed.configureTestingModule({
      declarations: [DisciplineBudgetaireFusionnerComponent]
    });
    fixture = TestBed.createComponent(DisciplineBudgetaireFusionnerComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
