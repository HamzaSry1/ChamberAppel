import { ComponentFixture, TestBed } from '@angular/core/testing';

import { GradeDetailComponent } from './grade-detail.component';

describe('GradeDetailComponent', () => {
  let component: GradeDetailComponent;
  let fixture: ComponentFixture<GradeDetailComponent>;

  beforeEach(() => {
    TestBed.configureTestingModule({
      declarations: [GradeDetailComponent]
    });
    fixture = TestBed.createComponent(GradeDetailComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
