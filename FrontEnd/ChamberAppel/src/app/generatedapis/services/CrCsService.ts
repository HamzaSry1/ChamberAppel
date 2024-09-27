/* generated using openapi-typescript-codegen -- do not edit */
/* istanbul ignore file */
/* tslint:disable */
/* eslint-disable */
import type { BooleanApiResponse } from '../models/BooleanApiResponse';
import type { CRC } from '../models/CRC';
import type { CRCApiResponse } from '../models/CRCApiResponse';
import type { CRCListApiResponse } from '../models/CRCListApiResponse';
import type { DtoFiltreMotsCle } from '../models/DtoFiltreMotsCle';
import type { CancelablePromise } from '../core/CancelablePromise';
import { OpenAPI } from '../core/OpenAPI';
import { request as __request } from '../core/request';
export class CrCsService {
    /**
     * @returns CRCListApiResponse Success
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
     * @returns CRCApiResponse Success
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
     * @returns CRCApiResponse Success
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
     * @returns CRCApiResponse Success
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
     * @returns BooleanApiResponse Success
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
     * @param requestBody
     * @returns any Success
     * @throws ApiError
     */
    public static postApiCrCsExporterAsync(
        requestBody?: DtoFiltreMotsCle,
    ): CancelablePromise<any> {
        return __request(OpenAPI, {
            method: 'POST',
            url: '/api/CRCs/ExporterAsync',
            body: requestBody,
            mediaType: 'application/json',
        });
    }
}
