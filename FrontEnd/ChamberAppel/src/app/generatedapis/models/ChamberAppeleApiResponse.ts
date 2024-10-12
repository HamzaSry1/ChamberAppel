/* generated using openapi-typescript-codegen -- do not edit */
/* istanbul ignore file */
/* tslint:disable */
/* eslint-disable */
import type { ChamberAppele } from './ChamberAppele';
import type { FluentValidationErrors } from './FluentValidationErrors';
import type { HttpStatusCode } from './HttpStatusCode';
export type ChamberAppeleApiResponse = {
    data?: ChamberAppele;
    statusCode?: HttpStatusCode;
    message?: string | null;
    validationErrors?: Array<FluentValidationErrors> | null;
};

