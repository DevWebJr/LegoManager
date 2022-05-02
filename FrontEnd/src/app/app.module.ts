import { NgModule } from '@angular/core';
import { BrowserModule } from '@angular/platform-browser';

import { AppRoutingModule } from './app-routing.module';
import { AppComponent } from './app.component';
import { HeaderComponent } from './layouts/header/header.component';
import { BrickSetListComponent } from './components/brick-set-list/brick-set-list.component';
import {BrickSetService} from "../services/brick-set.service";
import {CategoryService} from "../services/category.service";
import {ImageService} from "../services/image.service";
import {SubCategoryService} from "../services/sub-category.service";
import {HttpClientModule} from "@angular/common/http";
import { HomeComponent } from './layouts/home/home.component';

@NgModule({
  declarations: [
    AppComponent,
    HeaderComponent,
    BrickSetListComponent,
    HomeComponent
  ],
  imports: [
    BrowserModule,
    AppRoutingModule,
    HttpClientModule
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
