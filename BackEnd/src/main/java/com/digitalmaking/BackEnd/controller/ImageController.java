package com.digitalmaking.BackEnd.controller;

import com.digitalmaking.BackEnd.model.Image;
import com.digitalmaking.BackEnd.service.ImageService;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/image")
public class ImageController {
    private final ImageService imageService;


    public ImageController(ImageService imageService) {
        this.imageService = imageService;
    }

    @GetMapping("/all")
    public ResponseEntity<List<Image>> getAllImages(){
        List<Image> images = imageService.findAllImages();
        return new ResponseEntity<>(images, HttpStatus.OK);
    }

    @GetMapping("/find/{id}")
    public ResponseEntity<Image> getImageById(@PathVariable("id") Long id){
        Image image = imageService.findImageById(id);
        return new ResponseEntity<>(image, HttpStatus.OK);
    }

    @PostMapping("/add")
    public ResponseEntity<Image> addImage(@RequestBody Image image){
        Image addedImage = imageService.addImage(image);
        return new ResponseEntity<>(addedImage, HttpStatus.CREATED);
    }

    @PutMapping("/update")
    public ResponseEntity<Image> updateImage(@RequestBody Image image){
        Image updatedImage = imageService.updateImage(image);
        return new ResponseEntity<>(image, HttpStatus.OK);
    }

    @DeleteMapping("/delete/{id}")
    public ResponseEntity<Image> deleteImage(@PathVariable("id") Long id){
        imageService.deleteImage(id);
        return new ResponseEntity<>(HttpStatus.OK);
    }
}
