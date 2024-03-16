package com.sunnap.finals.domain;

import java.util.Date;
import java.util.Objects;

public class ReserveDto {

    private String userEmail;
    private String fullName;
    private int rating;
    private Date regDate;
    private String description;
    private String name;
    private String categoryName;
    private double price;

    private String state;

    public ReserveDto() {
    }

    public ReserveDto(String userEmail, String fullName, int rating, Date regDate, String description, String name, String categoryName, double price, String state) {
        this.userEmail = userEmail;
        this.fullName = fullName;
        this.rating = rating;
        this.regDate = regDate;
        this.description = description;
        this.name = name;
        this.categoryName = categoryName;
        this.price = price;
        this.state = state;
    }

    @Override
    public String toString() {
        return "ReserveDto{" +
                "userEmail='" + userEmail + '\'' +
                ", fullName='" + fullName + '\'' +
                ", rating=" + rating +
                ", regDate=" + regDate +
                ", description='" + description + '\'' +
                ", name='" + name + '\'' +
                ", categoryName='" + categoryName + '\'' +
                ", price=" + price +
                ", state='" + state + '\'' +
                '}';
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        ReserveDto that = (ReserveDto) o;
        return rating == that.rating && Double.compare(that.price, price) == 0 && Objects.equals(userEmail, that.userEmail) && Objects.equals(fullName, that.fullName) && Objects.equals(regDate, that.regDate) && Objects.equals(description, that.description) && Objects.equals(name, that.name) && Objects.equals(categoryName, that.categoryName) && Objects.equals(state, that.state);
    }

    @Override
    public int hashCode() {
        return Objects.hash(userEmail, fullName, rating, regDate, description, name, categoryName, price, state);
    }

    public String getUserEmail() {
        return userEmail;
    }

    public void setUserEmail(String userEmail) {
        this.userEmail = userEmail;
    }

    public String getFullName() {
        return fullName;
    }

    public void setFullName(String fullName) {
        this.fullName = fullName;
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

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
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

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public String getState() {
        return state;
    }

    public void setState(String state) {
        this.state = state;
    }
}
