package com.grandcircus.spring;

/**
 * Created by trina2 on 5/8/17.
 */
public class CoffeeShopUser {
    //step 1: create variables
    private String name;
    private String email;
    private String phoneNum;
    private int age;

    //step 2. create getters and setters
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

    public String getPhoneNum() {
        return phoneNum;
    }

    public void setPhoneNum(String phoneNum) {
        this.phoneNum = phoneNum;
    }

    public int getAge() {
        return age;
    }

    public void setAge(int age) {
        this.age = age;
    }
}
