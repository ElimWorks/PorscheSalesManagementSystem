package com.elimWorks.pojo;

public class Order {

    private Integer orderId;
    private String orderAgency;
    private Integer orderUserId;
    private String orderUserName;
    private Integer orderUserPhone;
    private String orderAutoName;
    private String orderColorName;
    private String orderWheelName;
    private Integer orderWheelSize;
    private String orderTrimName;
    private Integer orderTotalPrice;
    private Integer orderInventory;
    private Integer orderInventoryId;
    private Integer orderTransmit;
    private Integer orderCompleteness;
    private Integer orderExist;

    public Order() {
    }

    public Order(Integer orderId, String orderAgency, Integer orderUserId, String orderUserName, Integer orderUserPhone, String orderAutoName, String orderColorName, String orderWheelName, Integer orderWheelSize, String orderTrimName, Integer orderTotalPrice, Integer orderInventory, Integer orderInventoryId, Integer orderTransmit, Integer orderCompleteness, Integer orderExist) {
        this.orderId = orderId;
        this.orderAgency = orderAgency;
        this.orderUserId = orderUserId;
        this.orderUserName = orderUserName;
        this.orderUserPhone = orderUserPhone;
        this.orderAutoName = orderAutoName;
        this.orderColorName = orderColorName;
        this.orderWheelName = orderWheelName;
        this.orderWheelSize = orderWheelSize;
        this.orderTrimName = orderTrimName;
        this.orderTotalPrice = orderTotalPrice;
        this.orderInventory = orderInventory;
        this.orderInventoryId = orderInventoryId;
        this.orderTransmit = orderTransmit;
        this.orderCompleteness = orderCompleteness;
        this.orderExist = orderExist;
    }

    public Integer getOrderId() {
        return orderId;
    }

    public void setOrderId(Integer orderId) {
        this.orderId = orderId;
    }

    public String getOrderAgency() {
        return orderAgency;
    }

    public void setOrderAgency(String orderAgency) {
        this.orderAgency = orderAgency;
    }

    public Integer getOrderUserId() {
        return orderUserId;
    }

    public void setOrderUserId(Integer orderUserId) {
        this.orderUserId = orderUserId;
    }

    public String getOrderUserName() {
        return orderUserName;
    }

    public void setOrderUserName(String orderUserName) {
        this.orderUserName = orderUserName;
    }

    public Integer getOrderUserPhone() {
        return orderUserPhone;
    }

    public void setOrderUserPhone(Integer orderUserPhone) {
        this.orderUserPhone = orderUserPhone;
    }

    public String getOrderAutoName() {
        return orderAutoName;
    }

    public void setOrderAutoName(String orderAutoName) {
        this.orderAutoName = orderAutoName;
    }

    public String getOrderColorName() {
        return orderColorName;
    }

    public void setOrderColorName(String orderColorName) {
        this.orderColorName = orderColorName;
    }

    public String getOrderWheelName() {
        return orderWheelName;
    }

    public void setOrderWheelName(String orderWheelName) {
        this.orderWheelName = orderWheelName;
    }

    public Integer getOrderWheelSize() {
        return orderWheelSize;
    }

    public void setOrderWheelSize(Integer orderWheelSize) {
        this.orderWheelSize = orderWheelSize;
    }

    public String getOrderTrimName() {
        return orderTrimName;
    }

    public void setOrderTrimName(String orderTrimName) {
        this.orderTrimName = orderTrimName;
    }

    public Integer getOrderTotalPrice() {
        return orderTotalPrice;
    }

    public void setOrderTotalPrice(Integer orderTotalPrice) {
        this.orderTotalPrice = orderTotalPrice;
    }

    public Integer getOrderInventory() {
        return orderInventory;
    }

    public void setOrderInventory(Integer orderInventory) {
        this.orderInventory = orderInventory;
    }

    public Integer getOrderInventoryId() {
        return orderInventoryId;
    }

    public void setOrderInventoryId(Integer orderInventoryId) {
        this.orderInventoryId = orderInventoryId;
    }

    public Integer getOrderTransmit() {
        return orderTransmit;
    }

    public void setOrderTransmit(Integer orderTransmit) {
        this.orderTransmit = orderTransmit;
    }

    public Integer getOrderCompleteness() {
        return orderCompleteness;
    }

    public void setOrderCompleteness(Integer orderCompleteness) {
        this.orderCompleteness = orderCompleteness;
    }

    public Integer getOrderExist() {
        return orderExist;
    }

    public void setOrderExist(Integer orderExist) {
        this.orderExist = orderExist;
    }

    @Override
    public String toString() {
        return "Order{" +
                "orderId=" + orderId +
                ", orderAgency='" + orderAgency + '\'' +
                ", orderUserId=" + orderUserId +
                ", orderUserName='" + orderUserName + '\'' +
                ", orderUserPhone=" + orderUserPhone +
                ", orderAutoName='" + orderAutoName + '\'' +
                ", orderColorName='" + orderColorName + '\'' +
                ", orderWheelName='" + orderWheelName + '\'' +
                ", orderWheelSize=" + orderWheelSize +
                ", orderTrimName='" + orderTrimName + '\'' +
                ", orderTotalPrice=" + orderTotalPrice +
                ", orderInventory=" + orderInventory +
                ", orderInventoryId=" + orderInventoryId +
                ", orderTransmit=" + orderTransmit +
                ", orderCompleteness=" + orderCompleteness +
                ", orderExist=" + orderExist +
                '}';
    }
}

