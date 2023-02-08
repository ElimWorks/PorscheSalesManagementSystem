package com.elimWorks.pojo;

public class Agency {

    private Integer agencyId;
    private String agencyName;
    private String agencyProvince;
    private String agencyCity;
    private Integer agencyCapital;//启动资金
    private Integer agencyUserId;
    private Integer agencyPermit;//审核
    private Integer agencyExist;

    public Agency() {
    }

    public Agency(Integer agencyId, String agencyName, String agencyCountry, String agencyProvince, String agencyCity, Integer agencyCapital, Integer agencyUserId, Integer agencyPermit, Integer agencyExist) {
        this.agencyId = agencyId;
        this.agencyName = agencyName;
        this.agencyProvince = agencyProvince;
        this.agencyCity = agencyCity;
        this.agencyCapital = agencyCapital;
        this.agencyUserId = agencyUserId;
        this.agencyPermit = agencyPermit;
        this.agencyExist = agencyExist;
    }

    public Integer getAgencyId() {
        return agencyId;
    }

    public void setAgencyId(Integer agencyId) {
        this.agencyId = agencyId;
    }

    public String getAgencyName() {
        return agencyName;
    }

    public void setAgencyName(String agencyName) {
        this.agencyName = agencyName;
    }

    public String getAgencyProvince() {
        return agencyProvince;
    }

    public void setAgencyProvince(String agencyProvince) {
        this.agencyProvince = agencyProvince;
    }

    public String getAgencyCity() {
        return agencyCity;
    }

    public void setAgencyCity(String agencyCity) {
        this.agencyCity = agencyCity;
    }

    public Integer getAgencyCapital() {
        return agencyCapital;
    }

    public void setAgencyCapital(Integer agencyCapital) {
        this.agencyCapital = agencyCapital;
    }

    public Integer getAgencyUserId() {
        return agencyUserId;
    }

    public void setAgencyUserId(Integer agencyUserId) {
        this.agencyUserId = agencyUserId;
    }

    public Integer getAgencyPermit() {
        return agencyPermit;
    }

    public void setAgencyPermit(Integer agencyPermit) {
        this.agencyPermit = agencyPermit;
    }

    public Integer getAgencyExist() {
        return agencyExist;
    }

    public void setAgencyExist(Integer agencyExist) {
        this.agencyExist = agencyExist;
    }

    @Override
    public String toString() {
        return "Agency{" +
                "agencyId=" + agencyId +
                ", agencyName='" + agencyName + '\'' +
                ", agencyProvince='" + agencyProvince + '\'' +
                ", agencyCity='" + agencyCity + '\'' +
                ", agencyCapital=" + agencyCapital +
                ", agencyUserId=" + agencyUserId +
                ", agencyPermit=" + agencyPermit +
                ", agencyExist=" + agencyExist +
                '}';
    }
}
