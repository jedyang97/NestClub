package cn.cornellclub.socialization.entity;

import java.io.Serializable;
import java.sql.Date;
import java.util.List;

public class Event implements Serializable {

    /**
     * 
     */
    private static final long serialVersionUID = 1L;

    private String name;
    private String address;
    private String date;
    private String time;
    private String dressCode;
    private String description;
    private String poster;
    private String status;
    private String yooPayEventName;
    private List<String> items;

    @Override
    public String toString() {
        return this.name;
    }

    public String getName() {
        return name;
    }

    public String getAddress() {
        return address;
    }

    public String getDescription() {
        return description;
    }

    public void setName(String name) {
        this.name = name;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getPoster() {
        return poster;
    }

    public void setPoster(String poster) {
        this.poster = poster;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public List<String> getItems() {
        return items;
    }

    public void setItems(List<String> items) {
        this.items = items;
    }

    public String getTime() {
        return time;
    }

    public void setTime(String time) {
        this.time = time;
    }

    public String getDressCode() {
        return dressCode;
    }

    public void setDressCode(String dressCode) {
        this.dressCode = dressCode;
    }

    public String getYooPayEventName() {
        return yooPayEventName;
    }

    public void setYooPayEventName(String yooPayEventName) {
        this.yooPayEventName = yooPayEventName;
    }

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }

}
