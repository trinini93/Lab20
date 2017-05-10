package com.grandcircus.spring.controller;


import com.grandcircus.spring.CoffeeShopUser;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

/**
 * Created by trina2 on 5/8/17.
 */


@Controller //first: do this annotation, when red, import class.
public class HomeController {

    @RequestMapping("/")
    public ModelAndView welcome() {
        return new ModelAndView("welcome", "hello", "");
    }

    //second: do this annotation, and import class again.
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
        model.addAttribute("storeLocation", registration.getStoreLocation());
        model.addAttribute("confirmPassword", registration.getConfirmPassword());

        return "summary";

    }

}



