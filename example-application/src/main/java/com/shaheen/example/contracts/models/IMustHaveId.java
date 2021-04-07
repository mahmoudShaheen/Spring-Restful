package com.shaheen.example.contracts.models;

public interface IMustHaveId<T> {
    T getID();

    void setID(T ID);
}
