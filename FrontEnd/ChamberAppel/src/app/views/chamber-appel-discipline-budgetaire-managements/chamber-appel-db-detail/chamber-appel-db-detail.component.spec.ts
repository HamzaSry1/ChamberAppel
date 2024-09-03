import { ComponentFixture, TestBed } from '@angular/core/testing';

import { ChamberAppelDBDetailComponent } from './chamber-appel-db-detail.component';

describe('ChamberAppelDBDetailComponent', () => {
  let component: ChamberAppelDBDetailComponent;
  let fixture: ComponentFixture<ChamberAppelDBDetailComponent>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      imports: [ChamberAppelDBDetailComponent]
    })
    .compileComponents();
    
    fixture = TestBed.createComponent(ChamberAppelDBDetailComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
