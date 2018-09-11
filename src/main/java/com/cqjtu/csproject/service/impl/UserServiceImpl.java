package com.cqjtu.csproject.service.impl;

import com.cqjtu.csproject.dao.UserMapper;
import com.cqjtu.csproject.dao.model.Users;
import com.cqjtu.csproject.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

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
    public Users findByName(String uName) {
        return userMapper.findByName(uName);
    }

    @Override
    public Users userLogin(String userEmil, String passWords) {
        return userMapper.userLogin(userEmil, passWords);
    }

    @Override
    public String getUserEail(String username) {
        return userMapper.getUserEmail(username);
    }


}
