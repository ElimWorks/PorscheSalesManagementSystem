package com.elimWorks.pojo;

public class City {

    private Integer cityId;
    private String cityName;
    private String cityPertain;

    public City() {
    }

    public City(Integer cityId, String cityName, String cityPertain) {
        this.cityId = cityId;
        this.cityName = cityName;
        this.cityPertain = cityPertain;
    }

    public Integer getCityId() {
        return cityId;
    }

    public void setCityId(Integer cityId) {
        this.cityId = cityId;
    }

    public String getCityName() {
        return cityName;
    }

    public void setCityName(String cityName) {
        this.cityName = cityName;
    }

    public String getCityPertain() {
        return cityPertain;
    }

    public void setCityPertain(String cityPertain) {
        this.cityPertain = cityPertain;
    }

    @Override
    public String toString() {
        return "City{" +
                "cityId=" + cityId +
                ", cityName='" + cityName + '\'' +
                ", cityPertain='" + cityPertain + '\'' +
                '}';
    }
}
