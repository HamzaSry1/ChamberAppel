import { ComponentFixture, TestBed } from '@angular/core/testing';

import { CrcFormComponent } from './crc-form.component';

describe('CrcFormComponent', () => {
  let component: CrcFormComponent;
  let fixture: ComponentFixture<CrcFormComponent>;

  beforeEach(() => {
    TestBed.configureTestingModule({
      declarations: [CrcFormComponent]
    });
    fixture = TestBed.createComponent(CrcFormComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
