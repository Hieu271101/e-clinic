package edu.hanu.clinicManagementSystem.entities.admin;


import java.math.BigDecimal;
import java.sql.Date;

import javax.persistence.Entity;
import javax.persistence.Table;

import edu.hanu.clinicManagementSystem.entities.BaseEntity;

// this class is medicine object

@Entity
@Table(name = "medicine")
public  class Medicine extends  BaseEntity{
    
    private String name;
//    private  int category;
    private BigDecimal quantity;
    private  String description;
    private  BigDecimal price;
    private  BigDecimal cost;
    private  Date exp;
   
    private String supplier;
   
    
    
	public Medicine() {
		super();
	}
	public Medicine(String name, BigDecimal quantity, String description, BigDecimal price, BigDecimal cost, Date exp,
			String supplier) {
		super();
		this.name = name;
		this.quantity = quantity;
		this.description = description;
		this.price = price;
		this.cost = cost;
		this.exp = exp;
		this.supplier = supplier;
	}
	public String getSupplier() {
		return supplier;
	}
	public void setSupplier(String supplier) {
		this.supplier = supplier;
	}
	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	
	public BigDecimal getQuantity() {
		return quantity;
	}
	public void setQuantity(BigDecimal quantity) {
		this.quantity = quantity;
	}
	public BigDecimal getPrice() {
		return price;
	}
	public void setPrice(BigDecimal price) {
		this.price = price;
	}
	public Date getExp() {
		return exp;
	}
	public void setExp(Date exp) {
		this.exp = exp;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public BigDecimal getCost() {
		return cost;
	}
	public void setCost(BigDecimal cost) {
		this.cost = cost;
	}
	
    
    
    

}