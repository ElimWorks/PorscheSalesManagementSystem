package com.elimWorks.pojo;

public class Auto_energyType {

    private Integer energyTypesId;
    private String energyTypesName;

    public Auto_energyType() {
    }

    public Auto_energyType(Integer energyTypesId, String energyTypesName) {
        this.energyTypesId = energyTypesId;
        this.energyTypesName = energyTypesName;
    }

    public Integer getEnergyTypesId() {
        return energyTypesId;
    }

    public void setEnergyTypesId(Integer energyTypesId) {
        this.energyTypesId = energyTypesId;
    }

    public String getEnergyTypesName() {
        return energyTypesName;
    }

    public void setEnergyTypesName(String energyTypesName) {
        this.energyTypesName = energyTypesName;
    }

    @Override
    public String toString() {
        return "Auto_energyType{" +
                "energyTypesId=" + energyTypesId +
                ", energyTypesName='" + energyTypesName + '\'' +
                '}';
    }
}
