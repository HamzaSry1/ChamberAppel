import { AbstractControl, ValidationErrors } from '@angular/forms';
export class Validator {

  static emailIsCdc(control: AbstractControl): ValidationErrors | null {
    const email = control.value;
    if (email && !email.endsWith('@courdescomptes.ma')) {
      return { cdcinvalidEmail: true };
    }
    return null;
  }
  static passwordValidator(control: AbstractControl): ValidationErrors | null {
    const value = control.value;
    const requirements = /^(?=.*[A-Z])(?=.*[a-z])(?=.*\d.*\d)(?=.*\W.*\W).{8,}$/;

    if (value && !requirements.test(value)) {
      return {
        passwordRequirements: true,
        minlength: value.length < 8,
        digitCount: !/[0-9].*[0-9]/.test(value),
        specialCharCount: !/[^a-zA-Z0-9].*[^a-zA-Z0-9]/.test(value),
        lowercaseChar: !/[a-z].*[a-z]/.test(value),
        uppercaseChar: !/[A-Z].*[A-Z]/.test(value),
      };
    }

    return null;
  }
  static fileValidator(control: AbstractControl): { [key: string]: any } | null {
    const allowedExtensions = ['pdf', 'png', 'jpg', 'jpeg'];
    const file = control.value;

    if (file && file.name) {
      const extension = file.name.split('.').pop().toLowerCase();

      if (allowedExtensions.indexOf(extension) === -1) {
        return { invalidFileType: true };
      }
    }

    return null;
  }
}
