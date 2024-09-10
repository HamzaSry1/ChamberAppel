import { ComponentFixture, TestBed } from '@angular/core/testing';

import { PersonnePhysiqueAddComponent } from './personne-physique-add.component';

describe('PersonnePhysiqueAddComponent', () => {
  let component: PersonnePhysiqueAddComponent;
  let fixture: ComponentFixture<PersonnePhysiqueAddComponent>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      declarations: [PersonnePhysiqueAddComponent],
    }).compileComponents();

    fixture = TestBed.createComponent(PersonnePhysiqueAddComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
