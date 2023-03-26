package edu.hanu.clinicManagementSystem.entities.user;
//this class is user object

import java.sql.Date;

import edu.hanu.clinicManagementSystem.entities.BaseEntity;


public class User extends BaseEntity {
	
	private String userName;
	private String password;
	private String name;
	private String address;
	private String gender;
	private Date dob;

	public User() {
		super();
	}

	public User(String userName, String password, String name, String address, String gender, Date dob) {
		this.userName = userName;
		this.password = password;
		this.name = name;
		this.address = address;
		this.gender = gender;
		this.dob = dob;
	}

	public Date getDob() {
		return dob;
	}

	public void setDob(Date dob) {
		this.dob = dob;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}
}
