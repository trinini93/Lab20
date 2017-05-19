package com.grandcircus.spring.util;

import javax.persistence.*;

/**
 * Created by trina2 on 5/17/17.
 */
@Entity
@Table(name = "Items", schema = "CoffeeShopDB", catalog = "")
public class ItemsEntity {
    private String description;
    private String price;
    private int id;
    private String coffeeType;

    @Basic
    @Column(name = "Description", nullable = false, length = 45)
    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    @Basic
    @Column(name = "Price", nullable = false, length = 45)
    public String getPrice() {
        return price;
    }

    public void setPrice(String price) {
        this.price = price;
    }

    @Id
    @Column(name = "id", nullable = false)
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    @Basic
    @Column(name = "CoffeeType", nullable = false, length = 45)
    public String getCoffeeType() {
        return coffeeType;
    }

    public void setCoffeeType(String coffeeType) {
        this.coffeeType = coffeeType;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        ItemsEntity that = (ItemsEntity) o;

        if (id != that.id) return false;
        if (description != null ? !description.equals(that.description) : that.description != null) return false;
        if (price != null ? !price.equals(that.price) : that.price != null) return false;
        if (coffeeType != null ? !coffeeType.equals(that.coffeeType) : that.coffeeType != null) return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = description != null ? description.hashCode() : 0;
        result = 31 * result + (price != null ? price.hashCode() : 0);
        result = 31 * result + id;
        result = 31 * result + (coffeeType != null ? coffeeType.hashCode() : 0);
        return result;
    }
}
