package com.spring.web.model;

public class Pet {
    private int id;
    private String name;
    private String type;
    private int age;
    private String imageUrl;

    public Pet(int id, String name, String type, int age, String imageUrl) {
        this.id = id;
        this.name = name;
        this.type = type;
        this.age = age;
        this.imageUrl = imageUrl;
    }

    public int getId() {
        return id;
    }

    public String getName() {
        return name;
    }

    public String getType() {
        return type;
    }

    public int getAge() {
        return age;
    }

    public String getImageUrl() {
        return imageUrl;
    }
}
