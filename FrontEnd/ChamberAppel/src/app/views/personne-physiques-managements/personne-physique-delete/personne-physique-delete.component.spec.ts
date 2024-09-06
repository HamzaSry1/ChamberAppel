import { ComponentFixture, TestBed } from '@angular/core/testing';

import { PersonnePhysiqueDeleteComponent } from './personne-physique-delete.component';

describe('PersonnePhysiqueDeleteComponent', () => {
  let component: PersonnePhysiqueDeleteComponent;
  let fixture: ComponentFixture<PersonnePhysiqueDeleteComponent>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      imports: [PersonnePhysiqueDeleteComponent]
    })
    .compileComponents();

    fixture = TestBed.createComponent(PersonnePhysiqueDeleteComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
