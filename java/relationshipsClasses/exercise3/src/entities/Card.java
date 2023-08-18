package entities;

public class Card {
    private int number;
    private String type;

    public Card(int number, String type) {
        this.number = number;
        this.type = type;
    }

    public int getNumber() {
        return number;
    }

    public void setNumber(int number) {
        this.number = number;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    @Override
    public String toString() {
        return "Cart{" +
                "number=" + number +
                ", type='" + type + '\'' +
                '}';
    }
}
