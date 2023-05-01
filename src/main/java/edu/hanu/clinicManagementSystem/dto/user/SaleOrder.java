package edu.hanu.clinicManagementSystem.dto.user;

import java.math.BigDecimal;  
import java.util.HashSet;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import edu.hanu.clinicManagementSystem.entities.BaseEntity;



@Entity
@Table(name = "tbl_saleorder")
public class SaleOrder extends BaseEntity {

	
	//	SaleOrderProduct
	@OneToMany(cascade = CascadeType.ALL, mappedBy = "saleOrders", fetch = FetchType.EAGER)
	private Set<SaleOrderProduct> saleOrderProducts = new HashSet<SaleOrderProduct>();
	
	public void addSaleOrderProducts(SaleOrderProduct _saleOrderProducts) {
		_saleOrderProducts.setSaleOrders(this);
		saleOrderProducts.add(_saleOrderProducts);
	}
	
	public void removeSaleOrderProducts(SaleOrderProduct _saleOrderProducts) {
		_saleOrderProducts.setSaleOrders(null);
		saleOrderProducts.remove(_saleOrderProducts);
	}
	
	
	
	@Column(name = "code")
	private String code;
	
	
	@Column(name="user_id")
	private int userId;
	
	
	@Column(name="total")
	private BigDecimal total;
	
	@Column(name="customer_name")
	private String customerName;
	
	@Column(name="customer_address")
	private String customerAddress;
	
	@Column(name="customer_phone")
	private String customerPhone;
	
	@Column(name="customer_email")
	private String customerEmail;
	
	@Column(name="customer_dob")
	private String customerDob;
	
	@Column(name = "customer_gender")
	private String customerGender;
	
	@Column(name="description")
	private String description;
	
	@Column(name="total_item_price")
	private BigDecimal totalItemPrice;
	
	@Column(name="service")
	private String service;
	
	@Column(name="coefficient")
	private int coefficient;
	
	@Column(name="surcharge")
	private BigDecimal surcharge;
	
	
	
	
	public BigDecimal getTotalItemPrice() {
		return totalItemPrice;
	}

	public void setTotalItemPrice(BigDecimal totalItemPrice) {
		this.totalItemPrice = totalItemPrice;
	}

	public int getUserId() {
		return userId;
	}

	public void setUserId(int userId) {
		this.userId = userId;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public Set<SaleOrderProduct> getSaleOrderProducts() {
		return saleOrderProducts;
	}
	public void setSaleOrderProducts(Set<SaleOrderProduct> saleOrderProducts) {
		this.saleOrderProducts = saleOrderProducts;
	}
	
	public String getCode() {
		return code;
	}
	public void setCode(String code) {
		this.code = code;
	}
//	public int getUserId() {
//		return userId;
//	}
//	public void setUserId(int userId) {
//		this.userId = userId;
//	}
	public BigDecimal getTotal() {
		return total;
	}
	public void setTotal(BigDecimal total) {
		this.total = total;
	}
	public String getCustomerName() {
		return customerName;
	}
	public void setCustomerName(String customerName) {
		this.customerName = customerName;
	}
	public String getCustomerAddress() {
		return customerAddress;
	}
	public void setCustomerAddress(String customerAddress) {
		this.customerAddress = customerAddress;
	}
	public String getCustomerPhone() {
		return customerPhone;
	}
	public void setCustomerPhone(String customerPhone) {
		this.customerPhone = customerPhone;
	}
	public String getCustomerEmail() {
		return customerEmail;
	}
	public void setCustomerEmail(String customerEmail) {
		this.customerEmail = customerEmail;
	}

	public String getCustomerDob() {
		return customerDob;
	}

	public void setCustomerDob(String customerDob) {
		this.customerDob = customerDob;
	}

	public String getCustomerGender() {
		return customerGender;
	}

	public void setCustomerGender(String customerGender) {
		this.customerGender = customerGender;
	}

	public String getService() {
		return service;
	}

	public void setService(String service) {
		this.service = service;
	}

	public int getCoefficient() {
		return coefficient;
	}

	public void setCoefficient(int coefficient) {
		this.coefficient = coefficient;
	}

	public BigDecimal getSurcharge() {
		return surcharge;
	}

	public void setSurcharge(BigDecimal surcharge) {
		this.surcharge = surcharge;
	}
	
	
	
	
}
