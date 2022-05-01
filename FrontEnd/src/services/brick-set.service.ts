import { Injectable } from '@angular/core';
import {HttpClient} from "@angular/common/http";
import {environment} from "../environments/environment";
import {Observable} from "rxjs";
import {BrickSet} from "../interfaces/brick-set";

@Injectable({
  providedIn: 'root'
})
export class BrickSetService {
  private apiServerUrl = environment.apiUrl;

  constructor(private http: HttpClient) {}

  public getBrickSets(): Observable<BrickSet[]> {
    return this.http.get<BrickSet[]>(`${this.apiServerUrl}/brickset/all`)
  }

  public addBrickSet(brickset: BrickSet): Observable<BrickSet> {
    return this.http.post<BrickSet>(`${this.apiServerUrl}/brickset/add`, brickset);
  }

  public updateBrickSet(brickset: BrickSet): Observable<BrickSet> {
    return this.http.put<BrickSet>(`${this.apiServerUrl}/brickset/update`, brickset);
  }

  public deleteBrickSet(id: number): Observable<void> {
    return this.http.delete<void>(`${this.apiServerUrl}/brickset/${id}`);
  }
}
