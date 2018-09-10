package com.cqjtu.csproject.service.impl;

import com.cqjtu.csproject.dao.UserMapper;
import com.cqjtu.csproject.dao.model.Users;
import com.cqjtu.csproject.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * Created with IntelliJ IDEA.
 * author: Bernie
 * Date: 2018/9/8
 * Time: 23:43
 */
@Service("userService")
public class UserServiceImpl implements UserService {
    @Autowired
    private UserMapper userMapper;

    @Override
    public Users findById(String userId) {

        return userMapper.findById(userId);
    }


  /*  @Override
    public List<Users> userLogin(String username, String password) {
        return userMapper.userLogin(username,password);
    }
*/

}
