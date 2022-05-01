import { NgModule } from '@angular/core';
import { RouterModule, Routes } from '@angular/router';
import {BrickSetListComponent} from "./components/brick-set-list/brick-set-list.component";

const routes: Routes = [
  {path: "brickset/all", component: BrickSetListComponent}
];

@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule]
})
export class AppRoutingModule { }
