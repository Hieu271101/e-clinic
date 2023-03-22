package edu.hanu.clinicManagementSystem.entities;

import java.sql.Date;

public class BaseEntity {
	private int id;
	private boolean status;
	private Date created_dateDate;
	private Date updated_dateDate;

	 
	 
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public boolean isStatus() {
		return status;
	}
	public void setStatus(boolean status) {
		this.status = status;
	}
	public Date getCreated_dateDate() {
		return created_dateDate;
	}
	public void setCreated_dateDate(Date created_dateDate) {
		this.created_dateDate = created_dateDate;
	}
	public Date getUpdated_dateDate() {
		return updated_dateDate;
	}
	public void setUpdated_dateDate(Date updated_dateDate) {
		this.updated_dateDate = updated_dateDate;
	}
	 
	 
	
}
