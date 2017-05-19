package com.grandcircus.spring.controller;

import com.grandcircus.spring.util.ItemsEntity;
import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

import java.util.ArrayList;

/**
 * Created by trina2 on 5/17/17.
 */
public class Dao {
    public static ArrayList<ItemsEntity> getListOfItems() {

        //THIS IS THE BOILER PLATE THING FOR GETTING A LIST SELECT*FROM ETC

        //this defines the configuration and mapping resources
        Configuration cfg = new Configuration().configure("hibernate.cfg.xml");

        //do this after
        SessionFactory sessionFact = cfg.buildSessionFactory();

        //create an actual session import org.hibernate.session
        Session selectCustomers = sessionFact.openSession();

        selectCustomers.beginTransaction();

        //CustomerEntity is the class hibernate created for us based on our DB
        Criteria c = selectCustomers.createCriteria(ItemsEntity.class);

        //createArrayList. casting a list (c.list) to the CustomersEntity
        return (ArrayList<ItemsEntity>) c.list();
    }
}
