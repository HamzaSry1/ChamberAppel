/* generated using openapi-typescript-codegen -- do not edit */
/* istanbul ignore file */
/* tslint:disable */
/* eslint-disable */
import type { ChamberAppelDisciplineBudgetaire } from './ChamberAppelDisciplineBudgetaire';
import type { FluentValidationErrors } from './FluentValidationErrors';
import type { HttpStatusCode } from './HttpStatusCode';
export type ChamberAppelDisciplineBudgetaireApiResponse = {
    data?: ChamberAppelDisciplineBudgetaire;
    statusCode?: HttpStatusCode;
    message?: string | null;
    validationErrors?: Array<FluentValidationErrors> | null;
};

