import { ComponentFixture, TestBed } from '@angular/core/testing';

import { HeaderActionButtonComponent } from './header-action-button.component';

describe('HeaderActionButtonComponent', () => {
  let component: HeaderActionButtonComponent;
  let fixture: ComponentFixture<HeaderActionButtonComponent>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      declarations: [HeaderActionButtonComponent],
    }).compileComponents();

    fixture = TestBed.createComponent(HeaderActionButtonComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
