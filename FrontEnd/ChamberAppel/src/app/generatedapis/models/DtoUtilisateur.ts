/* generated using openapi-typescript-codegen -- do not edit */
/* istanbul ignore file */
/* tslint:disable */
/* eslint-disable */
import type { GendersEnum } from './GendersEnum';
import type { SituationFamilialeEnum } from './SituationFamilialeEnum';
export type DtoUtilisateur = {
    id?: string;
    personnePhysiqueId?: string | null;
    nom?: string | null;
    prenom?: string | null;
    nomArabe?: string | null;
    prenomArabe?: string | null;
    cin?: string | null;
    adresse?: string | null;
    email?: string | null;
    gsm?: string | null;
    situationFamiliale?: SituationFamilialeEnum;
    sexe?: GendersEnum;
    dateNaissance?: string | null;
    login?: string | null;
    password?: string | null;
    updatedBy?: string | null;
    updateTime?: string | null;
    isActive?: number | null;
};

