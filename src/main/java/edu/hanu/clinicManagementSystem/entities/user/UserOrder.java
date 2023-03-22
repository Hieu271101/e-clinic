// this is Order class of User
public class UserOrder extends  BaseEntity{
    private int id;
    private int idUser;
    private int idMedicine;
    private int idService;
    private BigDecimal quantity;
    private BigDecimal price;
    private String description;

    public UserOrder(int id, int idUser, int idMedicine, int idService, BigDecimal quantity, BigDecimal price, String description) {
        this.id = id;
        this.idUser = idUser;
        this.idMedicine = idMedicine;
        this.idService = idService;
        this.quantity = quantity;
        this.price = price;
        this.description = description;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

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