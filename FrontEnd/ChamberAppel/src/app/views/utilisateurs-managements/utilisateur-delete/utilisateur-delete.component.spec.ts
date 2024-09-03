import { ComponentFixture, TestBed } from '@angular/core/testing';

import { UtilisateurDeleteComponent } from './utilisateur-delete.component';

describe('UtilisateurDeleteComponent', () => {
  let component: UtilisateurDeleteComponent;
  let fixture: ComponentFixture<UtilisateurDeleteComponent>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      imports: [UtilisateurDeleteComponent]
    })
    .compileComponents();
    
    fixture = TestBed.createComponent(UtilisateurDeleteComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
