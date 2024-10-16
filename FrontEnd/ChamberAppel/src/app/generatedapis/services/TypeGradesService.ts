/* generated using openapi-typescript-codegen -- do not edit */
/* istanbul ignore file */
/* tslint:disable */
/* eslint-disable */
import type { BooleanApiResponse } from '../models/BooleanApiResponse';
import type { DtoFiltreMotsCleDatatableRequest } from '../models/DtoFiltreMotsCleDatatableRequest';
import type { TypeGrade } from '../models/TypeGrade';
import type { TypeGradeApiResponse } from '../models/TypeGradeApiResponse';
import type { TypeGradeDatatableResponse } from '../models/TypeGradeDatatableResponse';
import type { CancelablePromise } from '../core/CancelablePromise';
import { OpenAPI } from '../core/OpenAPI';
import { request as __request } from '../core/request';
export class TypeGradesService {
    /**
     * @param requestBody
     * @returns TypeGradeDatatableResponse OK
     * @throws ApiError
     */
    public static postApiTypeGradesGetAllFiltredAsync(
        requestBody?: DtoFiltreMotsCleDatatableRequest,
    ): CancelablePromise<TypeGradeDatatableResponse> {
        return __request(OpenAPI, {
            method: 'POST',
            url: '/api/TypeGrades/GetAllFiltredAsync',
            body: requestBody,
            mediaType: 'application/json',
        });
    }
    /**
     * @param id
     * @returns TypeGradeApiResponse OK
     * @throws ApiError
     */
    public static getApiTypeGradesGetByIdAsync(
        id: string,
    ): CancelablePromise<TypeGradeApiResponse> {
        return __request(OpenAPI, {
            method: 'GET',
            url: '/api/TypeGrades/GetByIdAsync/{id}',
            path: {
                'id': id,
            },
        });
    }
    /**
     * @param requestBody
     * @returns TypeGradeApiResponse OK
     * @throws ApiError
     */
    public static postApiTypeGradesCreateAsync(
        requestBody?: TypeGrade,
    ): CancelablePromise<TypeGradeApiResponse> {
        return __request(OpenAPI, {
            method: 'POST',
            url: '/api/TypeGrades/CreateAsync',
            body: requestBody,
            mediaType: 'application/json',
        });
    }
    /**
     * @param requestBody
     * @returns TypeGradeApiResponse OK
     * @throws ApiError
     */
    public static putApiTypeGradesUpdateAsync(
        requestBody?: TypeGrade,
    ): CancelablePromise<TypeGradeApiResponse> {
        return __request(OpenAPI, {
            method: 'PUT',
            url: '/api/TypeGrades/UpdateAsync',
            body: requestBody,
            mediaType: 'application/json',
        });
    }
    /**
     * @param id
     * @returns BooleanApiResponse OK
     * @throws ApiError
     */
    public static deleteApiTypeGradesDeleteAsync(
        id: string,
    ): CancelablePromise<BooleanApiResponse> {
        return __request(OpenAPI, {
            method: 'DELETE',
            url: '/api/TypeGrades/DeleteAsync/{id}',
            path: {
                'id': id,
            },
        });
    }
    /**
     * @returns any OK
     * @throws ApiError
     */
    public static postApiTypeGradesExporterAsync(): CancelablePromise<any> {
        return __request(OpenAPI, {
            method: 'POST',
            url: '/api/TypeGrades/ExporterAsync',
        });
    }
}
