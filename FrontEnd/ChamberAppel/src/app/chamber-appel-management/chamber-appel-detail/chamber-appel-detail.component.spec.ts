import { ComponentFixture, TestBed } from '@angular/core/testing';

import { ChamberAppelDetailComponent } from './chamber-appel-detail.component';

describe('ChamberAppelDetailComponent', () => {
  let component: ChamberAppelDetailComponent;
  let fixture: ComponentFixture<ChamberAppelDetailComponent>;

  beforeEach(() => {
    TestBed.configureTestingModule({
      declarations: [ChamberAppelDetailComponent]
    });
    fixture = TestBed.createComponent(ChamberAppelDetailComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
