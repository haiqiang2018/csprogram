package com.cqjtu.csproject.dao.model;

import java.util.Date;

public class Order {
    String oId;
    Date oTime;
    boolean oStates;
    int oz;
    float oMoney;

    public String getoId() {
        return oId;
    }

    public void setoId(String oId) {
        this.oId = oId;
    }

    public Date getoTime() {
        return oTime;
    }

    public void setoTime(Date oTime) {
        this.oTime = oTime;
    }

    public boolean isoStates() {
        return oStates;
    }

    public void setoStates(boolean oStates) {
        this.oStates = oStates;
    }

    public int getOz() {
        return oz;
    }

    public void setOz(int oz) {
        this.oz = oz;
    }

    public float getoMoney() {
        return oMoney;
    }

    public void setoMoney(float oMoney) {
        this.oMoney = oMoney;
    }

    @Override
    public String toString() {
        return "Order{" +
                "oId='" + oId + '\'' +
                ", oTime=" + oTime +
                ", oStates=" + oStates +
                ", oz=" + oz +
                ", oMoney=" + oMoney +
                '}';
    }
}
