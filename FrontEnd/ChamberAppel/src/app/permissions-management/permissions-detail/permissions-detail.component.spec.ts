import { ComponentFixture, TestBed } from '@angular/core/testing';

import { PermissionsDetailComponent } from './permissions-detail.component';

describe('PermissionsDetailComponent', () => {
  let component: PermissionsDetailComponent;
  let fixture: ComponentFixture<PermissionsDetailComponent>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      declarations: [PermissionsDetailComponent],
    }).compileComponents();

    fixture = TestBed.createComponent(PermissionsDetailComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
