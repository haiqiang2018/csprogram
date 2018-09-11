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
       * @param uName
       * @return
       */
      Users findByName(String uName);


      /**
       * 用户登录
       * @param userEmil 用户邮箱
       * @param passWords 用户密码
       * @return
       */
      Users userLogin(String userEmil, String passWords);

      String getUserEail(String username);
}
