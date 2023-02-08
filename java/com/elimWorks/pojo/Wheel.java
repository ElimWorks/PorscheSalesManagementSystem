package com.elimWorks.pojo;

public class Wheel {

    private Integer wheelId;
    private String wheelName;
    private Integer wheelSize;
    private Integer wheelPrice;

    public Wheel() {
    }

    public Wheel(Integer wheelId, String wheelName, Integer wheelSize, Integer wheelPrice) {
        this.wheelId = wheelId;
        this.wheelName = wheelName;
        this.wheelSize = wheelSize;
        this.wheelPrice = wheelPrice;
    }

    public Integer getWheelId() {
        return wheelId;
    }

    public void setWheelId(Integer wheelId) {
        this.wheelId = wheelId;
    }

    public String getWheelName() {
        return wheelName;
    }

    public void setWheelName(String wheelName) {
        this.wheelName = wheelName;
    }

    public Integer getWheelSize() {
        return wheelSize;
    }

    public void setWheelSize(Integer wheelSize) {
        this.wheelSize = wheelSize;
    }

    public Integer getWheelPrice() {
        return wheelPrice;
    }

    public void setWheelPrice(Integer wheelPrice) {
        this.wheelPrice = wheelPrice;
    }

    @Override
    public String toString() {
        return "Wheel{" +
                "wheelId=" + wheelId +
                ", wheelName='" + wheelName + '\'' +
                ", wheelSize=" + wheelSize +
                ", wheelPrice=" + wheelPrice +
                '}';
    }
}
