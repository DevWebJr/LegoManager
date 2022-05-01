package com.digitalmaking.BackEnd.service;

import com.digitalmaking.BackEnd.exception.ImageNotfoundException;
import com.digitalmaking.BackEnd.model.Image;
import com.digitalmaking.BackEnd.repository.ImageRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
@Transactional
public class ImageService {
    private final ImageRepository imageRepository;

    @Autowired
    public ImageService(ImageRepository imageRepository) {
        this.imageRepository = imageRepository;
    }

    public Image addImage(Image image) {
        return imageRepository.save(image);
    }

    public List<Image> findAllImages() {
        return imageRepository.findAll();
    }

    public Image findImageById(Long id) {
        return imageRepository.findImageById(id)
                .orElseThrow(() -> new ImageNotfoundException("Image by id " + id + " was not found."));
    }

    public Image updateImage(Image image) {
        return imageRepository.save(image);
    }

    public void deleteImage(Long id) {
        imageRepository.deleteImageById(id);
    }
}
