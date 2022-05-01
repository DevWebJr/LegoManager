package com.digitalmaking.BackEnd.repository;

import com.digitalmaking.BackEnd.model.SubCategory;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.Optional;

public interface SubCategoryRepository extends JpaRepository<SubCategory, Long> {
    Optional<SubCategory> findSubCategoryById(Long id);

    void deleteSubCategoryById(Long id);
}
