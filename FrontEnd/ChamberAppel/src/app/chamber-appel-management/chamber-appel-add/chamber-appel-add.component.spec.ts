import { ComponentFixture, TestBed } from '@angular/core/testing';

import { ChamberAppelAddComponent } from './chamber-appel-add.component';

describe('ChamberAppelAddComponent', () => {
  let component: ChamberAppelAddComponent;
  let fixture: ComponentFixture<ChamberAppelAddComponent>;

  beforeEach(() => {
    TestBed.configureTestingModule({
      declarations: [ChamberAppelAddComponent]
    });
    fixture = TestBed.createComponent(ChamberAppelAddComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
