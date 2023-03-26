package edu.hanu.clinicManagementSystem.entities.admin;
import edu.hanu.clinicManagementSystem.entities.BaseEntity;

//this class contains the information of medicine category
public class MedicineCategory extends BaseEntity {
    
    private String name;

    

    public MedicineCategory() {
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }
}