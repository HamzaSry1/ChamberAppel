import { ComponentFixture, TestBed } from '@angular/core/testing';

import { ImporteIndexComponent } from './importe-index.component';

describe('ImporteIndexComponent', () => {
  let component: ImporteIndexComponent;
  let fixture: ComponentFixture<ImporteIndexComponent>;

  beforeEach(() => {
    TestBed.configureTestingModule({
      declarations: [ImporteIndexComponent]
    });
    fixture = TestBed.createComponent(ImporteIndexComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
