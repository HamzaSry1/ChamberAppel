/* generated using openapi-typescript-codegen -- do not edit */
/* istanbul ignore file */
/* tslint:disable */
/* eslint-disable */
import type { CRC } from './CRC';
import type { FluentValidationErrors } from './FluentValidationErrors';
import type { HttpStatusCode } from './HttpStatusCode';
export type CRCApiResponse = {
    data?: CRC;
    statusCode?: HttpStatusCode;
    message?: string | null;
    validationErrors?: Array<FluentValidationErrors> | null;
};

