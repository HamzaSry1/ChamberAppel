import { ComponentFixture, TestBed } from '@angular/core/testing';

import { PermissionsAddComponent } from './permissions-add.component';

describe('PermissionsAddComponent', () => {
  let component: PermissionsAddComponent;
  let fixture: ComponentFixture<PermissionsAddComponent>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      declarations: [PermissionsAddComponent],
    }).compileComponents();

    fixture = TestBed.createComponent(PermissionsAddComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
