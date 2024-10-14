import { ComponentFixture, TestBed } from '@angular/core/testing';

import { RequeteIndexComponent } from './requete-index.component';

describe('RequeteIndexComponent', () => {
  let component: RequeteIndexComponent;
  let fixture: ComponentFixture<RequeteIndexComponent>;

  beforeEach(() => {
    TestBed.configureTestingModule({
      declarations: [RequeteIndexComponent]
    });
    fixture = TestBed.createComponent(RequeteIndexComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
