package com.digitalmaking.BackEnd.controller;

import com.digitalmaking.BackEnd.model.SubCategory;
import com.digitalmaking.BackEnd.service.SubCategoryService;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/subcategory")
public class SubCategoryController {
    private final SubCategoryService subCategoryService;

    public SubCategoryController(SubCategoryService subCategoryService) {
        this.subCategoryService = subCategoryService;
    }

    @GetMapping("/all")
    public ResponseEntity<List<SubCategory>> getAllCategories(){
        List<SubCategory> categorys = subCategoryService.findAllSubCategories();
        return new ResponseEntity<>(categorys, HttpStatus.OK);
    }

    @GetMapping("/find/{id}")
    public ResponseEntity<SubCategory> getCategoryById(@PathVariable("id") Long id){
        SubCategory category = subCategoryService.findSubCategoryById(id);
        return new ResponseEntity<>(category, HttpStatus.OK);
    }

    @PostMapping("/add")
    public ResponseEntity<SubCategory> addCategory(@RequestBody SubCategory category){
        SubCategory addedCategory = subCategoryService.addSubCategory(category);
        return new ResponseEntity<>(addedCategory, HttpStatus.CREATED);
    }

    @PutMapping("/update")
    public ResponseEntity<SubCategory> updateCategory(@RequestBody SubCategory category){
        SubCategory updatedCategory = subCategoryService.updateSubCategory(category);
        return new ResponseEntity<>(category, HttpStatus.OK);
    }

    @DeleteMapping("/delete/{id}")
    public ResponseEntity<SubCategory> deleteCategory(@PathVariable("id") Long id){
        subCategoryService.deleteSubCategory(id);
        return new ResponseEntity<>(HttpStatus.OK);
    }
}
