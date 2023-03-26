package edu.hanu.clinicManagementSystem.entities.admin;

import javax.persistence.Entity;

import edu.hanu.clinicManagementSystem.entities.BaseEntity;

// this class is responsible for the category service


public class CategoryService extends BaseEntity{
   
    private String name;

    

    public CategoryService(String name) {
		super();
		this.name = name;
	}



	public CategoryService() {
    }

    

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }
}