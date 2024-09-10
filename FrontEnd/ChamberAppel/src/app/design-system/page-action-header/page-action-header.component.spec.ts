import { ComponentFixture, TestBed } from '@angular/core/testing';

import { PageActionHeaderComponent } from './page-action-header.component';

describe('PageActionHeaderComponent', () => {
  let component: PageActionHeaderComponent;
  let fixture: ComponentFixture<PageActionHeaderComponent>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      declarations: [PageActionHeaderComponent],
    }).compileComponents();

    fixture = TestBed.createComponent(PageActionHeaderComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
