package com.digitalmaking.BackEnd.exception;

public class CategoryNotfoundException extends RuntimeException{
    public CategoryNotfoundException(String message){
        super(message);
    }
}