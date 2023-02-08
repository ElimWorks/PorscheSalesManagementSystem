package com.elimWorks.pojo;

public class Inventory {

    private Integer inventoryId;
    private Integer inventoryAgencyId;
    private String inventoryAutoType;
    private String inventoryAutoColor;
    private String inventoryAutoWheel;
    private String inventoryAutoTrim;
    private Integer inventoryAutoPrice;
    private Integer inventoryPutaway;
    private Integer inventoryReserve;
    private Integer inventoryCompleteness;
    private Integer inventoryPermit;
    private Integer inventoryExist;

    public Inventory() {
    }

    public Inventory(Integer inventoryId, Integer inventoryAgencyId, String inventoryAutoType, String inventoryAutoColor, String inventoryAutoWheel, String inventoryAutoTrim, Integer inventoryAutoPrice, Integer inventoryPutaway, Integer inventoryReserve, Integer inventoryCompleteness, Integer inventoryPermit, Integer inventoryExist) {
        this.inventoryId = inventoryId;
        this.inventoryAgencyId = inventoryAgencyId;
        this.inventoryAutoType = inventoryAutoType;
        this.inventoryAutoColor = inventoryAutoColor;
        this.inventoryAutoWheel = inventoryAutoWheel;
        this.inventoryAutoTrim = inventoryAutoTrim;
        this.inventoryAutoPrice = inventoryAutoPrice;
        this.inventoryPutaway = inventoryPutaway;
        this.inventoryReserve = inventoryReserve;
        this.inventoryCompleteness = inventoryCompleteness;
        this.inventoryPermit = inventoryPermit;
        this.inventoryExist = inventoryExist;
    }

    public Integer getInventoryId() {
        return inventoryId;
    }

    public void setInventoryId(Integer inventoryId) {
        this.inventoryId = inventoryId;
    }

    public Integer getInventoryAgencyId() {
        return inventoryAgencyId;
    }

    public void setInventoryAgencyId(Integer inventoryAgencyId) {
        this.inventoryAgencyId = inventoryAgencyId;
    }

    public String getInventoryAutoType() {
        return inventoryAutoType;
    }

    public void setInventoryAutoType(String inventoryAutoType) {
        this.inventoryAutoType = inventoryAutoType;
    }

    public String getInventoryAutoColor() {
        return inventoryAutoColor;
    }

    public void setInventoryAutoColor(String inventoryAutoColor) {
        this.inventoryAutoColor = inventoryAutoColor;
    }

    public String getInventoryAutoWheel() {
        return inventoryAutoWheel;
    }

    public void setInventoryAutoWheel(String inventoryAutoWheel) {
        this.inventoryAutoWheel = inventoryAutoWheel;
    }

    public String getInventoryAutoTrim() {
        return inventoryAutoTrim;
    }

    public void setInventoryAutoTrim(String inventoryAutoTrim) {
        this.inventoryAutoTrim = inventoryAutoTrim;
    }

    public Integer getInventoryAutoPrice() {
        return inventoryAutoPrice;
    }

    public void setInventoryAutoPrice(Integer inventoryAutoPrice) {
        this.inventoryAutoPrice = inventoryAutoPrice;
    }

    public Integer getInventoryPutaway() {
        return inventoryPutaway;
    }

    public void setInventoryPutaway(Integer inventoryPutaway) {
        this.inventoryPutaway = inventoryPutaway;
    }

    public Integer getInventoryReserve() {
        return inventoryReserve;
    }

    public void setInventoryReserve(Integer inventoryReserve) {
        this.inventoryReserve = inventoryReserve;
    }

    public Integer getInventoryCompleteness() {
        return inventoryCompleteness;
    }

    public void setInventoryCompleteness(Integer inventoryCompleteness) {
        this.inventoryCompleteness = inventoryCompleteness;
    }

    public Integer getInventoryPermit() {
        return inventoryPermit;
    }

    public void setInventoryPermit(Integer inventoryPermit) {
        this.inventoryPermit = inventoryPermit;
    }

    public Integer getInventoryExist() {
        return inventoryExist;
    }

    public void setInventoryExist(Integer inventoryExist) {
        this.inventoryExist = inventoryExist;
    }

    @Override
    public String toString() {
        return "Inventory{" +
                "inventoryId=" + inventoryId +
                ", inventoryAgencyId=" + inventoryAgencyId +
                ", inventoryAutoType='" + inventoryAutoType + '\'' +
                ", inventoryAutoColor='" + inventoryAutoColor + '\'' +
                ", inventoryAutoWheel='" + inventoryAutoWheel + '\'' +
                ", inventoryAutoTrim='" + inventoryAutoTrim + '\'' +
                ", inventoryAutoPrice=" + inventoryAutoPrice +
                ", inventoryPutaway=" + inventoryPutaway +
                ", inventoryReserve=" + inventoryReserve +
                ", inventoryCompleteness=" + inventoryCompleteness +
                ", inventoryPermit=" + inventoryPermit +
                ", inventoryExist=" + inventoryExist +
                '}';
    }
}
