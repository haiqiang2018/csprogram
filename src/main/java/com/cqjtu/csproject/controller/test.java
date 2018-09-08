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
    public Users getUser(int i){
        Users users = new Users();

        users.setpId(i);
        users.setuName("Bernie");
        users.setuPassWord("123456");

        return users;
    }
}
