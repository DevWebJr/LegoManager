package com.digitalmaking.BackEnd.repository;

import com.digitalmaking.BackEnd.model.Category;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.Optional;

public interface CategoryRepository extends JpaRepository<Category, Long> {
    Optional<Category> findCategoryById(Long id);

    void deleteCategoryById(Long id);
}
