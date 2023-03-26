package edu.hanu.clinicManagementSystem.entities.user;
import java.math.BigDecimal;

import edu.hanu.clinicManagementSystem.entities.BaseEntity;

// this is Order class of User
public class UserOrder extends  BaseEntity{
   
    private int idUser;
    private int idMedicine;
    private int idService;
    private BigDecimal quantity;
    private BigDecimal price;
    private String description;


    public int getIdUser() {
        return idUser;
    }

    public void setIdUser(int idUser) {
        this.idUser = idUser;
    }

    public int getIdMedicine() {
        return idMedicine;
    }

    public void setIdMedicine(int idMedicine) {
        this.idMedicine = idMedicine;
    }

    public int getIdService() {
        return idService;
    }

    public void setIdService(int idService) {
        this.idService = idService;
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

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }
}