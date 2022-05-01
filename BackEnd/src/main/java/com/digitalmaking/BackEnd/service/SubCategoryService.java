package com.digitalmaking.BackEnd.service;

import com.digitalmaking.BackEnd.model.SubCategory;
import com.digitalmaking.BackEnd.repository.SubCategoryRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
@Transactional
public class SubCategoryService {

    private final SubCategoryRepository subCategoryRepository;

    @Autowired
    public SubCategoryService(SubCategoryRepository subCategoryRepository) {
        this.subCategoryRepository = subCategoryRepository;
    }

    public SubCategory addSubCategory(SubCategory subCategory){
        return subCategoryRepository.save(subCategory);
    }

    public List<SubCategory> findAllSubCategories(){
        return subCategoryRepository.findAll();
    }

    public SubCategory updateSubCategory(SubCategory subCategory){
        return subCategoryRepository.save(subCategory);
    }

    public SubCategory findSubCategoryById(Long id){
        return subCategoryRepository.findSubCategoryById(id)
                .orElseThrow(() -> new RuntimeException("SubCategory by id " + id + " was not found."));
    }

    public void deleteSubCategory(Long id){
        subCategoryRepository.deleteSubCategoryById(id);
    }
}
