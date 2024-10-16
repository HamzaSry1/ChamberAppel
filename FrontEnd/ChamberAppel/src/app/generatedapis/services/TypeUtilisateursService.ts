/* generated using openapi-typescript-codegen -- do not edit */
/* istanbul ignore file */
/* tslint:disable */
/* eslint-disable */
import type { BooleanApiResponse } from '../models/BooleanApiResponse';
import type { DtoFiltreMotsCleDatatableRequest } from '../models/DtoFiltreMotsCleDatatableRequest';
import type { TypeUtilisateur } from '../models/TypeUtilisateur';
import type { TypeUtilisateurApiResponse } from '../models/TypeUtilisateurApiResponse';
import type { TypeUtilisateurDatatableResponse } from '../models/TypeUtilisateurDatatableResponse';
import type { CancelablePromise } from '../core/CancelablePromise';
import { OpenAPI } from '../core/OpenAPI';
import { request as __request } from '../core/request';
export class TypeUtilisateursService {
    /**
     * @param requestBody
     * @returns TypeUtilisateurDatatableResponse OK
     * @throws ApiError
     */
    public static postApiTypeUtilisateursGetAllFiltredAsync(
        requestBody?: DtoFiltreMotsCleDatatableRequest,
    ): CancelablePromise<TypeUtilisateurDatatableResponse> {
        return __request(OpenAPI, {
            method: 'POST',
            url: '/api/TypeUtilisateurs/GetAllFiltredAsync',
            body: requestBody,
            mediaType: 'application/json',
        });
    }
    /**
     * @param id
     * @returns TypeUtilisateurApiResponse OK
     * @throws ApiError
     */
    public static getApiTypeUtilisateursGetByIdAsync(
        id: string,
    ): CancelablePromise<TypeUtilisateurApiResponse> {
        return __request(OpenAPI, {
            method: 'GET',
            url: '/api/TypeUtilisateurs/GetByIdAsync/{id}',
            path: {
                'id': id,
            },
        });
    }
    /**
     * @param requestBody
     * @returns TypeUtilisateurApiResponse OK
     * @throws ApiError
     */
    public static postApiTypeUtilisateursCreateAsync(
        requestBody?: TypeUtilisateur,
    ): CancelablePromise<TypeUtilisateurApiResponse> {
        return __request(OpenAPI, {
            method: 'POST',
            url: '/api/TypeUtilisateurs/CreateAsync',
            body: requestBody,
            mediaType: 'application/json',
        });
    }
    /**
     * @param requestBody
     * @returns TypeUtilisateurApiResponse OK
     * @throws ApiError
     */
    public static putApiTypeUtilisateursUpdateAsync(
        requestBody?: TypeUtilisateur,
    ): CancelablePromise<TypeUtilisateurApiResponse> {
        return __request(OpenAPI, {
            method: 'PUT',
            url: '/api/TypeUtilisateurs/UpdateAsync',
            body: requestBody,
            mediaType: 'application/json',
        });
    }
    /**
     * @param id
     * @returns BooleanApiResponse OK
     * @throws ApiError
     */
    public static deleteApiTypeUtilisateursDeleteAsync(
        id: string,
    ): CancelablePromise<BooleanApiResponse> {
        return __request(OpenAPI, {
            method: 'DELETE',
            url: '/api/TypeUtilisateurs/DeleteAsync/{id}',
            path: {
                'id': id,
            },
        });
    }
    /**
     * @returns any OK
     * @throws ApiError
     */
    public static postApiTypeUtilisateursExporterAsync(): CancelablePromise<any> {
        return __request(OpenAPI, {
            method: 'POST',
            url: '/api/TypeUtilisateurs/ExporterAsync',
        });
    }
}
