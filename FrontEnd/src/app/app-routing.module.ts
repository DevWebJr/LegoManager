import { NgModule } from '@angular/core';
import { RouterModule, Routes } from '@angular/router';
import {BrickSetListComponent} from "./components/brick-set-list/brick-set-list.component";
import {HomeComponent} from "./layouts/home/home.component";

const routes: Routes = [
  {path: "brickset/all", component: BrickSetListComponent},
  {path: "home", component: HomeComponent}
];

@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule]
})
export class AppRoutingModule { }
