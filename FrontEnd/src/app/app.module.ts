import { NgModule } from '@angular/core';
import { BrowserModule } from '@angular/platform-browser';

import { AppRoutingModule } from './app-routing.module';
import { AppComponent } from './app.component';
import { HeaderComponent } from './layouts/header/header.component';
import { BrickSetComponent } from './components/brick-set/brick-set.component';
import {BrickSetService} from "../services/brick-set.service";
import {CategoryService} from "../services/category.service";
import {ImageService} from "../services/image.service";
import {SubCategoryService} from "../services/sub-category.service";
import {HttpClientModule} from "@angular/common/http";
import { HomeComponent } from './layouts/home/home.component';
import { FormsModule } from '@angular/forms';
import { CategoryComponent } from './components/category/category.component';
import { SubCategoryComponent } from './components/sub-category/sub-category.component';

@NgModule({
  declarations: [
    AppComponent,
    HeaderComponent,
    BrickSetComponent,
    HomeComponent,
    CategoryComponent,
    SubCategoryComponent
  ],
  imports: [
    BrowserModule,
    AppRoutingModule,
    HttpClientModule,
    FormsModule
  ],
  providers: [
    BrickSetService,
    CategoryService,
    SubCategoryService,
    ImageService
  ],
  bootstrap: [AppComponent]
})
export class AppModule { }
