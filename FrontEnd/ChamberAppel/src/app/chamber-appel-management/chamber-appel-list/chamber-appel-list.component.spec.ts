import { ComponentFixture, TestBed } from '@angular/core/testing';

import { ChamberAppelListComponent } from './chamber-appel-list.component';

describe('ChamberAppelListComponent', () => {
  let component: ChamberAppelListComponent;
  let fixture: ComponentFixture<ChamberAppelListComponent>;

  beforeEach(() => {
    TestBed.configureTestingModule({
      declarations: [ChamberAppelListComponent]
    });
    fixture = TestBed.createComponent(ChamberAppelListComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
