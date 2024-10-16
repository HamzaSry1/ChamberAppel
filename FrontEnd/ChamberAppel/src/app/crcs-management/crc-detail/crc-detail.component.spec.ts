import { ComponentFixture, TestBed } from '@angular/core/testing';

import { CrcDetailComponent } from './crc-detail.component';

describe('CrcDetailComponent', () => {
  let component: CrcDetailComponent;
  let fixture: ComponentFixture<CrcDetailComponent>;

  beforeEach(() => {
    TestBed.configureTestingModule({
      declarations: [CrcDetailComponent]
    });
    fixture = TestBed.createComponent(CrcDetailComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
