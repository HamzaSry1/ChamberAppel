/* generated using openapi-typescript-codegen -- do not edit */
/* istanbul ignore file */
/* tslint:disable */
/* eslint-disable */
import type { CRC } from './CRC';
import type { FluentValidationErrors } from './FluentValidationErrors';
import type { HttpStatusCode } from './HttpStatusCode';
export type CRCListApiResponse = {
    data?: Array<CRC> | null;
    statusCode?: HttpStatusCode;
    message?: string | null;
    validationErrors?: Array<FluentValidationErrors> | null;
};

