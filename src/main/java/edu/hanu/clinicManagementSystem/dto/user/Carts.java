package edu.hanu.clinicManagementSystem.dto.user;

import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.List;

public class Carts {
	private BigDecimal totalPrice = BigDecimal.ZERO;
	private List<CartItems> cartItems = new ArrayList<CartItems>();
	private int coefficient;
	private BigDecimal surcharge  = BigDecimal.ZERO;;
	private String[] service = new String[4];
	
	
	
	public String[] getService() {
		return service;
	}

	public void setService(String[] service) {
		this.service = service;
	}

	public BigDecimal getSurcharge() {
		return surcharge;
	}

	public void setSurcharge(BigDecimal surcharge) {
		this.surcharge = surcharge;
	}

	public int getCoefficient() {
		return coefficient;
	}

	public void setCoefficient(int coefficient) {
		this.coefficient = coefficient;
	}

	public List<CartItems> getCartItems() {
		return cartItems;
	}

	public void setCartItems(List<CartItems> cartItems) {
		this.cartItems = cartItems;
	}

	public BigDecimal getTotalPrice() {
		return totalPrice;
	}

	public void setTotalPrice(BigDecimal totalPrice) {
		this.totalPrice = totalPrice;
	}

}
