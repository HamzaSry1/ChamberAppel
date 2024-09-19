import { ComponentFixture, TestBed } from '@angular/core/testing';

import { ChamberAppelDiscBudgListComponent } from './chamber-appel-disc-budg-list.component';

describe('ChamberAppelDiscBudgListComponent', () => {
  let component: ChamberAppelDiscBudgListComponent;
  let fixture: ComponentFixture<ChamberAppelDiscBudgListComponent>;

  beforeEach(() => {
    TestBed.configureTestingModule({
      declarations: [ChamberAppelDiscBudgListComponent]
    });
    fixture = TestBed.createComponent(ChamberAppelDiscBudgListComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
