import { ComponentFixture, TestBed } from '@angular/core/testing';

import { ChamberAppelDBDeleteComponent } from './chamber-appel-db-delete.component';

describe('ChamberAppelDBDeleteComponent', () => {
  let component: ChamberAppelDBDeleteComponent;
  let fixture: ComponentFixture<ChamberAppelDBDeleteComponent>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      imports: [ChamberAppelDBDeleteComponent]
    })
    .compileComponents();
    
    fixture = TestBed.createComponent(ChamberAppelDBDeleteComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
