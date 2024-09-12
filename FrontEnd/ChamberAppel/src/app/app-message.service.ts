import { Injectable } from '@angular/core';
import { ToastrService } from 'ngx-toastr';

@Injectable({
  providedIn: 'root',
})
export class AppMessageService {
  DefaultSelectOption = '-- Sélectionné --';

  public static Add: string = 'Ajout effectué avec succès';
  public static Edit: string = 'Modification effectuée avec succès';
  public static Delete: string = 'Suppression effectuée avec succès';
  public static NotAbleToDelete: string = 'Suppression échouée!';

  public static Save: string = 'Enregistrement effectué avec succès';
  public static ErrorLoadingListe: string =
    "Une erreur s'est produite lors du chargement des données !";
  public static ErrorAddEdit: string =
    "Une erreur s'est produite lors de l'enregistrement.";
  public static ErrorDelete: string =
    "Une erreur s'est produite lors de la suppression.";
  public static ErrorSynchronisationReferentielAdherent: string =
    'Les données ajoutées existent déjà!';

  public static UploadFileSuccess: string =
    'Le fichier a été téléversé avec succès.';
  public static UploadFileError: string =
    "Une erreur s'est produite lors de l'importation du fichier.";

  public static MergeFileSuccess: string =
    'Le fichier a été fusionné avec succès.';
  public static MergeFileError: string =
    "Une erreur s'est produite lors de la fusion du fichier.";

  public static ChangePasswordSuccess: string =
    'Votre mot de passe a été modifié avec succès.';
  public static ChangePasswordError: string =
    'Votre ancien mot de passe est incorrect.';

  public static ResetPassword: string =
    'Votre mot de passe a été réinitialisé avec succès.';

  public static ResetPasswordError: string =
    "Une erreur s'est produite lors de la réinitialisation de votre mot de passe.";

  public static LoginError: string = 'Identifiant ou mot de passe incorrect.';
  public static ServerError: string = 'Erreur du serveur.';

  public static SendEmailConfirmation: string =
    'Un lien de réinitialisation a été envoyé.';
  public static ErrorSendingEmailConfirmation: string =
    "Une erreur s'est produite lors de l'envoi du lien de réinitialisation.";

  public static SendEmail: string = "L'e-mail a été envoyé avec succès.";
  public static SendEmailError: string =
    "La configuration de l'e-mail est incorrecte.";

  public static UserNotFound: string = "L'e-mail est incorrect.";
  public static AdherentNotFound: string =
    'Aucun adhérent ne correspond à ce numéro CIN';
  public static AdherentNotEligible: string = 'Adhérent non eligible';

  public static ConflitAddEditAdherent: string =
    "Un conflit c'est produit, vérifiez que le CIN ou PPR ou numero adherent sont uniques !";
  public static ConflitAddEditUtilisateur: string =
    "Un conflit c'est produit, vérifiez que le login est unique!";
  constructor(private notify: ToastrService) {}

  Success(Message: string) {
    return this.notify.success(Message);
  }
  Warning(Message: string) {
    return this.notify.warning(Message);
  }
  Info(Message: string) {
    return this.notify.info(Message);
  }
  Error(Message: string) {
    return this.notify.error(Message);
  }
}
