package com.elimWorks.pojo;

public class Color {

    private Integer colorId;
    private String colorType;
    private String colorName;
    private Integer colorPrice;

    public Color() {
    }

    public Color(Integer colorId, String colorType, String colorName, Integer colorPrice) {
        this.colorId = colorId;
        this.colorType = colorType;
        this.colorName = colorName;
        this.colorPrice = colorPrice;
    }

    public Integer getColorId() {
        return colorId;
    }

    public void setColorId(Integer colorId) {
        this.colorId = colorId;
    }

    public String getColorType() {
        return colorType;
    }

    public void setColorType(String colorType) {
        this.colorType = colorType;
    }

    public String getColorName() {
        return colorName;
    }

    public void setColorName(String colorName) {
        this.colorName = colorName;
    }

    public Integer getColorPrice() {
        return colorPrice;
    }

    public void setColorPrice(Integer colorPrice) {
        this.colorPrice = colorPrice;
    }

    @Override
    public String toString() {
        return "Color{" +
                "colorId=" + colorId +
                ", colorType='" + colorType + '\'' +
                ", colorName='" + colorName + '\'' +
                ", colorPrice='" + colorPrice + '\'' +
                '}';
    }
}
