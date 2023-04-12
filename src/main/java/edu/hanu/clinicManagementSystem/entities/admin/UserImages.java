package edu.hanu.clinicManagementSystem.entities.admin;



import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import edu.hanu.clinicManagementSystem.entities.BaseEntity;
import edu.hanu.clinicManagementSystem.entities.user.User;


@Entity
@Table(name = "tbl_products_images")
public class UserImages extends BaseEntity {
	
	@Column(name = "title")
	private String title;
	
	@Column(name="path")
	private String path;
	
	@ManyToOne(fetch  = FetchType.EAGER)
	@JoinColumn(name = "product_id")
	private User user;
	
	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getPath() {
		return path;
	}

	public void setPath(String path) {
		this.path = path;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	
	
	
}
