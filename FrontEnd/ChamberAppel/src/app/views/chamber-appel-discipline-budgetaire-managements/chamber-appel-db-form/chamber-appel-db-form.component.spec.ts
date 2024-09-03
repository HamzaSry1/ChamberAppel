import { ComponentFixture, TestBed } from '@angular/core/testing';

import { ChamberAppelDBFormComponent } from './chamber-appel-db-form.component';

describe('ChamberAppelDBFormComponent', () => {
  let component: ChamberAppelDBFormComponent;
  let fixture: ComponentFixture<ChamberAppelDBFormComponent>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      imports: [ChamberAppelDBFormComponent]
    })
    .compileComponents();
    
    fixture = TestBed.createComponent(ChamberAppelDBFormComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
