package com.elimWorks.pojo;

public class Auto_bodyDesignType {

    private Integer bodyDesignId;
    private String bodyDesignName;

    public Auto_bodyDesignType() {
    }

    public Auto_bodyDesignType(Integer bodyDesignId, String bodyDesignName) {
        this.bodyDesignId = bodyDesignId;
        this.bodyDesignName = bodyDesignName;
    }

    public Integer getBodyDesignId() {
        return bodyDesignId;
    }

    public void setBodyDesignId(Integer bodyDesignId) {
        this.bodyDesignId = bodyDesignId;
    }

    public String getBodyDesignName() {
        return bodyDesignName;
    }

    public void setBodyDesignName(String bodyDesignName) {
        this.bodyDesignName = bodyDesignName;
    }

    @Override
    public String toString() {
        return "Auto_bodyDesignType{" +
                "bodyDesignId=" + bodyDesignId +
                ", bodyDesignName='" + bodyDesignName + '\'' +
                '}';
    }
}
