package com.cqjtu.csproject.dao.model;

import com.fasterxml.jackson.annotation.JsonFormat;

import java.util.Date;

public class Order {
    String oId;
    String oTime;
    boolean oStates;
    int oz;
    float oMoney;
    String userEmail;
    String userName;

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getUserEmail() {
        return userEmail;
    }

    public void setUserEmail(String userEmail) {
        this.userEmail = userEmail;
    }

    public String getoId() {
        return oId;
    }

    public void setoId(String oId) {
        this.oId = oId;
    }

    public String getoTime() {
        return oTime;
    }

    public void setoTime(String oTime) {
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
