package com.grandcircus.spring.util;

import javax.persistence.*;

/**
 * Created by trina2 on 5/17/17.
 */
@Entity
@Table(name = "Users", schema = "CoffeeShopDB", catalog = "")
public class UsersEntity {
    private int idUsers;
    private String name;
    private String email;
    private int age;
    private String password;
    private String confirmPassword;
    private int phoneNumber;
    private String favoriteCoffeeBlend;

    @Id
    @Column(name = "idUsers", nullable = false, length = 20)
    public int getIdUsers() {
        return idUsers;
    }

    public void setIdUsers(int idUsers) {
        this.idUsers = idUsers;
    }

    @Basic
    @Column(name = "Name", nullable = false, length = 45)
    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    @Basic
    @Column(name = "Email", nullable = false, length = 50)
    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    @Basic
    @Column(name = "Age", nullable = false)
    public int getAge() {
        return age;
    }

    public void setAge(int age) {
        this.age = age;
    }

    @Basic
    @Column(name = "Password", nullable = false, length = 45)
    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    @Basic
    @Column(name = "ConfirmPassword", nullable = false, length = 45)
    public String getConfirmPassword() {
        return confirmPassword;
    }

    public void setConfirmPassword(String confirmPassword) {
        this.confirmPassword = confirmPassword;
    }

    @Basic
    @Column(name = "PhoneNumber", nullable = false)
    public int getPhoneNumber() {
        return phoneNumber;
    }

    public void setPhoneNumber(int phoneNumber) {
        this.phoneNumber = phoneNumber;
    }

    @Basic
    @Column(name = "FavoriteCoffeeBlend", nullable = false, length = 45)
    public String getFavoriteCoffeeBlend() {
        return favoriteCoffeeBlend;
    }

    public void setFavoriteCoffeeBlend(String favoriteCoffeeBlend) {
        this.favoriteCoffeeBlend = favoriteCoffeeBlend;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        UsersEntity that = (UsersEntity) o;

        if (age != that.age) return false;
        if (phoneNumber != that.phoneNumber) return false;
        if (idUsers != that.idUsers ? !(idUsers == (that.idUsers)) : that.idUsers != this.idUsers) return false;
        if (name != null ? !name.equals(that.name) : that.name != null) return false;
        if (email != null ? !email.equals(that.email) : that.email != null) return false;
        if (password != null ? !password.equals(that.password) : that.password != null) return false;
        if (confirmPassword != null ? !confirmPassword.equals(that.confirmPassword) : that.confirmPassword != null)
            return false;
        if (favoriteCoffeeBlend != null ? !favoriteCoffeeBlend.equals(that.favoriteCoffeeBlend) : that.favoriteCoffeeBlend != null)
            return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = idUsers;
        result = 31 * result + (name != null ? name.hashCode() : 0);
        result = 31 * result + (email != null ? email.hashCode() : 0);
        result = 31 * result + age;
        result = 31 * result + (password != null ? password.hashCode() : 0);
        result = 31 * result + (confirmPassword != null ? confirmPassword.hashCode() : 0);
        result = 31 * result + phoneNumber;
        result = 31 * result + (favoriteCoffeeBlend != null ? favoriteCoffeeBlend.hashCode() : 0);
        return result;
    }
}
