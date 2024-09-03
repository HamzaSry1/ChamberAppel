import { ComponentFixture, TestBed } from '@angular/core/testing';

import { ChamberAppelDBEditComponent } from './chamber-appel-db-edit.component';

describe('ChamberAppelDBEditComponent', () => {
  let component: ChamberAppelDBEditComponent;
  let fixture: ComponentFixture<ChamberAppelDBEditComponent>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      imports: [ChamberAppelDBEditComponent]
    })
    .compileComponents();
    
    fixture = TestBed.createComponent(ChamberAppelDBEditComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
