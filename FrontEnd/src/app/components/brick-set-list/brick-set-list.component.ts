import { Component, OnInit } from '@angular/core';
import {BrickSet} from "../../../interfaces/brick-set";
import {BrickSetService} from "../../../services/brick-set.service";
import {HttpErrorResponse} from "@angular/common/http";

@Component({
  selector: 'app-brick-set-list',
  templateUrl: './brick-set-list.component.html',
  styleUrls: ['./brick-set-list.component.css']
})
export class BrickSetListComponent implements OnInit {

  public brickSets!: BrickSet[];

  constructor(private brickSetService: BrickSetService) {}

  ngOnInit() {
    this.getBrickSets();
  }

  public getBrickSets(): void {
    this.brickSetService.getBrickSets().subscribe(
      (response:BrickSet[]) => {
        this.brickSets = response;
        console.log(this.brickSets)
      },
      (error: HttpErrorResponse) => {
        alert(error.message);
      }
    )
  }
}
