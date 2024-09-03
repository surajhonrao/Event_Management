package model;

import java.sql.Date;

public class book { // Capitalized class name

    private String name;
    private String function;
    private Date date; // Changed to sql.Date
    private int strength;

    public book() { // Capitalized constructor name
    }

    public book(String name, String function, Date date, int strength) {
        this.name = name;
        this.function = function;
        this.date = date;
        this.strength = strength;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getFunction() {
        return function;
    }

    public void setFunction(String function) {
        this.function = function;
    }

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }

    public int getStrength() {
        return strength;
    }

    public void setStrength(int strength) {
        this.strength = strength;
    }
}
