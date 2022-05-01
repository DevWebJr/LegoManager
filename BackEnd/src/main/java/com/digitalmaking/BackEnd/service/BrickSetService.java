package com.digitalmaking.BackEnd.service;

import com.digitalmaking.BackEnd.exception.BrickSetNotfoundException;
import com.digitalmaking.BackEnd.model.BrickSet;
import com.digitalmaking.BackEnd.repository.BrickSetRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;


@Service
@Transactional
public class BrickSetService {
    private final BrickSetRepository brickSetRepository;

    @Autowired
    public BrickSetService(BrickSetRepository brickSetRepository){
        this.brickSetRepository = brickSetRepository;
    }

    public BrickSet addBrickSet(BrickSet brickSet){
        return brickSetRepository.save(brickSet);
    }

    public List<BrickSet> findAllBrickSets(){
        return brickSetRepository.findAll();
    }

    public BrickSet findBrickSetById(Long id){
        return brickSetRepository.findBrickSetById(id)
                .orElseThrow(() -> new BrickSetNotfoundException("Brick Set by id " + id + " was not found."));
    }

    public BrickSet updateBrickSet(BrickSet brickSet){
        return brickSetRepository.save(brickSet);
    }
    public void deleteBrickSet(Long id){
        brickSetRepository.deleteBrickSetById(id);
    }
}
