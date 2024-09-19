/* generated using openapi-typescript-codegen -- do not edit */
/* istanbul ignore file */
/* tslint:disable */
/* eslint-disable */
import type { BooleanApiResponse } from '../models/BooleanApiResponse';
import type { ChamberAppelDisciplineBudgetaire } from '../models/ChamberAppelDisciplineBudgetaire';
import type { ChamberAppelDisciplineBudgetaireApiResponse } from '../models/ChamberAppelDisciplineBudgetaireApiResponse';
import type { ChamberAppelDisciplineBudgetaireDatatableResponse } from '../models/ChamberAppelDisciplineBudgetaireDatatableResponse';
import type { DtoFiltreMotsCle } from '../models/DtoFiltreMotsCle';
import type { DtoFiltreMotsCleDatatableRequest } from '../models/DtoFiltreMotsCleDatatableRequest';
import type { CancelablePromise } from '../core/CancelablePromise';
import { OpenAPI } from '../core/OpenAPI';
import { request as __request } from '../core/request';
export class ChamberAppelDisciplineBudgetairesService {
    /**
     * @param requestBody
     * @returns ChamberAppelDisciplineBudgetaireDatatableResponse Success
     * @throws ApiError
     */
    public static postApiChamberAppelDisciplineBudgetairesGetAllFiltredAsync(
        requestBody?: DtoFiltreMotsCleDatatableRequest,
    ): CancelablePromise<ChamberAppelDisciplineBudgetaireDatatableResponse> {
        return __request(OpenAPI, {
            method: 'POST',
            url: '/api/ChamberAppelDisciplineBudgetaires/GetAllFiltredAsync',
            body: requestBody,
            mediaType: 'application/json',
        });
    }
    /**
     * @param id
     * @returns ChamberAppelDisciplineBudgetaireApiResponse Success
     * @throws ApiError
     */
    public static getApiChamberAppelDisciplineBudgetairesGetByIdAsync(
        id: string,
    ): CancelablePromise<ChamberAppelDisciplineBudgetaireApiResponse> {
        return __request(OpenAPI, {
            method: 'GET',
            url: '/api/ChamberAppelDisciplineBudgetaires/GetByIdAsync/{id}',
            path: {
                'id': id,
            },
        });
    }
    /**
     * @param requestBody
     * @returns ChamberAppelDisciplineBudgetaireApiResponse Success
     * @throws ApiError
     */
    public static postApiChamberAppelDisciplineBudgetairesCreateAsync(
        requestBody?: ChamberAppelDisciplineBudgetaire,
    ): CancelablePromise<ChamberAppelDisciplineBudgetaireApiResponse> {
        return __request(OpenAPI, {
            method: 'POST',
            url: '/api/ChamberAppelDisciplineBudgetaires/CreateAsync',
            body: requestBody,
            mediaType: 'application/json',
        });
    }
    /**
     * @param requestBody
     * @returns ChamberAppelDisciplineBudgetaireApiResponse Success
     * @throws ApiError
     */
    public static putApiChamberAppelDisciplineBudgetairesUpdateAsync(
        requestBody?: ChamberAppelDisciplineBudgetaire,
    ): CancelablePromise<ChamberAppelDisciplineBudgetaireApiResponse> {
        return __request(OpenAPI, {
            method: 'PUT',
            url: '/api/ChamberAppelDisciplineBudgetaires/UpdateAsync',
            body: requestBody,
            mediaType: 'application/json',
        });
    }
    /**
     * @param id
     * @returns BooleanApiResponse Success
     * @throws ApiError
     */
    public static deleteApiChamberAppelDisciplineBudgetairesDeleteAsync(
        id: string,
    ): CancelablePromise<BooleanApiResponse> {
        return __request(OpenAPI, {
            method: 'DELETE',
            url: '/api/ChamberAppelDisciplineBudgetaires/DeleteAsync/{id}',
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
    public static postApiChamberAppelDisciplineBudgetairesExporterAsync(
        requestBody?: DtoFiltreMotsCle,
    ): CancelablePromise<any> {
        return __request(OpenAPI, {
            method: 'POST',
            url: '/api/ChamberAppelDisciplineBudgetaires/ExporterAsync',
            body: requestBody,
            mediaType: 'application/json',
        });
    }
}
