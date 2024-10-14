import { ComponentFixture, TestBed } from '@angular/core/testing';

import { DisciplineBudgetaireUploadComponent } from './discipline-budgetaire-upload.component';

describe('DisciplineBudgetaireUploadComponent', () => {
  let component: DisciplineBudgetaireUploadComponent;
  let fixture: ComponentFixture<DisciplineBudgetaireUploadComponent>;

  beforeEach(() => {
    TestBed.configureTestingModule({
      declarations: [DisciplineBudgetaireUploadComponent]
    });
    fixture = TestBed.createComponent(DisciplineBudgetaireUploadComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
