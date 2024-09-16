/* generated using openapi-typescript-codegen -- do not edit */
/* istanbul ignore file */
/* tslint:disable */
/* eslint-disable */
import type { BooleanApiResponse } from '../models/BooleanApiResponse';
import type { DtoChangePassword } from '../models/DtoChangePassword';
import type { DtoCheckedListRequest } from '../models/DtoCheckedListRequest';
import type { DtoFiltreUtilisateur } from '../models/DtoFiltreUtilisateur';
import type { DtoFiltreUtilisateurDatatableRequest } from '../models/DtoFiltreUtilisateurDatatableRequest';
import type { DtoLogin } from '../models/DtoLogin';
import type { DtoLoginResultApiResponse } from '../models/DtoLoginResultApiResponse';
import type { DtoUtilisateur } from '../models/DtoUtilisateur';
import type { DtoUtilisateurApiResponse } from '../models/DtoUtilisateurApiResponse';
import type { DtoUtilisateurDatatableResponse } from '../models/DtoUtilisateurDatatableResponse';
import type { PermissionListApiResponse } from '../models/PermissionListApiResponse';
import type { RoleListApiResponse } from '../models/RoleListApiResponse';
import type { CancelablePromise } from '../core/CancelablePromise';
import { OpenAPI } from '../core/OpenAPI';
import { request as __request } from '../core/request';
export class UtilisateursService {
    /**
     * @param requestBody
     * @returns DtoUtilisateurDatatableResponse Success
     * @throws ApiError
     */
    public static postApiUtilisateursGetAllAsync(
        requestBody?: DtoFiltreUtilisateurDatatableRequest,
    ): CancelablePromise<DtoUtilisateurDatatableResponse> {
        return __request(OpenAPI, {
            method: 'POST',
            url: '/api/Utilisateurs/GetAllAsync',
            body: requestBody,
            mediaType: 'application/json',
        });
    }
    /**
     * @param id
     * @returns DtoUtilisateurApiResponse Success
     * @throws ApiError
     */
    public static getApiUtilisateursGetByIdAsync(
        id: string,
    ): CancelablePromise<DtoUtilisateurApiResponse> {
        return __request(OpenAPI, {
            method: 'GET',
            url: '/api/Utilisateurs/GetByIdAsync/{id}',
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
    public static postApiUtilisateursExporterAsync(
        requestBody?: DtoFiltreUtilisateur,
    ): CancelablePromise<any> {
        return __request(OpenAPI, {
            method: 'POST',
            url: '/api/Utilisateurs/ExporterAsync',
            body: requestBody,
            mediaType: 'application/json',
        });
    }
    /**
     * @param requestBody
     * @returns DtoUtilisateurApiResponse Success
     * @throws ApiError
     */
    public static postApiUtilisateursCreateAsync(
        requestBody?: DtoUtilisateur,
    ): CancelablePromise<DtoUtilisateurApiResponse> {
        return __request(OpenAPI, {
            method: 'POST',
            url: '/api/Utilisateurs/CreateAsync',
            body: requestBody,
            mediaType: 'application/json',
        });
    }
    /**
     * @param requestBody
     * @returns DtoUtilisateurApiResponse Success
     * @throws ApiError
     */
    public static putApiUtilisateursUpdateAsync(
        requestBody?: DtoUtilisateur,
    ): CancelablePromise<DtoUtilisateurApiResponse> {
        return __request(OpenAPI, {
            method: 'PUT',
            url: '/api/Utilisateurs/UpdateAsync',
            body: requestBody,
            mediaType: 'application/json',
        });
    }
    /**
     * @param id
     * @returns BooleanApiResponse Success
     * @throws ApiError
     */
    public static deleteApiUtilisateursDeleteAsync(
        id: string,
    ): CancelablePromise<BooleanApiResponse> {
        return __request(OpenAPI, {
            method: 'DELETE',
            url: '/api/Utilisateurs/DeleteAsync/{id}',
            path: {
                'id': id,
            },
        });
    }
    /**
     * @param id
     * @returns PermissionListApiResponse Success
     * @throws ApiError
     */
    public static getApiUtilisateursGetPermissionsAsync(
        id: string,
    ): CancelablePromise<PermissionListApiResponse> {
        return __request(OpenAPI, {
            method: 'GET',
            url: '/api/Utilisateurs/GetPermissionsAsync/{id}',
            path: {
                'id': id,
            },
        });
    }
    /**
     * @param id
     * @returns RoleListApiResponse Success
     * @throws ApiError
     */
    public static getApiUtilisateursGetRolesAsync(
        id: string,
    ): CancelablePromise<RoleListApiResponse> {
        return __request(OpenAPI, {
            method: 'GET',
            url: '/api/Utilisateurs/GetRolesAsync/{id}',
            path: {
                'id': id,
            },
        });
    }
    /**
     * @param requestBody
     * @returns BooleanApiResponse Success
     * @throws ApiError
     */
    public static postApiUtilisateursAddPermissionsAsync(
        requestBody?: DtoCheckedListRequest,
    ): CancelablePromise<BooleanApiResponse> {
        return __request(OpenAPI, {
            method: 'POST',
            url: '/api/Utilisateurs/AddPermissionsAsync',
            body: requestBody,
            mediaType: 'application/json',
        });
    }
    /**
     * @param requestBody
     * @returns BooleanApiResponse Success
     * @throws ApiError
     */
    public static postApiUtilisateursAddRolesAsync(
        requestBody?: DtoCheckedListRequest,
    ): CancelablePromise<BooleanApiResponse> {
        return __request(OpenAPI, {
            method: 'POST',
            url: '/api/Utilisateurs/AddRolesAsync',
            body: requestBody,
            mediaType: 'application/json',
        });
    }
    /**
     * @param requestBody
     * @returns DtoLoginResultApiResponse Success
     * @throws ApiError
     */
    public static getApiUtilisateursGetMyPermissionsAsync(
        requestBody?: DtoLogin,
    ): CancelablePromise<DtoLoginResultApiResponse> {
        return __request(OpenAPI, {
            method: 'GET',
            url: '/api/Utilisateurs/GetMyPermissionsAsync',
            body: requestBody,
            mediaType: 'application/json',
        });
    }
    /**
     * @param requestBody
     * @returns DtoLoginResultApiResponse Success
     * @throws ApiError
     */
    public static postApiUtilisateursLoginAsync(
        requestBody?: DtoLogin,
    ): CancelablePromise<DtoLoginResultApiResponse> {
        return __request(OpenAPI, {
            method: 'POST',
            url: '/api/Utilisateurs/LoginAsync',
            body: requestBody,
            mediaType: 'application/json',
        });
    }
    /**
     * @param requestBody
     * @returns BooleanApiResponse Success
     * @throws ApiError
     */
    public static postApiUtilisateursResetPasswordAsync(
        requestBody?: DtoChangePassword,
    ): CancelablePromise<BooleanApiResponse> {
        return __request(OpenAPI, {
            method: 'POST',
            url: '/api/Utilisateurs/ResetPasswordAsync',
            body: requestBody,
            mediaType: 'application/json',
        });
    }
}
