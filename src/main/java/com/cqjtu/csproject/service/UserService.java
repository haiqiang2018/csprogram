package com.cqjtu.csproject.service;

import com.cqjtu.csproject.dao.model.Users;

import java.util.List;

/**
 * Created with IntelliJ IDEA.
 * author: Bernie
 * Date: 2018/9/8
 * Time: 23:39
 */
public interface UserService {

      List<Users> userLogin(String username, String password);
}
