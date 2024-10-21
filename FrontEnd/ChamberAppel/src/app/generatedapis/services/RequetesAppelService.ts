/* generated using openapi-typescript-codegen -- do not edit */
/* istanbul ignore file */
/* tslint:disable */
/* eslint-disable */
import type { BooleanApiResponse } from '../models/BooleanApiResponse';
import type { DtoFiltreRequeteAppele } from '../models/DtoFiltreRequeteAppele';
import type { DtoFiltreRequeteAppeleDatatableRequest } from '../models/DtoFiltreRequeteAppeleDatatableRequest';
import type { DtoRequeteAppelDatatableResponse } from '../models/DtoRequeteAppelDatatableResponse';
import type { RequeteAppel } from '../models/RequeteAppel';
import type { RequeteAppelApiResponse } from '../models/RequeteAppelApiResponse';
import type { CancelablePromise } from '../core/CancelablePromise';
import { OpenAPI } from '../core/OpenAPI';
import { request as __request } from '../core/request';
export class RequetesAppelService {
    /**
     * @param requestBody
     * @returns DtoRequeteAppelDatatableResponse OK
     * @throws ApiError
     */
    public static postApiRequetesAppelGetAllFiltredAsync(
        requestBody?: DtoFiltreRequeteAppeleDatatableRequest,
    ): CancelablePromise<DtoRequeteAppelDatatableResponse> {
        return __request(OpenAPI, {
            method: 'POST',
            url: '/api/RequetesAppel/GetAllFiltredAsync',
            body: requestBody,
            mediaType: 'application/json',
        });
    }
    /**
     * @param id
     * @returns RequeteAppelApiResponse OK
     * @throws ApiError
     */
    public static getApiRequetesAppelGetByIdAsync(
        id: string,
    ): CancelablePromise<RequeteAppelApiResponse> {
        return __request(OpenAPI, {
            method: 'GET',
            url: '/api/RequetesAppel/GetByIdAsync/{id}',
            path: {
                'id': id,
            },
        });
    }
    /**
     * @param requestBody
     * @returns RequeteAppelApiResponse OK
     * @throws ApiError
     */
    public static postApiRequetesAppelCreateAsync(
        requestBody?: RequeteAppel,
    ): CancelablePromise<RequeteAppelApiResponse> {
        return __request(OpenAPI, {
            method: 'POST',
            url: '/api/RequetesAppel/CreateAsync',
            body: requestBody,
            mediaType: 'application/json',
        });
    }
    /**
     * @param requestBody
     * @returns RequeteAppelApiResponse OK
     * @throws ApiError
     */
    public static putApiRequetesAppelUpdateAsync(
        requestBody?: RequeteAppel,
    ): CancelablePromise<RequeteAppelApiResponse> {
        return __request(OpenAPI, {
            method: 'PUT',
            url: '/api/RequetesAppel/UpdateAsync',
            body: requestBody,
            mediaType: 'application/json',
        });
    }
    /**
     * @param id
     * @returns BooleanApiResponse OK
     * @throws ApiError
     */
    public static deleteApiRequetesAppelDeleteAsync(
        id: string,
    ): CancelablePromise<BooleanApiResponse> {
        return __request(OpenAPI, {
            method: 'DELETE',
            url: '/api/RequetesAppel/DeleteAsync/{id}',
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
    public static postApiRequetesAppelExporterAsync(
        requestBody?: DtoFiltreRequeteAppele,
    ): CancelablePromise<any> {
        return __request(OpenAPI, {
            method: 'POST',
            url: '/api/RequetesAppel/ExporterAsync',
            body: requestBody,
            mediaType: 'application/json',
        });
    }
}
