package com.sunnap.finals.domain;

import java.util.Date;
import java.util.Objects;

public class SearchDto extends VehicleDto {

    private String name;
    private int seatCapacity;

    public SearchDto(String name, int seatCapacity) {
        this.name = name;
        this.seatCapacity = seatCapacity;
    }

    public SearchDto(int id, String name, String categoryName, int rating, Date regDate, double price, String name1, int seatCapacity, String description, String state) {
        super(id, name, categoryName, rating, regDate, price, description, state);
        this.name = name1;
        this.seatCapacity = seatCapacity;
    }

    public SearchDto() {
    }

    @Override
    public String toString() {
        return super.toString() + "SearchDto{" +
                "name='" + name + '\'' +
                ", seatCapacity=" + seatCapacity +
                '}';
    }


    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        SearchDto searchDto = (SearchDto) o;
        return seatCapacity == searchDto.seatCapacity && Objects.equals(name, searchDto.name);
    }

    @Override
    public int hashCode() {
        return Objects.hash(name, seatCapacity);
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getSeatCapacity() {
        return seatCapacity;
    }

    public void setSeatCapacity(int seatCapacity) {
        this.seatCapacity = seatCapacity;
    }
}
