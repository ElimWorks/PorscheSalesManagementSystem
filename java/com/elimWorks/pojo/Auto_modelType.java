package com.elimWorks.pojo;

public class Auto_modelType {

    private Integer modelsId;
    private String modelsName;

    public Auto_modelType() {
    }

    public Auto_modelType(Integer modelsId, String modelsName) {
        this.modelsId = modelsId;
        this.modelsName = modelsName;
    }

    public Integer getModelsId() {
        return modelsId;
    }

    public void setModelsId(Integer modelsId) {
        this.modelsId = modelsId;
    }

    public String getModelsName() {
        return modelsName;
    }

    public void setModelsName(String modelsName) {
        this.modelsName = modelsName;
    }

    @Override
    public String toString() {
        return "Auto_modelType{" +
                "modelsId=" + modelsId +
                ", modelsName='" + modelsName + '\'' +
                '}';
    }
}
