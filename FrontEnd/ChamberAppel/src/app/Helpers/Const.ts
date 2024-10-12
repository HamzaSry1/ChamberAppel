import { ValidationErrors } from '@angular/forms';

export class Const {
  public static List_Utilisateurs = "List des utilisateurs";
  public static List_Roles = "List des roles";
  public static List_Permissions = "List des permissions";
  public static List_Discipline_Budgeitaires = "List des discipline budgeitaires";
  public static List_Discipline_Budgeitaires_With_Errors = "List des discipline budgeitaires avec des errors";
  public static List_Chamber_appel_With_Errors = "List des discipline budgeitaires avec des errors";
  public static List_Crcs = "List des cour regionales des comptes";

  public static ValidationMessages: ValidationErrors = {
    required: 'Ce champ est requis.',
    minlength: 'Le champ est trop court!',
    maxlength: 'Le champ est trop long!',
    min: 'La valeur est inférieure au minimum requis',
    max: 'La valeur est supérieur au maximum requis.',
    email: 'Veuillez fournir une adresse email valide.',
    pattern: 'Le format du champ est invalide.',
    invalidFileType: "Nous n'acceptons que les fichiers avec les extensions suivantes : 'pdf', 'png', 'jpg' et 'jpeg'.",
    cdcinvalidEmail: "L'email doit se terminer par @courdescomptes.ma",
  };
}
