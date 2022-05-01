package com.digitalmaking.BackEnd.controller;

import com.digitalmaking.BackEnd.model.BrickSet;
import com.digitalmaking.BackEnd.service.BrickSetService;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/brickset")
public class BrickSetController {
    private final BrickSetService brickSetService;


    public BrickSetController(BrickSetService brickSetService) {
        this.brickSetService = brickSetService;
    }

    @GetMapping("/all")
    public ResponseEntity<List<BrickSet>> getAllBrickSets(){
        List<BrickSet> brickSets = brickSetService.findAllBrickSets();
        return new ResponseEntity<>(brickSets, HttpStatus.OK);
    }

    @GetMapping("/find/{id}")
    public ResponseEntity<BrickSet> getBrickSetById(@PathVariable("id") Long id){
        BrickSet brickSet = brickSetService.findBrickSetById(id);
        return new ResponseEntity<>(brickSet, HttpStatus.OK);
    }

    @PostMapping("/add")
    public ResponseEntity<BrickSet> addBrickSet(@RequestBody BrickSet brickSet){
        BrickSet addedBrickSet = brickSetService.addBrickSet(brickSet);
        return new ResponseEntity<>(addedBrickSet, HttpStatus.CREATED);
    }

    @PutMapping("/update")
    public ResponseEntity<BrickSet> updateBrickSet(@RequestBody BrickSet brickSet){
        BrickSet updatedBrickSet = brickSetService.updateBrickSet(brickSet);
        return new ResponseEntity<>(brickSet, HttpStatus.OK);
    }

    @DeleteMapping("/delete/{id}")
    public ResponseEntity<BrickSet> deleteBrickSet(@PathVariable("id") Long id){
        brickSetService.deleteBrickSet(id);
        return new ResponseEntity<>(HttpStatus.OK);
    }
}
