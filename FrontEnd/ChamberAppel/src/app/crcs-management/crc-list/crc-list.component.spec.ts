import { ComponentFixture, TestBed } from '@angular/core/testing';

import { CrcListComponent } from './crc-list.component';

describe('CrcListComponent', () => {
  let component: CrcListComponent;
  let fixture: ComponentFixture<CrcListComponent>;

  beforeEach(() => {
    TestBed.configureTestingModule({
      declarations: [CrcListComponent]
    });
    fixture = TestBed.createComponent(CrcListComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
