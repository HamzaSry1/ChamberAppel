import { ComponentFixture, TestBed } from '@angular/core/testing';

import { RequeteFusionnerComponent } from './requete-fusionner.component';

describe('RequeteFusionnerComponent', () => {
  let component: RequeteFusionnerComponent;
  let fixture: ComponentFixture<RequeteFusionnerComponent>;

  beforeEach(() => {
    TestBed.configureTestingModule({
      declarations: [RequeteFusionnerComponent]
    });
    fixture = TestBed.createComponent(RequeteFusionnerComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
