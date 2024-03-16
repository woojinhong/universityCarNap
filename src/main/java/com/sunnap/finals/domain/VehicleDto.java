package com.sunnap.finals.domain;

import java.util.Date;
import java.util.Objects;

public class VehicleDto {
    private int id;
    private String name;
    private String categoryName;
    private int rating;
    private Date regDate;
    private double price;

    private String description;
    private String state;

    public VehicleDto() {
    }

    public VehicleDto(int id, String name, String categoryName, int rating, Date regDate, double price, String description, String state) {
        this.id = id;
        this.name = name;
        this.categoryName = categoryName;
        this.rating = rating;
        this.regDate = regDate;
        this.price = price;
        this.description = description;
        this.state = state;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        VehicleDto that = (VehicleDto) o;
        return id == that.id && rating == that.rating && Double.compare(that.price, price) == 0 && Objects.equals(name, that.name) && Objects.equals(categoryName, that.categoryName) && Objects.equals(regDate, that.regDate);
    }

    @Override
    public int hashCode() {
        return Objects.hash(id, name, categoryName, rating, regDate, price);
    }

    @Override
    public String toString() {
        return "VehicleDto{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", categoryName='" + categoryName + '\'' +
                ", rating=" + rating +
                ", regDate=" + regDate +
                ", price=" + price +
                ", description='" + description + '\'' +
                ", state='" + state + '\'' +
                '}';
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getState() {
        return state;
    }

    public void setState(String state) {
        this.state = state;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getCategoryName() {
        return categoryName;
    }

    public void setCategoryName(String categoryName) {
        this.categoryName = categoryName;
    }

    public int getRating() {
        return rating;
    }

    public void setRating(int rating) {
        this.rating = rating;
    }

    public Date getRegDate() {
        return regDate;
    }

    public void setRegDate(Date regDate) {
        this.regDate = regDate;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }
}
