import { Component, OnInit } from '@angular/core';
import {BrickSet} from "../../../interfaces/brick-set";
import {BrickSetService} from "../../../services/brick-set.service";
import {HttpErrorResponse} from "@angular/common/http";
import { NgForm } from '@angular/forms';

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

  public onOpenModal(mode: string, brickSet?: BrickSet): void {
    const container = document.getElementById('main-container');
    const button = document.getElementById('addButton');
    if(mode === "add") {
      button?.setAttribute('data-bs-toggle', '#addBrickSetModal');
    }
    if(mode === "edit") {
      button?.setAttribute('data-bs-toggle', '#updateBrickSetModal');
    }
    if(mode === "delete") {
      button?.setAttribute('data-bs-toggle', '#deleteBrickSetModal');
    }
    button?.click();
  }

  public onAddBrickSet(addForm: NgForm): void{
    this.brickSetService.addBrickSet(addForm.value)
      .subscribe({
        next: (response: BrickSet) => {
          console.log(response);
          this.getBrickSets();
        },
        error: (error: HttpErrorResponse) => {alert(error.message);}
        });
    addForm.reset();
    document.getElementById("addBrickSetForm")?.click();
  }

}
