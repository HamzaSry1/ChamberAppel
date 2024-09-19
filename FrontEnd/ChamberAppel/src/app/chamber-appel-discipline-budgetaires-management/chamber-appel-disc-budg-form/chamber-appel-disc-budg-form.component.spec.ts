import { ComponentFixture, TestBed } from '@angular/core/testing';

import { ChamberAppelDiscBudgFormComponent } from './chamber-appel-disc-budg-form.component';

describe('ChamberAppelDiscBudgFormComponent', () => {
  let component: ChamberAppelDiscBudgFormComponent;
  let fixture: ComponentFixture<ChamberAppelDiscBudgFormComponent>;

  beforeEach(() => {
    TestBed.configureTestingModule({
      declarations: [ChamberAppelDiscBudgFormComponent]
    });
    fixture = TestBed.createComponent(ChamberAppelDiscBudgFormComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
