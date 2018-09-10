package com.cqjtu.csproject.controller;

import com.cqjtu.csproject.dao.model.Users;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 * Created with IntelliJ IDEA.
 * author: Bernie
 * Date: 2018/9/8
 * Time: 15:54
 */
@Controller
public class test {

    @RequestMapping("getUser")
    @ResponseBody
    public Users getUser(int userId){
        Users users = new Users();
        users.setpId(userId);
        users.setuName("Bernie");
        users.setuPassWord("123456");
        System.out.println(users);
        return users;
    }
}
