/* generated using openapi-typescript-codegen -- do not edit */
/* istanbul ignore file */
/* tslint:disable */
/* eslint-disable */
import type { BooleanApiResponse } from '../models/BooleanApiResponse';
import type { DtoFiltreMotsCle } from '../models/DtoFiltreMotsCle';
import type { DtoFiltreMotsCleDatatableRequest } from '../models/DtoFiltreMotsCleDatatableRequest';
import type { DtoPermissionGroupeListApiResponse } from '../models/DtoPermissionGroupeListApiResponse';
import type { Permission } from '../models/Permission';
import type { PermissionApiResponse } from '../models/PermissionApiResponse';
import type { PermissionDatatableResponse } from '../models/PermissionDatatableResponse';
import type { PermissionListApiResponse } from '../models/PermissionListApiResponse';
import type { CancelablePromise } from '../core/CancelablePromise';
import { OpenAPI } from '../core/OpenAPI';
import { request as __request } from '../core/request';
export class PermissionsService {
    /**
     * @param requestBody
     * @returns PermissionDatatableResponse Success
     * @throws ApiError
     */
    public static postApiPermissionsGetAllFiltredAsync(
        requestBody?: DtoFiltreMotsCleDatatableRequest,
    ): CancelablePromise<PermissionDatatableResponse> {
        return __request(OpenAPI, {
            method: 'POST',
            url: '/api/Permissions/GetAllFiltredAsync',
            body: requestBody,
            mediaType: 'application/json',
        });
    }
    /**
     * @returns PermissionListApiResponse Success
     * @throws ApiError
     */
    public static getApiPermissionsGetAllAsync(): CancelablePromise<PermissionListApiResponse> {
        return __request(OpenAPI, {
            method: 'GET',
            url: '/api/Permissions/GetAllAsync',
        });
    }
    /**
     * @returns DtoPermissionGroupeListApiResponse Success
     * @throws ApiError
     */
    public static getApiPermissionsGetAllByGroupeAsync(): CancelablePromise<DtoPermissionGroupeListApiResponse> {
        return __request(OpenAPI, {
            method: 'GET',
            url: '/api/Permissions/GetAllByGroupeAsync',
        });
    }
    /**
     * @param id
     * @returns PermissionApiResponse Success
     * @throws ApiError
     */
    public static getApiPermissionsGetByIdAsync(
        id: string,
    ): CancelablePromise<PermissionApiResponse> {
        return __request(OpenAPI, {
            method: 'GET',
            url: '/api/Permissions/GetByIdAsync/{id}',
            path: {
                'id': id,
            },
        });
    }
    /**
     * @param requestBody
     * @returns PermissionApiResponse Success
     * @throws ApiError
     */
    public static postApiPermissionsCreateAsync(
        requestBody?: Permission,
    ): CancelablePromise<PermissionApiResponse> {
        return __request(OpenAPI, {
            method: 'POST',
            url: '/api/Permissions/CreateAsync',
            body: requestBody,
            mediaType: 'application/json',
        });
    }
    /**
     * @param requestBody
     * @returns PermissionApiResponse Success
     * @throws ApiError
     */
    public static putApiPermissionsUpdateAsync(
        requestBody?: Permission,
    ): CancelablePromise<PermissionApiResponse> {
        return __request(OpenAPI, {
            method: 'PUT',
            url: '/api/Permissions/UpdateAsync',
            body: requestBody,
            mediaType: 'application/json',
        });
    }
    /**
     * @param id
     * @returns BooleanApiResponse Success
     * @throws ApiError
     */
    public static deleteApiPermissionsDeleteAsync(
        id: string,
    ): CancelablePromise<BooleanApiResponse> {
        return __request(OpenAPI, {
            method: 'DELETE',
            url: '/api/Permissions/DeleteAsync/{id}',
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
    public static postApiPermissionsExporterAsync(
        requestBody?: DtoFiltreMotsCle,
    ): CancelablePromise<any> {
        return __request(OpenAPI, {
            method: 'POST',
            url: '/api/Permissions/ExporterAsync',
            body: requestBody,
            mediaType: 'application/json',
        });
    }
}
