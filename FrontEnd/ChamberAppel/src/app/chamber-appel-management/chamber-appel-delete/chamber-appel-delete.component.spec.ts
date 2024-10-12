import { ComponentFixture, TestBed } from '@angular/core/testing';

import { ChamberAppelDeleteComponent } from './chamber-appel-delete.component';

describe('ChamberAppelDeleteComponent', () => {
  let component: ChamberAppelDeleteComponent;
  let fixture: ComponentFixture<ChamberAppelDeleteComponent>;

  beforeEach(() => {
    TestBed.configureTestingModule({
      declarations: [ChamberAppelDeleteComponent]
    });
    fixture = TestBed.createComponent(ChamberAppelDeleteComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
