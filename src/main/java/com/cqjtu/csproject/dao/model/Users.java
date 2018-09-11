package com.cqjtu.csproject.dao.model;

import java.io.Serializable;

/**
 * Created with IntelliJ IDEA.
 * author: Bernie
 * Date: 2018/9/5
 * Time: 21:12
 */
public class Users implements Serializable{

    String uPassWord;
    String uName;
    String userEmil;
    int uState;
    String uPhone;

    public String getuPassWord() {
        return uPassWord;
    }

    public void setuPassWord(String uPassWord) {
        this.uPassWord = uPassWord;
    }

    public String getuName() {
        return uName;
    }

    public void setuName(String uName) {
        this.uName = uName;
    }

    public String getUserEmil() {
        return userEmil;
    }

    public void setUserEmil(String userEmil) {
        this.userEmil = userEmil;
    }

    public int getuState() {
        return uState;
    }

    public void setuState(int uState) {
        this.uState = uState;
    }

    public String getuPhone() {
        return uPhone;
    }

    public void setuPhone(String uPhone) {
        this.uPhone = uPhone;
    }

    @Override
    public String toString() {
        return "Users{" +
                "uPassWord='" + uPassWord + '\'' +
                ", uName='" + uName + '\'' +
                ", userEmil='" + userEmil + '\'' +
                ", uState=" + uState +
                ", uPhone='" + uPhone + '\'' +
                '}';
    }
}
