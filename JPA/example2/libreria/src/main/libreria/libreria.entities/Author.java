package libreria.entities;

public class Author {

  private Integer id;
  private String name;
  private Boolean availability;

  public Author(){}

  public Author(Integer id, String name, Boolean availability) {
    this.id = id;
    this.name = name;
    this.availability = availability;
  }

  public Integer getId() {
    return id;
  }

  public void setId(Integer id) {
    this.id = id;
  }

  public String getName() {
    return name;
  }

  public void setName(String name) {
    this.name = name;
  }

  public Boolean getAvailability() {
    return availability;
  }

  public void setAvailability(Boolean availability) {
    this.availability = availability;
  }

  @Override
  public String toString() {
    return "Author{" +
            "id=" + id +
            ", name='" + name + '\'' +
            ", availability=" + availability +
            '}';
  }
}
