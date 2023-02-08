package com.elimWorks.pojo;

public class Trim {

    private Integer trimId;
    private String trimName;
    private Integer trimPrice;

    public Trim() {
    }

    public Trim(Integer trimId, String trimName, Integer trimPrice) {
        this.trimId = trimId;
        this.trimName = trimName;
        this.trimPrice = trimPrice;
    }

    public Integer getTrimId() {
        return trimId;
    }

    public void setTrimId(Integer trimId) {
        this.trimId = trimId;
    }

    public String getTrimName() {
        return trimName;
    }

    public void setTrimName(String trimName) {
        this.trimName = trimName;
    }

    public Integer getTrimPrice() {
        return trimPrice;
    }

    public void setTrimPrice(Integer trimPrice) {
        this.trimPrice = trimPrice;
    }

    @Override
    public String toString() {
        return "Trim{" +
                "trimId=" + trimId +
                ", trimName='" + trimName + '\'' +
                ", trimPrice=" + trimPrice +
                '}';
    }
}
