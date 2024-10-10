/* generated using openapi-typescript-codegen -- do not edit */
/* istanbul ignore file */
/* tslint:disable */
/* eslint-disable */
import type { BooleanApiResponse } from '../models/BooleanApiResponse';
import type { ChamberAppeleTempDatatableResponse } from '../models/ChamberAppeleTempDatatableResponse';
import type { DisciplineBudgetaireTempDatatableResponse } from '../models/DisciplineBudgetaireTempDatatableResponse';
import type { DtoPagination } from '../models/DtoPagination';
import type { EnumFileType } from '../models/EnumFileType';
import type { CancelablePromise } from '../core/CancelablePromise';
import { OpenAPI } from '../core/OpenAPI';
import { request as __request } from '../core/request';
export class ImportService {
    /**
     * @param updatedBy
     * @param fileType
     * @param formData
     * @returns BooleanApiResponse OK
     * @throws ApiError
     */
    public static postApiImportImporte(
        updatedBy?: string,
        fileType?: EnumFileType,
        formData?: {
            file?: Blob;
        },
    ): CancelablePromise<BooleanApiResponse> {
        return __request(OpenAPI, {
            method: 'POST',
            url: '/api/Import/Importe',
            query: {
                'UpdatedBy': updatedBy,
                'FileType': fileType,
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
    public static postApiImportGetAllDisciplineBudgetaireValide(
        requestBody?: DtoPagination,
    ): CancelablePromise<DisciplineBudgetaireTempDatatableResponse> {
        return __request(OpenAPI, {
            method: 'POST',
            url: '/api/Import/GetAllDisciplineBudgetaireValide',
            body: requestBody,
            mediaType: 'application/json',
        });
    }
    /**
     * @param requestBody
     * @returns DisciplineBudgetaireTempDatatableResponse OK
     * @throws ApiError
     */
    public static postApiImportGetAllDisciplineBudgetaireErrors(
        requestBody?: DtoPagination,
    ): CancelablePromise<DisciplineBudgetaireTempDatatableResponse> {
        return __request(OpenAPI, {
            method: 'POST',
            url: '/api/Import/GetAllDisciplineBudgetaireErrors',
            body: requestBody,
            mediaType: 'application/json',
        });
    }
    /**
     * @param requestBody
     * @returns ChamberAppeleTempDatatableResponse OK
     * @throws ApiError
     */
    public static postApiImportGetAllChamberAppeleValide(
        requestBody?: DtoPagination,
    ): CancelablePromise<ChamberAppeleTempDatatableResponse> {
        return __request(OpenAPI, {
            method: 'POST',
            url: '/api/Import/GetAllChamberAppeleValide',
            body: requestBody,
            mediaType: 'application/json',
        });
    }
    /**
     * @param requestBody
     * @returns ChamberAppeleTempDatatableResponse OK
     * @throws ApiError
     */
    public static postApiImportGetAllChamberAppeleErrors(
        requestBody?: DtoPagination,
    ): CancelablePromise<ChamberAppeleTempDatatableResponse> {
        return __request(OpenAPI, {
            method: 'POST',
            url: '/api/Import/GetAllChamberAppeleErrors',
            body: requestBody,
            mediaType: 'application/json',
        });
    }
    /**
     * @param fileType
     * @returns BooleanApiResponse OK
     * @throws ApiError
     */
    public static postApiImportAnalyse(
        fileType?: EnumFileType,
    ): CancelablePromise<BooleanApiResponse> {
        return __request(OpenAPI, {
            method: 'POST',
            url: '/api/Import/Analyse',
            query: {
                'fileType': fileType,
            },
        });
    }
    /**
     * @param fileType
     * @returns BooleanApiResponse OK
     * @throws ApiError
     */
    public static postApiImportFusionner(
        fileType?: EnumFileType,
    ): CancelablePromise<BooleanApiResponse> {
        return __request(OpenAPI, {
            method: 'POST',
            url: '/api/Import/Fusionner',
            query: {
                'fileType': fileType,
            },
        });
    }
    /**
     * @param fileType
     * @returns any OK
     * @throws ApiError
     */
    public static postApiImportExporter(
        fileType?: EnumFileType,
    ): CancelablePromise<any> {
        return __request(OpenAPI, {
            method: 'POST',
            url: '/api/Import/Exporter',
            query: {
                'fileType': fileType,
            },
        });
    }
}
