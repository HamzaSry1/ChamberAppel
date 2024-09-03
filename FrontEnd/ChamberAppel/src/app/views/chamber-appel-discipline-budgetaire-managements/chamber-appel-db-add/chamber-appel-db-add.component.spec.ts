import { ComponentFixture, TestBed } from '@angular/core/testing';

import { ChamberAppelDBAddComponent } from './chamber-appel-db-add.component';

describe('ChamberAppelDBAddComponent', () => {
  let component: ChamberAppelDBAddComponent;
  let fixture: ComponentFixture<ChamberAppelDBAddComponent>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      imports: [ChamberAppelDBAddComponent]
    })
    .compileComponents();
    
    fixture = TestBed.createComponent(ChamberAppelDBAddComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
