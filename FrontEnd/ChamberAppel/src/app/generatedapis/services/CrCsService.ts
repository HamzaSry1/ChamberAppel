/* generated using openapi-typescript-codegen -- do not edit */
/* istanbul ignore file */
/* tslint:disable */
/* eslint-disable */
import type { BooleanApiResponse } from '../models/BooleanApiResponse';
import type { CRC } from '../models/CRC';
import type { CRCApiResponse } from '../models/CRCApiResponse';
import type { CRCDatatableResponse } from '../models/CRCDatatableResponse';
import type { CRCListApiResponse } from '../models/CRCListApiResponse';
import type { DtoFiltreMotsCleDatatableRequest } from '../models/DtoFiltreMotsCleDatatableRequest';
import type { CancelablePromise } from '../core/CancelablePromise';
import { OpenAPI } from '../core/OpenAPI';
import { request as __request } from '../core/request';
export class CrCsService {
    /**
     * @param requestBody
     * @returns CRCDatatableResponse OK
     * @throws ApiError
     */
    public static postApiCrCsGetAllFiltredAsync(
        requestBody?: DtoFiltreMotsCleDatatableRequest,
    ): CancelablePromise<CRCDatatableResponse> {
        return __request(OpenAPI, {
            method: 'POST',
            url: '/api/CRCs/GetAllFiltredAsync',
            body: requestBody,
            mediaType: 'application/json',
        });
    }
    /**
     * @returns CRCListApiResponse OK
     * @throws ApiError
     */
    public static getApiCrCsGetAllAsync(): CancelablePromise<CRCListApiResponse> {
        return __request(OpenAPI, {
            method: 'GET',
            url: '/api/CRCs/GetAllAsync',
        });
    }
    /**
     * @param id
     * @returns CRCApiResponse OK
     * @throws ApiError
     */
    public static getApiCrCsGetByIdAsync(
        id: string,
    ): CancelablePromise<CRCApiResponse> {
        return __request(OpenAPI, {
            method: 'GET',
            url: '/api/CRCs/GetByIdAsync/{id}',
            path: {
                'id': id,
            },
        });
    }
    /**
     * @param requestBody
     * @returns CRCApiResponse OK
     * @throws ApiError
     */
    public static postApiCrCsCreateAsync(
        requestBody?: CRC,
    ): CancelablePromise<CRCApiResponse> {
        return __request(OpenAPI, {
            method: 'POST',
            url: '/api/CRCs/CreateAsync',
            body: requestBody,
            mediaType: 'application/json',
        });
    }
    /**
     * @param requestBody
     * @returns CRCApiResponse OK
     * @throws ApiError
     */
    public static putApiCrCsUpdateAsync(
        requestBody?: CRC,
    ): CancelablePromise<CRCApiResponse> {
        return __request(OpenAPI, {
            method: 'PUT',
            url: '/api/CRCs/UpdateAsync',
            body: requestBody,
            mediaType: 'application/json',
        });
    }
    /**
     * @param id
     * @returns BooleanApiResponse OK
     * @throws ApiError
     */
    public static deleteApiCrCsDeleteAsync(
        id: string,
    ): CancelablePromise<BooleanApiResponse> {
        return __request(OpenAPI, {
            method: 'DELETE',
            url: '/api/CRCs/DeleteAsync/{id}',
            path: {
                'id': id,
            },
        });
    }
    /**
     * @returns any OK
     * @throws ApiError
     */
    public static postApiCrCsExporterAsync(): CancelablePromise<any> {
        return __request(OpenAPI, {
            method: 'POST',
            url: '/api/CRCs/ExporterAsync',
        });
    }
}
