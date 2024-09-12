/* generated using openapi-typescript-codegen -- do not edit */
/* istanbul ignore file */
/* tslint:disable */
/* eslint-disable */
import type { BooleanApiResponse } from '../models/BooleanApiResponse';
import type { PersonnePhysique } from '../models/PersonnePhysique';
import type { PersonnePhysiqueApiResponse } from '../models/PersonnePhysiqueApiResponse';
import type { PersonnePhysiqueListApiResponse } from '../models/PersonnePhysiqueListApiResponse';
import type { CancelablePromise } from '../core/CancelablePromise';
import { OpenAPI } from '../core/OpenAPI';
import { request as __request } from '../core/request';
export class PersonnePhysiquesService {
    /**
     * @returns PersonnePhysiqueListApiResponse Success
     * @throws ApiError
     */
    public static getApiPersonnePhysiquesGetAllAsync(): CancelablePromise<PersonnePhysiqueListApiResponse> {
        return __request(OpenAPI, {
            method: 'GET',
            url: '/api/PersonnePhysiques/GetAllAsync',
        });
    }
    /**
     * @param id
     * @returns PersonnePhysiqueApiResponse Success
     * @throws ApiError
     */
    public static getApiPersonnePhysiquesGetByIdAsync(
        id: string,
    ): CancelablePromise<PersonnePhysiqueApiResponse> {
        return __request(OpenAPI, {
            method: 'GET',
            url: '/api/PersonnePhysiques/GetByIdAsync/{id}',
            path: {
                'id': id,
            },
        });
    }
    /**
     * @param requestBody
     * @returns PersonnePhysiqueApiResponse Success
     * @throws ApiError
     */
    public static postApiPersonnePhysiquesCreateAsync(
        requestBody?: PersonnePhysique,
    ): CancelablePromise<PersonnePhysiqueApiResponse> {
        return __request(OpenAPI, {
            method: 'POST',
            url: '/api/PersonnePhysiques/CreateAsync',
            body: requestBody,
            mediaType: 'application/json',
        });
    }
    /**
     * @param requestBody
     * @returns PersonnePhysiqueApiResponse Success
     * @throws ApiError
     */
    public static putApiPersonnePhysiquesUpdateAsync(
        requestBody?: PersonnePhysique,
    ): CancelablePromise<PersonnePhysiqueApiResponse> {
        return __request(OpenAPI, {
            method: 'PUT',
            url: '/api/PersonnePhysiques/UpdateAsync',
            body: requestBody,
            mediaType: 'application/json',
        });
    }
    /**
     * @param id
     * @returns BooleanApiResponse Success
     * @throws ApiError
     */
    public static deleteApiPersonnePhysiquesDeleteAsync(
        id: string,
    ): CancelablePromise<BooleanApiResponse> {
        return __request(OpenAPI, {
            method: 'DELETE',
            url: '/api/PersonnePhysiques/DeleteAsync/{Id}',
            path: {
                'Id': id,
            },
        });
    }
}
