import { ComponentFixture, TestBed } from '@angular/core/testing';

import { ChamberAppelDiscBudgDetailComponent } from './chamber-appel-disc-budg-detail.component';

describe('ChamberAppelDiscBudgDetailComponent', () => {
  let component: ChamberAppelDiscBudgDetailComponent;
  let fixture: ComponentFixture<ChamberAppelDiscBudgDetailComponent>;

  beforeEach(() => {
    TestBed.configureTestingModule({
      declarations: [ChamberAppelDiscBudgDetailComponent]
    });
    fixture = TestBed.createComponent(ChamberAppelDiscBudgDetailComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
