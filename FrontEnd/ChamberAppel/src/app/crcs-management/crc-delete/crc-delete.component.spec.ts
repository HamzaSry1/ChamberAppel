import { ComponentFixture, TestBed } from '@angular/core/testing';

import { CrcDeleteComponent } from './crc-delete.component';

describe('CrcDeleteComponent', () => {
  let component: CrcDeleteComponent;
  let fixture: ComponentFixture<CrcDeleteComponent>;

  beforeEach(() => {
    TestBed.configureTestingModule({
      declarations: [CrcDeleteComponent]
    });
    fixture = TestBed.createComponent(CrcDeleteComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
