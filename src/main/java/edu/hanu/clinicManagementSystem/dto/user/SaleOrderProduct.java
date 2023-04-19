package edu.hanu.clinicManagementSystem.dto.user;

import javax.persistence.Column;  
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import edu.hanu.clinicManagementSystem.entities.BaseEntity;
import edu.hanu.clinicManagementSystem.entities.admin.Medicine;



@Entity
@Table(name = "tbl_saleorder_product")
public class SaleOrderProduct extends BaseEntity {
	@Column(name = "quality")
	private Integer quanlity;

	@ManyToOne(fetch = FetchType.EAGER)
	@JoinColumn(name = "product_id")
	private Medicine products;
	
	@ManyToOne(fetch =  FetchType.EAGER)
	@JoinColumn(name="saleorder_id")
	private SaleOrder saleOrders;
	
	
	
	
	public Medicine getProducts() {
		return products;
	}

	public void setProducts(Medicine products) {
		this.products = products;
	}

	public SaleOrder getSaleOrders() {
		return saleOrders;
	}

	public void setSaleOrders(SaleOrder saleOrders) {
		this.saleOrders = saleOrders;
	}

	public Integer getQuanlity() {
		return quanlity;
	}

	public void setQuanlity(Integer quality) {
		this.quanlity = quality;
	}
	
	
	
}
