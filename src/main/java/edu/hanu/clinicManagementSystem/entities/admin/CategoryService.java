// this class is responsible for the category service
public class CategoryService extends BaseEntity{
    private int id;
    private String name;

    public CategoryService(int id, String name) {
        this.id = id;
        this.name = name;
    }

    public CategoryService() {
    }

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
}