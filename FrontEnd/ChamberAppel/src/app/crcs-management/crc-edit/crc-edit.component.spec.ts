import { ComponentFixture, TestBed } from '@angular/core/testing';

import { CrcEditComponent } from './crc-edit.component';

describe('CrcEditComponent', () => {
  let component: CrcEditComponent;
  let fixture: ComponentFixture<CrcEditComponent>;

  beforeEach(() => {
    TestBed.configureTestingModule({
      declarations: [CrcEditComponent]
    });
    fixture = TestBed.createComponent(CrcEditComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
