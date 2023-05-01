package edu.hanu.clinicManagementSystem.entities.test;

import java.util.Map;

public class Cart {
    private Map<String, Integer> items;
    private double totalPrice;
    
	public Cart(Map<String, Integer> items, double totalPrice) {
		super();
		this.items = items;
		this.totalPrice = totalPrice;
	}
	
	public Cart() {
		super();
	}

	public Map<String, Integer> getItems() {
		return items;
	}
	public void setItems(Map<String, Integer> items) {
		this.items = items;
	}
	public double getTotalPrice() {
		return totalPrice;
	}
	public void setTotalPrice(double totalPrice) {
		this.totalPrice = totalPrice;
	}

    // constructor, getters, setters, and methods to add or remove items from the cart
    
}
