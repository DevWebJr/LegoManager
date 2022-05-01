package com.digitalmaking.BackEnd.service;

import com.digitalmaking.BackEnd.exception.CategoryNotfoundException;
import com.digitalmaking.BackEnd.model.Category;
import com.digitalmaking.BackEnd.repository.CategoryRepository;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
@Transactional
public class CategoryService {

    private final CategoryRepository categoryRepository;

    @Autowired
    public CategoryService(CategoryRepository categoryRepository) {
        this.categoryRepository = categoryRepository;
    }

    public Category addCategory(Category category){
        return categoryRepository.save(category);
    }

    public List<Category> findAllCategories(){
        return categoryRepository.findAll();
    }

    public Category updateCategory(Category category){
        return categoryRepository.save(category);
    }

    public Category findCategoryById(Long id){
        return categoryRepository.findCategoryById(id)
                .orElseThrow(() -> new RuntimeException("Category by id " + id + " was not found."));
    }

    public void deleteCategory(Long id){
        categoryRepository.deleteCategoryById(id);
    }
}
