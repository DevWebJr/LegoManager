import { Injectable } from '@angular/core';
import {HttpClient} from "@angular/common/http";
import {environment} from "../environments/environment";
import {Observable} from "rxjs";
import {Image} from "../interfaces/image";

@Injectable({
  providedIn: 'root'
})
export class ImageService {
  private apiServerUrl = environment.apiUrl;

  constructor(private http: HttpClient) {}

  public getImages(): Observable<Image[]> {
    return this.http.get<Image[]>(`${this.apiServerUrl}/image/all`)
  }

  public addImage(image: Image): Observable<Image> {
    return this.http.post<Image>(`${this.apiServerUrl}/image/add`, image);
  }

  public updateImage(image: Image): Observable<Image> {
    return this.http.put<Image>(`${this.apiServerUrl}/image/update`, image);
  }

  public deleteImage(id: number): Observable<void> {
    return this.http.delete<void>(`${this.apiServerUrl}/image/${id}`);
  }
}
