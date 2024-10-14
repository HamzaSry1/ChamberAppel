/* generated using openapi-typescript-codegen -- do not edit */
/* istanbul ignore file */
/* tslint:disable */
/* eslint-disable */
import type { FluentValidationErrors } from './FluentValidationErrors';
import type { HttpStatusCode } from './HttpStatusCode';
import type { RequeteAppel } from './RequeteAppel';
export type RequeteAppelApiResponse = {
    data?: RequeteAppel;
    statusCode?: HttpStatusCode;
    message?: string | null;
    validationErrors?: Array<FluentValidationErrors> | null;
};

