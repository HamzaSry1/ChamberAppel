import { ComponentFixture, TestBed } from '@angular/core/testing';

import { ChamberAppelDiscBudgDeleteComponent } from './chamber-appel-disc-budg-delete.component';

describe('ChamberAppelDiscBudgDeleteComponent', () => {
  let component: ChamberAppelDiscBudgDeleteComponent;
  let fixture: ComponentFixture<ChamberAppelDiscBudgDeleteComponent>;

  beforeEach(() => {
    TestBed.configureTestingModule({
      declarations: [ChamberAppelDiscBudgDeleteComponent]
    });
    fixture = TestBed.createComponent(ChamberAppelDiscBudgDeleteComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
