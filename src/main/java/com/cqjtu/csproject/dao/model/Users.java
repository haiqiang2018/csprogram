package com.cqjtu.csproject.dao.model;

import java.io.Serializable;

/**
 * Created with IntelliJ IDEA.
 * author: Bernie
 * Date: 2018/9/5
 * Time: 21:12
 */
public class Users implements Serializable{

    String userId;
    int pId;
    String uPassWord;
    String uName;

    public String getUserId() {
        return userId;
    }

    public void setUserId(String userId) {
        this.userId = userId;
    }

    public int getpId() {
        return pId;
    }

    public void setpId(int pId) {
        this.pId = pId;
    }

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

    @Override
    public String toString() {
        return "Users{" +
                "userId='" + userId + '\'' +
                ", pId=" + pId +
                ", uPassWord='" + uPassWord + '\'' +
                ", uName='" + uName + '\'' +
                '}';
    }
}
