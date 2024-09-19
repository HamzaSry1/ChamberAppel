import { ComponentFixture, TestBed } from '@angular/core/testing';

import { ChamberAppelDiscBudgAddComponent } from './chamber-appel-disc-budg-add.component';

describe('ChamberAppelDiscBudgAddComponent', () => {
  let component: ChamberAppelDiscBudgAddComponent;
  let fixture: ComponentFixture<ChamberAppelDiscBudgAddComponent>;

  beforeEach(() => {
    TestBed.configureTestingModule({
      declarations: [ChamberAppelDiscBudgAddComponent]
    });
    fixture = TestBed.createComponent(ChamberAppelDiscBudgAddComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
