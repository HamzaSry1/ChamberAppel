/* generated using openapi-typescript-codegen -- do not edit */
/* istanbul ignore file */
/* tslint:disable */
/* eslint-disable */
import type { BooleanApiResponse } from '../models/BooleanApiResponse';
import type { DtoCheckedListRequest } from '../models/DtoCheckedListRequest';
import type { DtoFiltreMotsCle } from '../models/DtoFiltreMotsCle';
import type { DtoFiltreMotsCleDatatableRequest } from '../models/DtoFiltreMotsCleDatatableRequest';
import type { PermissionListApiResponse } from '../models/PermissionListApiResponse';
import type { Role } from '../models/Role';
import type { RoleApiResponse } from '../models/RoleApiResponse';
import type { RoleDatatableResponse } from '../models/RoleDatatableResponse';
import type { RoleListApiResponse } from '../models/RoleListApiResponse';
import type { CancelablePromise } from '../core/CancelablePromise';
import { OpenAPI } from '../core/OpenAPI';
import { request as __request } from '../core/request';
export class RolesService {
    /**
     * @param requestBody
     * @returns RoleDatatableResponse Success
     * @throws ApiError
     */
    public static postApiRolesGetAllFiltredAsync(
        requestBody?: DtoFiltreMotsCleDatatableRequest,
    ): CancelablePromise<RoleDatatableResponse> {
        return __request(OpenAPI, {
            method: 'POST',
            url: '/api/Roles/GetAllFiltredAsync',
            body: requestBody,
            mediaType: 'application/json',
        });
    }
    /**
     * @returns RoleListApiResponse Success
     * @throws ApiError
     */
    public static getApiRolesGetAllAsync(): CancelablePromise<RoleListApiResponse> {
        return __request(OpenAPI, {
            method: 'GET',
            url: '/api/Roles/GetAllAsync',
        });
    }
    /**
     * @param id
     * @returns RoleApiResponse Success
     * @throws ApiError
     */
    public static getApiRolesGetById(
        id: string,
    ): CancelablePromise<RoleApiResponse> {
        return __request(OpenAPI, {
            method: 'GET',
            url: '/api/Roles/GetById/{id}',
            path: {
                'id': id,
            },
        });
    }
    /**
     * @param requestBody
     * @returns RoleApiResponse Success
     * @throws ApiError
     */
    public static postApiRolesCreateAsync(
        requestBody?: Role,
    ): CancelablePromise<RoleApiResponse> {
        return __request(OpenAPI, {
            method: 'POST',
            url: '/api/Roles/CreateAsync',
            body: requestBody,
            mediaType: 'application/json',
        });
    }
    /**
     * @param requestBody
     * @returns RoleApiResponse Success
     * @throws ApiError
     */
    public static putApiRolesUpdateAsync(
        requestBody?: Role,
    ): CancelablePromise<RoleApiResponse> {
        return __request(OpenAPI, {
            method: 'PUT',
            url: '/api/Roles/UpdateAsync',
            body: requestBody,
            mediaType: 'application/json',
        });
    }
    /**
     * @param id
     * @returns BooleanApiResponse Success
     * @throws ApiError
     */
    public static deleteApiRolesDeleteAsync(
        id: string,
    ): CancelablePromise<BooleanApiResponse> {
        return __request(OpenAPI, {
            method: 'DELETE',
            url: '/api/Roles/DeleteAsync/{id}',
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
    public static postApiRolesExporterAsync(
        requestBody?: DtoFiltreMotsCle,
    ): CancelablePromise<any> {
        return __request(OpenAPI, {
            method: 'POST',
            url: '/api/Roles/ExporterAsync',
            body: requestBody,
            mediaType: 'application/json',
        });
    }
    /**
     * @param requestBody
     * @returns BooleanApiResponse Success
     * @throws ApiError
     */
    public static postApiRolesAddPermissionsAsync(
        requestBody?: DtoCheckedListRequest,
    ): CancelablePromise<BooleanApiResponse> {
        return __request(OpenAPI, {
            method: 'POST',
            url: '/api/Roles/AddPermissionsAsync',
            body: requestBody,
            mediaType: 'application/json',
        });
    }
    /**
     * @param roldId
     * @returns PermissionListApiResponse Success
     * @throws ApiError
     */
    public static getApiRolesGetPermissionsAsync(
        roldId?: string,
    ): CancelablePromise<PermissionListApiResponse> {
        return __request(OpenAPI, {
            method: 'GET',
            url: '/api/Roles/GetPermissionsAsync',
            query: {
                'roldId': roldId,
            },
        });
    }
}
