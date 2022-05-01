package com.digitalmaking.BackEnd.model;

import javax.persistence.*;
import java.io.Serializable;

@Entity
@Table(name = "image")
public class Image implements Serializable {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(nullable = false, updatable = false)
    private Long id;
    @Column(length = 2000)
    private String urlAddress;
    @ManyToOne
    @JoinColumn(name = "brick_set_id", nullable = false)
    private BrickSet brickSet;

    public Image(){};

    public Image(Long id, String urlAddress, BrickSet brickSet) {
        this.id = id;
        this.urlAddress = urlAddress;
        this.brickSet = brickSet;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getUrlAddress() {
        return urlAddress;
    }

    public void setUrlAddress(String urlAddress) {
        this.urlAddress = urlAddress;
    }

    public BrickSet getBrickSet() {
        return brickSet;
    }

    public void setBrickSet(BrickSet brickSet) {
        this.brickSet = brickSet;
    }

    @Override
    public String toString() {
        return "Image{" +
                "id=" + id +
                ", urlAddress='" + urlAddress + '\'' +
                ", brickSet=" + brickSet +
                '}';
    }
}
