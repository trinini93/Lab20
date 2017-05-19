package com.grandcircus.spring.controller;


import com.grandcircus.spring.CoffeeShopUser;
import com.grandcircus.spring.util.ItemsEntity;
import com.grandcircus.spring.util.UsersEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import org.hibernate.*;
import org.hibernate.cfg.Configuration;

import java.util.ArrayList;

@Controller
public class HomeController {

    private final Dao customersDAO = new Dao();

    @RequestMapping("/")
    public ModelAndView welcome() {
        //query db for list of products available
        ArrayList<ItemsEntity> items = Dao.getListOfItems(); //created a method

        System.out.println(items);
        //return ItemsEntity object in modelObject
        return new ModelAndView("welcome", "result", items);
    }

    @RequestMapping(value = "/registration", method = RequestMethod.GET)
    public ModelAndView CoffeeShopUser() {
        return new ModelAndView("registration", "command", new CoffeeShopUser());
    }

    @RequestMapping(value = "/addUser", method = RequestMethod.POST)
    public String addUser(CoffeeShopUser registration, Model model) {
        model.addAttribute("name", registration.getName());
        model.addAttribute("email", registration.getEmail());
        model.addAttribute("age", registration.getAge());
        model.addAttribute("phoneNum", registration.getPhoneNum());
        model.addAttribute("password", registration.getPassword());
        model.addAttribute("ID", registration.getID());
        model.addAttribute("coffeeBlend", registration.getCoffeeBlend());
        model.addAttribute("location", registration.getStoreLocation());
        model.addAttribute("confirmPassword", registration.getConfirmPassword());

        return "summary";

    }

    @RequestMapping("/summary")
    public ModelAndView showItems() {
        Configuration cfg = new Configuration().configure("hibernate.cfg.xml");
        SessionFactory sessionFact = cfg.buildSessionFactory();
        Session selectCustomers = sessionFact.openSession();
        selectCustomers.beginTransaction();
        Criteria c = selectCustomers.createCriteria(ItemsEntity.class);


        ArrayList<ItemsEntity> itemsList = (ArrayList<ItemsEntity>) c.list();
        return new ModelAndView("welcome2", "items", itemsList);

    }

    @RequestMapping("/addUserToDB")
    public ModelAndView addUser(@RequestParam("name") String name,
                                @RequestParam("email") String email,
                                @RequestParam("age") int age,
                                @RequestParam("password") String password,
                                @RequestParam("confirmPassword") String confirmPassword,
                                @RequestParam("phoneNumber") int phoneNumber,
                                @RequestParam("favoriteStoreLocation") String favoriteStoreLocation) {

        UsersEntity newUser = customersDAO.addUser(name, email, age, password, confirmPassword, phoneNumber, favoriteStoreLocation);

        return new ModelAndView("addUserToDB", "newUser", newUser);
    }

}



