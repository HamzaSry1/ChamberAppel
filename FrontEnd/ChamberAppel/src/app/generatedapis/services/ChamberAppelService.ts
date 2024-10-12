/* generated using openapi-typescript-codegen -- do not edit */
/* istanbul ignore file */
/* tslint:disable */
/* eslint-disable */
import type { BooleanApiResponse } from '../models/BooleanApiResponse';
import type { ChamberAppele } from '../models/ChamberAppele';
import type { ChamberAppeleApiResponse } from '../models/ChamberAppeleApiResponse';
import type { ChamberAppeleDatatableResponse } from '../models/ChamberAppeleDatatableResponse';
import type { DtoFiltreChamberAppele } from '../models/DtoFiltreChamberAppele';
import type { DtoFiltreChamberAppeleDatatableRequest } from '../models/DtoFiltreChamberAppeleDatatableRequest';
import type { CancelablePromise } from '../core/CancelablePromise';
import { OpenAPI } from '../core/OpenAPI';
import { request as __request } from '../core/request';
export class ChamberAppelService {
    /**
     * @param requestBody
     * @returns ChamberAppeleDatatableResponse OK
     * @throws ApiError
     */
    public static postApiChamberAppelGetAllFiltredAsync(
        requestBody?: DtoFiltreChamberAppeleDatatableRequest,
    ): CancelablePromise<ChamberAppeleDatatableResponse> {
        return __request(OpenAPI, {
            method: 'POST',
            url: '/api/ChamberAppel/GetAllFiltredAsync',
            body: requestBody,
            mediaType: 'application/json',
        });
    }
    /**
     * @param id
     * @returns ChamberAppeleApiResponse OK
     * @throws ApiError
     */
    public static getApiChamberAppelGetByIdAsync(
        id: string,
    ): CancelablePromise<ChamberAppeleApiResponse> {
        return __request(OpenAPI, {
            method: 'GET',
            url: '/api/ChamberAppel/GetByIdAsync/{id}',
            path: {
                'id': id,
            },
        });
    }
    /**
     * @param requestBody
     * @returns ChamberAppeleApiResponse OK
     * @throws ApiError
     */
    public static postApiChamberAppelCreateAsync(
        requestBody?: ChamberAppele,
    ): CancelablePromise<ChamberAppeleApiResponse> {
        return __request(OpenAPI, {
            method: 'POST',
            url: '/api/ChamberAppel/CreateAsync',
            body: requestBody,
            mediaType: 'application/json',
        });
    }
    /**
     * @param requestBody
     * @returns ChamberAppeleApiResponse OK
     * @throws ApiError
     */
    public static putApiChamberAppelUpdateAsync(
        requestBody?: ChamberAppele,
    ): CancelablePromise<ChamberAppeleApiResponse> {
        return __request(OpenAPI, {
            method: 'PUT',
            url: '/api/ChamberAppel/UpdateAsync',
            body: requestBody,
            mediaType: 'application/json',
        });
    }
    /**
     * @param id
     * @returns BooleanApiResponse OK
     * @throws ApiError
     */
    public static deleteApiChamberAppelDeleteAsync(
        id: string,
    ): CancelablePromise<BooleanApiResponse> {
        return __request(OpenAPI, {
            method: 'DELETE',
            url: '/api/ChamberAppel/DeleteAsync/{id}',
            path: {
                'id': id,
            },
        });
    }
    /**
     * @param requestBody
     * @returns any OK
     * @throws ApiError
     */
    public static postApiChamberAppelExporterAsync(
        requestBody?: DtoFiltreChamberAppele,
    ): CancelablePromise<any> {
        return __request(OpenAPI, {
            method: 'POST',
            url: '/api/ChamberAppel/ExporterAsync',
            body: requestBody,
            mediaType: 'application/json',
        });
    }
}
