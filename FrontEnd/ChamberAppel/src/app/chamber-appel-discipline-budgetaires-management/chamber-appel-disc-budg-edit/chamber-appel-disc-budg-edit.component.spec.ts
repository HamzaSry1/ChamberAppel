import { ComponentFixture, TestBed } from '@angular/core/testing';

import { ChamberAppelDiscBudgEditComponent } from './chamber-appel-disc-budg-edit.component';

describe('ChamberAppelDiscBudgEditComponent', () => {
  let component: ChamberAppelDiscBudgEditComponent;
  let fixture: ComponentFixture<ChamberAppelDiscBudgEditComponent>;

  beforeEach(() => {
    TestBed.configureTestingModule({
      declarations: [ChamberAppelDiscBudgEditComponent]
    });
    fixture = TestBed.createComponent(ChamberAppelDiscBudgEditComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
