import { ComponentFixture, TestBed } from '@angular/core/testing';

import { ChamberAppelFormComponent } from './chamber-appel-form.component';

describe('ChamberAppelFormComponent', () => {
  let component: ChamberAppelFormComponent;
  let fixture: ComponentFixture<ChamberAppelFormComponent>;

  beforeEach(() => {
    TestBed.configureTestingModule({
      declarations: [ChamberAppelFormComponent]
    });
    fixture = TestBed.createComponent(ChamberAppelFormComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
