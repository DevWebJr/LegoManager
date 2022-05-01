package com.digitalmaking.BackEnd.model;


import javax.persistence.*;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

@Entity
@Table(name = "[brickSet]")
public class BrickSet implements Serializable {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(nullable = false, updatable = false)
    private Long id;
    private String name;
    @Column(length = 2000)
    private String description;
    private String serialNumber;
    @ManyToOne
    @JoinColumn(name = "[sub_category_id]")
    private SubCategory subCategory;
    @OneToMany(targetEntity = Image.class, cascade = CascadeType.REMOVE)
    private List<Image> images = new ArrayList<>();
    private String videoUrl;
    private int price;

    public BrickSet() {}

    public BrickSet(Long id, String name, String description, String serialNumber, SubCategory subCategory, List<Image> images, String videoUrl, int price) {
        this.id = id;
        this.name = name;
        this.description = description;
        this.serialNumber = serialNumber;
        this.subCategory = subCategory;
        this.images = images;
        this.videoUrl = videoUrl;
        this.price = price;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getSerialNumber() {
        return serialNumber;
    }

    public void setSerialNumber(String serialNumber) {
        this.serialNumber = serialNumber;
    }

    public SubCategory getSubCategory() {
        return subCategory;
    }

    public void setSubCategory(SubCategory subCategory) {
        this.subCategory = subCategory;
    }

    public List<Image> getImages() {
        return images;
    }

    public void setImages(List<Image> images) {
        this.images = images;
    }

    public String getVideoUrl() {
        return videoUrl;
    }

    public void setVideoUrl(String videoUrl) {
        this.videoUrl = videoUrl;
    }

    public int getPrice() {
        return price;
    }

    public void setPrice(int price) {
        this.price = price;
    }

    @Override
    public String toString() {
        return "BrickSet{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", description='" + description + '\'' +
                ", serialNumber='" + serialNumber + '\'' +
                ", subCategory=" + subCategory +
                ", images=" + images +
                ", videoUrl='" + videoUrl + '\'' +
                ", price=" + price +
                '}';
    }
}
