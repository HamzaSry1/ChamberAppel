/* generated using openapi-typescript-codegen -- do not edit */
/* istanbul ignore file */
/* tslint:disable */
/* eslint-disable */
import type { GendersEnum } from './GendersEnum';
import type { SituationFamilialeEnum } from './SituationFamilialeEnum';
export type PersonnePhysique = {
    id?: string;
    nom: string;
    prenom: string;
    nomArabe?: string | null;
    prenomArabe?: string | null;
    dateNaissance?: string | null;
    cin: string;
    situationFamiliale?: SituationFamilialeEnum;
    sexe?: GendersEnum;
    adresse?: string | null;
    email: string;
    gsm?: string | null;
    updatedBy?: string | null;
    updateTime?: string | null;
    isActive?: boolean | null;
};

