import { Injectable } from '@angular/core';
import {HttpClient} from "@angular/common/http";
import {environment} from "../environments/environment";
import {Observable} from "rxjs";
import {SubCategory} from "../interfaces/sub-category";

@Injectable({
  providedIn: 'root'
})
export class SubCategoryService {
  private apiServerUrl = environment.apiUrl;

  constructor(private http: HttpClient) {}

  public getSubCategories(): Observable<SubCategory[]> {
    return this.http.get<SubCategory[]>(`${this.apiServerUrl}/sub-category/all`)
  }

  public addSubCategory(subCategory: SubCategory): Observable<SubCategory> {
    return this.http.post<SubCategory>(`${this.apiServerUrl}/sub-category/add`, subCategory);
  }

  public updateSubCategory(subCategory: SubCategory): Observable<SubCategory> {
    return this.http.put<SubCategory>(`${this.apiServerUrl}/sub-category/update`, subCategory);
  }

  public deleteSubCategory(id: number): Observable<void> {
    return this.http.delete<void>(`${this.apiServerUrl}/sub-category/${id}`);
  }
}
