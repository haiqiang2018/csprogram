package com.cqjtu.csproject.dao;


import com.cqjtu.csproject.dao.model.Users;

import java.util.List;

public interface UserMapper {

    public String findByUName(String uName);
    public int insert(Users user);
    public int deleteByUId(int userId);
    public int update(Users user);

    List<Users> userLogin(String username, String password);

    public Users findById(String userId);
}