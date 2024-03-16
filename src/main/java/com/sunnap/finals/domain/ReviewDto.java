package com.sunnap.finals.domain;

import java.util.Date;
import java.util.Objects;

public class ReviewDto {

    private Integer starRating;
    private String name;
    private String email;
    private int id;
    private int vehicleId;
    private String userEmail;
    private String fullName;
    private int rating;
    private Date regDate;
    private String description;

    public ReviewDto(Integer starRating, String name, String email, int id, int vehicleId, String userEmail, String fullName, int rating, Date regDate, String description) {
        this.starRating = starRating;
        this.name = name;
        this.email = email;
        this.id = id;
        this.vehicleId = vehicleId;
        this.userEmail = userEmail;
        this.fullName = fullName;
        this.rating = rating;
        this.regDate = regDate;
        this.description = description;
    }

    @Override
    public String toString() {
        return "ReviewDto{" +
                "starRating=" + starRating +
                ", name='" + name + '\'' +
                ", email='" + email + '\'' +
                ", id=" + id +
                ", vehicleId=" + vehicleId +
                ", userEmail='" + userEmail + '\'' +
                ", fullName='" + fullName + '\'' +
                ", rating=" + rating +
                ", regDate=" + regDate +
                ", description='" + description + '\'' +
                '}';
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        ReviewDto reviewDto = (ReviewDto) o;
        return id == reviewDto.id && vehicleId == reviewDto.vehicleId && rating == reviewDto.rating && Objects.equals(starRating, reviewDto.starRating) && Objects.equals(name, reviewDto.name) && Objects.equals(email, reviewDto.email) && Objects.equals(userEmail, reviewDto.userEmail) && Objects.equals(fullName, reviewDto.fullName) && Objects.equals(regDate, reviewDto.regDate) && Objects.equals(description, reviewDto.description);
    }

    @Override
    public int hashCode() {
        return Objects.hash(starRating, name, email, id, vehicleId, userEmail, fullName, rating, regDate, description);
    }

    public Integer getStarRating() {
        return starRating;
    }

    public void setStarRating(Integer starRating) {
        this.starRating = starRating;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public ReviewDto() {
    }

    public ReviewDto(int id, int vehicleId, String userEmail, String fullName, int rating, Date regDate, String description) {
        this.id = id;
        this.vehicleId = vehicleId;
        this.userEmail = userEmail;
        this.fullName = fullName;
        this.rating = rating;
        this.regDate = regDate;
        this.description = description;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getVehicleId() {
        return vehicleId;
    }

    public void setVehicleId(int vehicleId) {
        this.vehicleId = vehicleId;
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
}
