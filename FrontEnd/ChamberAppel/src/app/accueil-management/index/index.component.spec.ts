import { TestBed, ComponentFixture } from '@angular/core/testing';
import { IndexComponent } from './index.component';
import { AuthService } from 'src/app/auth/auth.service';

describe('IndexComponent', () => {
  let component: IndexComponent;
  let fixture: ComponentFixture<IndexComponent>;
  let authService: AuthService;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      declarations: [IndexComponent],
      providers: [AuthService], // Add any required dependencies here
    }).compileComponents();
  });

  beforeEach(() => {
    fixture = TestBed.createComponent(IndexComponent);
    component = fixture.componentInstance;
    authService = TestBed.inject(AuthService); // Get an instance of AuthService from the testing module
  });

  it('should create the component', () => {
    expect(component).toBeTruthy();
  });

  it('should check permissions correctly', () => {
    // You can also test for different permission scenarios
    // by mocking the return value of the authService.checkPermission method.
  });
});
