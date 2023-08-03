package entities;

import java.time.LocalDate;
import java.time.LocalTime;

public class Fly {
    private String numFly;
    private int id;
    private boolean available;
    private LocalDate date;
    private LocalTime time;

    public Fly () {

    }

    public Fly(String numFly, int id, boolean available, LocalDate date, LocalTime time) {
        this.numFly = numFly;
        this.id = id;
        this.available = available;
        this.date = date;
        this.time = time;
    }

    public String getNumFly() {
        return numFly;
    }

    public void setNumFly(String numFly) {
        this.numFly = numFly;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public boolean isAvailable() {
        return available;
    }

    public void setAvailable(boolean available) {
        this.available = available;
    }

    public LocalDate getDate() {
        return date;
    }

    public void setDate(LocalDate date) {
        this.date = date;
    }

    public LocalTime getTime() {
        return time;
    }

    public void setTime(LocalTime time) {
        this.time = time;
    }

    @Override
    public String toString() {
        return "Fly{" +
                "numFly='" + numFly + '\'' +
                ", id=" + id +
                ", available=" + available +
                ", date=" + date +
                ", time=" + time +
                '}';
    }
}
