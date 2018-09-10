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

      /**
       * 测试连接数据库
       * @param userId
       * @return
       */
      Users findById(String userId);


      /**
       * 用户登录
       * @param username 用户名
       * @param password 用户密码
       * @return
       */
      Users userLogin(String userId, String passWords);

}
