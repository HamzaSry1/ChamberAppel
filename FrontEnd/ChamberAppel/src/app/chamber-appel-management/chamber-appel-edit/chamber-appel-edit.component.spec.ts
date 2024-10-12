import { ComponentFixture, TestBed } from '@angular/core/testing';

import { ChamberAppelEditComponent } from './chamber-appel-edit.component';

describe('ChamberAppelEditComponent', () => {
  let component: ChamberAppelEditComponent;
  let fixture: ComponentFixture<ChamberAppelEditComponent>;

  beforeEach(() => {
    TestBed.configureTestingModule({
      declarations: [ChamberAppelEditComponent]
    });
    fixture = TestBed.createComponent(ChamberAppelEditComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
