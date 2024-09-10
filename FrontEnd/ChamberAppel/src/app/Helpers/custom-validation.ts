import { AbstractControl, ValidationErrors, ValidatorFn } from '@angular/forms';
export class Validator {
  public static numericRegex = /^[0-9]+(\.?[0-9]+)?$/;
  public static CinRegex = /^[A-Za-z]{1,2}\d+$/;
  public static ArabicTextRegex = /^[\u0621-\u064A\s]+$/;

  static Cin(control: AbstractControl): ValidationErrors | null {
    let val = control.value;
    if (val === null || val === '') return null;
    if (!val.toString().match(Validator.CinRegex)) return { invalidCin: true };
    return null;
  }

  static cinValidator(): ValidatorFn {
    return (control: AbstractControl): { [key: string]: any } | null => {
      const value = control.value;

      if (value === null || value === '') {
        // Check if the field is required
        return { required: true };
      }

      // Check if the field matches the regex pattern
      const pattern = Validator.CinRegex;
      if (!pattern.test(value)) {
        return { pattern: true };
      }

      return null; // Validation passed
    };
  }

  static cinValidatorNotRequired(): ValidatorFn {
    return (control: AbstractControl): { [key: string]: any } | null => {
      const value = control.value;

      if (value != null && value != '') {
        // Check if the field matches the regex pattern
        const pattern = Validator.CinRegex;
        if (!pattern.test(value)) {
          return { pattern: true };
        }
      }

      return null; // Validation passed
    };
  }

  static customDateValidator(): ValidatorFn {
    return (control: AbstractControl): { [key: string]: any } | null => {
      const inputDate = new Date(control.value);
      const today = new Date();
      const SeptJoursSuivant = new Date(today);
      SeptJoursSuivant.setDate(today.getDate() + 7);

      // For example, you can check if the input date is not in the past and within the next 7 days.
      if (inputDate > SeptJoursSuivant) {
        return { pattern: true };
      }
      return null; // Return null if the validation passes.
    };
  }

  static emailIsCdc(control: AbstractControl): ValidationErrors | null {
    const email = control.value;
    if (email && !email.endsWith('@courdescomptes.ma')) {
      return { fh2invalidEmail: true };
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
