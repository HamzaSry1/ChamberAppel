import { ComponentFixture, TestBed } from '@angular/core/testing';

import { ImporteUploadComponent } from './importe-upload.component';

describe('ImporteUploadComponent', () => {
  let component: ImporteUploadComponent;
  let fixture: ComponentFixture<ImporteUploadComponent>;

  beforeEach(() => {
    TestBed.configureTestingModule({
      declarations: [ImporteUploadComponent]
    });
    fixture = TestBed.createComponent(ImporteUploadComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
