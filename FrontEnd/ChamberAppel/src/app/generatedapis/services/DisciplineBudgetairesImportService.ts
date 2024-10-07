/* generated using openapi-typescript-codegen -- do not edit */
/* istanbul ignore file */
/* tslint:disable */
/* eslint-disable */
import type { BooleanApiResponse } from '../models/BooleanApiResponse';
import type { DisciplineBudgetaireTempDatatableResponse } from '../models/DisciplineBudgetaireTempDatatableResponse';
import type { DtoPagination } from '../models/DtoPagination';
import type { CancelablePromise } from '../core/CancelablePromise';
import { OpenAPI } from '../core/OpenAPI';
import { request as __request } from '../core/request';
export class DisciplineBudgetairesImportService {
    /**
     * @param updatedBy
     * @param formData
     * @returns BooleanApiResponse OK
     * @throws ApiError
     */
    public static postApiDisciplineBudgetairesImportImporte(
        updatedBy?: string,
        formData?: {
            file?: Blob;
        },
    ): CancelablePromise<BooleanApiResponse> {
        return __request(OpenAPI, {
            method: 'POST',
            url: '/api/DisciplineBudgetairesImport/Importe',
            query: {
                'UpdatedBy': updatedBy,
            },
            formData: formData,
            mediaType: 'multipart/form-data',
        });
    }
    /**
     * @param requestBody
     * @returns DisciplineBudgetaireTempDatatableResponse OK
     * @throws ApiError
     */
    public static postApiDisciplineBudgetairesImportGetAllValideData(
        requestBody?: DtoPagination,
    ): CancelablePromise<DisciplineBudgetaireTempDatatableResponse> {
        return __request(OpenAPI, {
            method: 'POST',
            url: '/api/DisciplineBudgetairesImport/GetAllValideData',
            body: requestBody,
            mediaType: 'application/json',
        });
    }
    /**
     * @param requestBody
     * @returns DisciplineBudgetaireTempDatatableResponse OK
     * @throws ApiError
     */
    public static postApiDisciplineBudgetairesImportGetAllErrorsData(
        requestBody?: DtoPagination,
    ): CancelablePromise<DisciplineBudgetaireTempDatatableResponse> {
        return __request(OpenAPI, {
            method: 'POST',
            url: '/api/DisciplineBudgetairesImport/GetAllErrorsData',
            body: requestBody,
            mediaType: 'application/json',
        });
    }
    /**
     * @returns BooleanApiResponse OK
     * @throws ApiError
     */
    public static postApiDisciplineBudgetairesImportAnalyse(): CancelablePromise<BooleanApiResponse> {
        return __request(OpenAPI, {
            method: 'POST',
            url: '/api/DisciplineBudgetairesImport/Analyse',
        });
    }
    /**
     * @returns BooleanApiResponse OK
     * @throws ApiError
     */
    public static postApiDisciplineBudgetairesImportFusionner(): CancelablePromise<BooleanApiResponse> {
        return __request(OpenAPI, {
            method: 'POST',
            url: '/api/DisciplineBudgetairesImport/Fusionner',
        });
    }
}
