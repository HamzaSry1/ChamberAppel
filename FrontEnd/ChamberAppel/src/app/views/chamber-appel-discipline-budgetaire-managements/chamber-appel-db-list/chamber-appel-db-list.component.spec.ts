import { ComponentFixture, TestBed } from '@angular/core/testing';

import { ChamberAppelDBListComponent } from './chamber-appel-db-list.component';

describe('ChamberAppelDBListComponent', () => {
  let component: ChamberAppelDBListComponent;
  let fixture: ComponentFixture<ChamberAppelDBListComponent>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      imports: [ChamberAppelDBListComponent]
    })
    .compileComponents();
    
    fixture = TestBed.createComponent(ChamberAppelDBListComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
