package edu.hanu.clinicManagementSystem.entities.admin;
import java.math.BigDecimal;

import edu.hanu.clinicManagementSystem.entities.BaseEntity;

// this class is Service object which is used to get service object of clinic
public class Service extends  BaseEntity{
    
    private  String name;

    private  int category;
    private  BigDecimal price;

    public Service() {
    }
   
    // getter and setter
  
    public String getName() {
        return name;
    }
    public void setName(String name) {
        this.name = name;
    }
    public int getCategory() {
        return category;
    }
    public void setCategory(int category) {
        this.category = category;
    }
    public BigDecimal getPrice() {
        return price;
    }
    public void setPrice(BigDecimal price) {
        this.price = price;
    }




}