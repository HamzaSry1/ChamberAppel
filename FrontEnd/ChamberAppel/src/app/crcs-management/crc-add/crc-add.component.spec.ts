import { ComponentFixture, TestBed } from '@angular/core/testing';

import { CrcAddComponent } from './crc-add.component';

describe('CrcAddComponent', () => {
  let component: CrcAddComponent;
  let fixture: ComponentFixture<CrcAddComponent>;

  beforeEach(() => {
    TestBed.configureTestingModule({
      declarations: [CrcAddComponent]
    });
    fixture = TestBed.createComponent(CrcAddComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
