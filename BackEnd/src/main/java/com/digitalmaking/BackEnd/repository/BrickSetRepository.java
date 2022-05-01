package com.digitalmaking.BackEnd.repository;

import com.digitalmaking.BackEnd.model.BrickSet;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.Optional;

public interface BrickSetRepository extends JpaRepository<BrickSet, Long> {
    Optional<BrickSet> findBrickSetById(Long id);
    void deleteBrickSetById(Long id);
}
