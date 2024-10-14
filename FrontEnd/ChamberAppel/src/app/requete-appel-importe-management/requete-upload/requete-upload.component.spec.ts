import { ComponentFixture, TestBed } from '@angular/core/testing';

import { RequeteUploadComponent } from './requete-upload.component';

describe('RequeteUploadComponent', () => {
  let component: RequeteUploadComponent;
  let fixture: ComponentFixture<RequeteUploadComponent>;

  beforeEach(() => {
    TestBed.configureTestingModule({
      declarations: [RequeteUploadComponent]
    });
    fixture = TestBed.createComponent(RequeteUploadComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
