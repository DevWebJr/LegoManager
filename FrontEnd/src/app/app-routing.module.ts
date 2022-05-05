import { NgModule } from '@angular/core';
import { RouterModule, Routes } from '@angular/router';
import {BrickSetComponent} from "./components/brick-set/brick-set.component";
import {HomeComponent} from "./layouts/home/home.component";
import {CategoryComponent} from "./components/category/category.component";
import {SubCategoryComponent} from "./components/sub-category/sub-category.component";

const routes: Routes = [
  {path: "home", component: HomeComponent},
  {path: "brickset/all", component: BrickSetComponent},
  {path: "category/all", component:CategoryComponent},
  {path: "subcategory/all", component:SubCategoryComponent},
];

@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule]
})
export class AppRoutingModule { }
