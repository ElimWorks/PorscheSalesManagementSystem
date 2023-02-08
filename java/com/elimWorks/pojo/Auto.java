package com.elimWorks.pojo;

public class Auto {
    private Integer autoId;
    private String autoName;
    private String autoModel;
    private String energyType;
    private String bodyDesign;
    private Double zeroToHundredTime;
    private Integer topTrackSpeed;

    private Integer engineMaxPower;
    private Integer engineMaxTorque;
    private Integer displacemenet;
    private Integer engineMaxSpeed;
    private String designAndCylinders;

    private Integer electromotorMaxPower;
    private Integer electromotorMaxTorque;
    private Integer drivingRange;
    private Double chargingTime;

    private Integer autoPrice;
    private Integer putaway;
    private Integer autoExist;

    public Auto() {
    }

    public Auto(Integer autoId, String autoName, String autoModel, String energyType, String bodyDesign, Double zeroToHundredTime, Integer topTrackSpeed, Integer engineMaxPower, Integer engineMaxTorque, Integer displacemenet, Integer engineMaxSpeed, String designAndCylinders, Integer electromotorMaxPower, Integer electromotorMaxTorque, Integer drivingRange, Double chargingTime, Integer autoPrice, Integer putaway, Integer autoExist) {
        this.autoId = autoId;
        this.autoName = autoName;
        this.autoModel = autoModel;
        this.energyType = energyType;
        this.bodyDesign = bodyDesign;
        this.zeroToHundredTime = zeroToHundredTime;
        this.topTrackSpeed = topTrackSpeed;
        this.engineMaxPower = engineMaxPower;
        this.engineMaxTorque = engineMaxTorque;
        this.displacemenet = displacemenet;
        this.engineMaxSpeed = engineMaxSpeed;
        this.designAndCylinders = designAndCylinders;
        this.electromotorMaxPower = electromotorMaxPower;
        this.electromotorMaxTorque = electromotorMaxTorque;
        this.drivingRange = drivingRange;
        this.chargingTime = chargingTime;
        this.autoPrice = autoPrice;
        this.putaway = putaway;
        this.autoExist = autoExist;
    }

    public Integer getAutoId() {
        return autoId;
    }

    public void setAutoId(Integer autoId) {
        this.autoId = autoId;
    }

    public String getAutoName() {
        return autoName;
    }

    public void setAutoName(String autoName) {
        this.autoName = autoName;
    }

    public String getAutoModel() {
        return autoModel;
    }

    public void setAutoModel(String autoModel) {
        this.autoModel = autoModel;
    }

    public String getEnergyType() {
        return energyType;
    }

    public void setEnergyType(String energyType) {
        this.energyType = energyType;
    }

    public String getBodyDesign() {
        return bodyDesign;
    }

    public void setBodyDesign(String bodyDesign) {
        this.bodyDesign = bodyDesign;
    }

    public Double getZeroToHundredTime() {
        return zeroToHundredTime;
    }

    public void setZeroToHundredTime(Double zeroToHundredTime) {
        this.zeroToHundredTime = zeroToHundredTime;
    }

    public Integer getTopTrackSpeed() {
        return topTrackSpeed;
    }

    public void setTopTrackSpeed(Integer topTrackSpeed) {
        this.topTrackSpeed = topTrackSpeed;
    }

    public Integer getEngineMaxPower() {
        return engineMaxPower;
    }

    public void setEngineMaxPower(Integer engineMaxPower) {
        this.engineMaxPower = engineMaxPower;
    }

    public Integer getEngineMaxTorque() {
        return engineMaxTorque;
    }

    public void setEngineMaxTorque(Integer engineMaxTorque) {
        this.engineMaxTorque = engineMaxTorque;
    }

    public Integer getDisplacemenet() {
        return displacemenet;
    }

    public void setDisplacemenet(Integer displacemenet) {
        this.displacemenet = displacemenet;
    }

    public Integer getEngineMaxSpeed() {
        return engineMaxSpeed;
    }

    public void setEngineMaxSpeed(Integer engineMaxSpeed) {
        this.engineMaxSpeed = engineMaxSpeed;
    }

    public String getDesignAndCylinders() {
        return designAndCylinders;
    }

    public void setDesignAndCylinders(String designAndCylinders) {
        this.designAndCylinders = designAndCylinders;
    }

    public Integer getElectromotorMaxPower() {
        return electromotorMaxPower;
    }

    public void setElectromotorMaxPower(Integer electromotorMaxPower) {
        this.electromotorMaxPower = electromotorMaxPower;
    }

    public Integer getElectromotorMaxTorque() {
        return electromotorMaxTorque;
    }

    public void setElectromotorMaxTorque(Integer electromotorMaxTorque) {
        this.electromotorMaxTorque = electromotorMaxTorque;
    }

    public Integer getDrivingRange() {
        return drivingRange;
    }

    public void setDrivingRange(Integer drivingRange) {
        this.drivingRange = drivingRange;
    }

    public Double getChargingTime() {
        return chargingTime;
    }

    public void setChargingTime(Double chargingTime) {
        this.chargingTime = chargingTime;
    }

    public Integer getAutoPrice() {
        return autoPrice;
    }

    public void setAutoPrice(Integer autoPrice) {
        this.autoPrice = autoPrice;
    }

    public Integer getPutaway() {
        return putaway;
    }

    public void setPutaway(Integer putaway) {
        this.putaway = putaway;
    }

    public Integer getAutoExist() {
        return autoExist;
    }

    public void setAutoExist(Integer autoExist) {
        this.autoExist = autoExist;
    }

    @Override
    public String toString() {
        return "Auto{" +
                "autoId=" + autoId +
                ", autoName='" + autoName + '\'' +
                ", autoModel='" + autoModel + '\'' +
                ", energyType='" + energyType + '\'' +
                ", bodyDesign='" + bodyDesign + '\'' +
                ", zeroToHundredTime=" + zeroToHundredTime +
                ", topTrackSpeed=" + topTrackSpeed +
                ", engineMaxPower=" + engineMaxPower +
                ", engineMaxTorque=" + engineMaxTorque +
                ", displacemenet=" + displacemenet +
                ", engineMaxSpeed=" + engineMaxSpeed +
                ", designAndCylinders='" + designAndCylinders + '\'' +
                ", electromotorMaxPower=" + electromotorMaxPower +
                ", electromotorMaxTorque=" + electromotorMaxTorque +
                ", drivingRange=" + drivingRange +
                ", chargingTime=" + chargingTime +
                ", autoPrice=" + autoPrice +
                ", putaway=" + putaway +
                ", autoExist=" + autoExist +
                '}';
    }
}
