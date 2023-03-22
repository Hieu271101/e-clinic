// this class is Service object which is used to get service object of clinic
public class Service extends  BaseEntity{
    private  int id;
    private  String name;

    private  int category;
    private  BigDecimal price;

    public Service() {
    }
    public Service(int id, String name, int category, BigDecimal price) {
        this.id = id;
        this.name = name;
        this.category = category;
        this.price = price;
    }
    // getter and setter
    public int getId() {
        return id;
    }
    public void setId(int id) {
        this.id = id;
    }
    public String getName() {
        return name;
    }
    public void setName(String name) {
        this.name = name;
    }
    public int getCategory() {
        return category;
    }
    public void setCategory(int category) {
        this.category = category;
    }
    public BigDecimal getPrice() {
        return price;
    }
    public void setPrice(BigDecimal price) {
        this.price = price;
    }




}