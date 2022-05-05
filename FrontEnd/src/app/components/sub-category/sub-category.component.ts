import { Component, OnInit } from '@angular/core';
import {SubCategoryService} from "../../../services/sub-category.service";
import {SubCategory} from "../../../interfaces/sub-category";
import {HttpErrorResponse} from "@angular/common/http";

@Component({
  selector: 'app-sub-category',
  templateUrl: './sub-category.component.html',
  styleUrls: ['./sub-category.component.css']
})
export class SubCategoryComponent implements OnInit {

  public subCategories!: Array<SubCategory>;
  selectedSubCategory: SubCategory | undefined;

  constructor(private subCategoryService: SubCategoryService) { }

  ngOnInit(): void { this.getSubCategories() }

  public getSubCategories(): void {
    this.subCategoryService.getSubCategories().subscribe(
      (response:SubCategory[]) => {

        this.subCategories = response;
        console.log(this.subCategories)
      },
      (error: HttpErrorResponse) => {
        alert(error.message);
      }
    )
  }
}
