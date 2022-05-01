import {SubCategory} from "./sub-category";
import {Image} from "./image";

export interface BrickSet {
  id: number | null;
  name: string;
  description: string;
  serialNumber: string;
  subCategory: SubCategory;
  images: Image;
  price: number;
}
