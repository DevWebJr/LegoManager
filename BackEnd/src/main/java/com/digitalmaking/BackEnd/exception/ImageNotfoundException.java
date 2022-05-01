package com.digitalmaking.BackEnd.exception;

public class ImageNotfoundException extends RuntimeException{
    public ImageNotfoundException(String message) {
        super(message);
    }
}