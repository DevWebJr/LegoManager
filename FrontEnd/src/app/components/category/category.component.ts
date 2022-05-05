import { Component, OnInit } from '@angular/core';
import {Category} from "../../../interfaces/category";
import {CategoryService} from "../../../services/category.service";
import {HttpErrorResponse} from "@angular/common/http";

@Component({
  selector: 'app-category',
  templateUrl: './category.component.html',
  styleUrls: ['./category.component.css']
})
export class CategoryComponent implements OnInit {

  categories!: Array<Category>;
  selectedCategory: Category | undefined;

  constructor(private categoryService: CategoryService) { }

  ngOnInit(): void { this.getCategories() }

  public getCategories(): void {
    this.categoryService.getCategories().subscribe(
      (response:Category[]) => {
        this.categories = response;
        // console.log(this.categories)
      },
      (error: HttpErrorResponse) => {
        alert(error.message);
      }
    )
  }

}
