package com.digitalmaking.BackEnd.repository;

import com.digitalmaking.BackEnd.model.Image;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.Optional;

public interface ImageRepository extends JpaRepository<Image, Long> {
    Optional<Image> findImageById(Long id);
    void deleteImageById(Long id);
}
