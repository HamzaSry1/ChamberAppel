/* generated using openapi-typescript-codegen -- do not edit */
/* istanbul ignore file */
/* tslint:disable */
/* eslint-disable */
import type { BooleanApiResponse } from '../models/BooleanApiResponse';
import type { DisciplineBudgetaire } from '../models/DisciplineBudgetaire';
import type { DisciplineBudgetaireApiResponse } from '../models/DisciplineBudgetaireApiResponse';
import type { DisciplineBudgetaireDatatableResponse } from '../models/DisciplineBudgetaireDatatableResponse';
import type { DtoFiltreDisciplineBudgetaireDatatableRequest } from '../models/DtoFiltreDisciplineBudgetaireDatatableRequest';
import type { DtoFiltreMotsCle } from '../models/DtoFiltreMotsCle';
import type { CancelablePromise } from '../core/CancelablePromise';
import { OpenAPI } from '../core/OpenAPI';
import { request as __request } from '../core/request';
export class DisciplineBudgetairesService {
    /**
     * @param requestBody
     * @returns DisciplineBudgetaireDatatableResponse Success
     * @throws ApiError
     */
    public static postApiDisciplineBudgetairesGetAllFiltredAsync(
        requestBody?: DtoFiltreDisciplineBudgetaireDatatableRequest,
    ): CancelablePromise<DisciplineBudgetaireDatatableResponse> {
        return __request(OpenAPI, {
            method: 'POST',
            url: '/api/DisciplineBudgetaires/GetAllFiltredAsync',
            body: requestBody,
            mediaType: 'application/json',
        });
    }
    /**
     * @param id
     * @returns DisciplineBudgetaireApiResponse Success
     * @throws ApiError
     */
    public static getApiDisciplineBudgetairesGetByIdAsync(
        id: string,
    ): CancelablePromise<DisciplineBudgetaireApiResponse> {
        return __request(OpenAPI, {
            method: 'GET',
            url: '/api/DisciplineBudgetaires/GetByIdAsync/{id}',
            path: {
                'id': id,
            },
        });
    }
    /**
     * @param requestBody
     * @returns DisciplineBudgetaireApiResponse Success
     * @throws ApiError
     */
    public static postApiDisciplineBudgetairesCreateAsync(
        requestBody?: DisciplineBudgetaire,
    ): CancelablePromise<DisciplineBudgetaireApiResponse> {
        return __request(OpenAPI, {
            method: 'POST',
            url: '/api/DisciplineBudgetaires/CreateAsync',
            body: requestBody,
            mediaType: 'application/json',
        });
    }
    /**
     * @param requestBody
     * @returns DisciplineBudgetaireApiResponse Success
     * @throws ApiError
     */
    public static putApiDisciplineBudgetairesUpdateAsync(
        requestBody?: DisciplineBudgetaire,
    ): CancelablePromise<DisciplineBudgetaireApiResponse> {
        return __request(OpenAPI, {
            method: 'PUT',
            url: '/api/DisciplineBudgetaires/UpdateAsync',
            body: requestBody,
            mediaType: 'application/json',
        });
    }
    /**
     * @param id
     * @returns BooleanApiResponse Success
     * @throws ApiError
     */
    public static deleteApiDisciplineBudgetairesDeleteAsync(
        id: string,
    ): CancelablePromise<BooleanApiResponse> {
        return __request(OpenAPI, {
            method: 'DELETE',
            url: '/api/DisciplineBudgetaires/DeleteAsync/{id}',
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
    public static postApiDisciplineBudgetairesExporterAsync(
        requestBody?: DtoFiltreMotsCle,
    ): CancelablePromise<any> {
        return __request(OpenAPI, {
            method: 'POST',
            url: '/api/DisciplineBudgetaires/ExporterAsync',
            body: requestBody,
            mediaType: 'application/json',
        });
    }
}
