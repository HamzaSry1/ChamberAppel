import { ComponentFixture, TestBed } from '@angular/core/testing';

import { ImporteMargeComponent } from './importe-marge.component';

describe('ImporteMargeComponent', () => {
  let component: ImporteMargeComponent;
  let fixture: ComponentFixture<ImporteMargeComponent>;

  beforeEach(() => {
    TestBed.configureTestingModule({
      declarations: [ImporteMargeComponent]
    });
    fixture = TestBed.createComponent(ImporteMargeComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
