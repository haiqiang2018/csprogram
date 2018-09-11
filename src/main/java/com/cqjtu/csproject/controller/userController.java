package com.cqjtu.csproject.controller;

import com.cqjtu.csproject.dao.model.Users;
import com.cqjtu.csproject.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * Created with IntelliJ IDEA.
 * author: Bernie
 * Date: 2018/9/8
 * Time: 23:17
 */
@Controller
@RequestMapping("user")
public class userController {
    @Autowired
    private UserService userService;


    @RequestMapping("/userLogin")
    @ResponseBody
    public Map<String, Object> userLogin(@RequestParam(value = "User_ID", required = false) String userId,
                                         @RequestParam(value = "PassWords", required = false) String passWords,
                                         HttpServletRequest request,ModelMap model) throws Exception {
        Map<String, Object> map = new HashMap<String, Object>();

        Users islogin = userService.userLogin(userId,passWords);

        if(islogin != null ){
            map.put("loginscuccess",1);
            map.put("tip","登录成功！");

            //将用户名存到session中
            HttpSession session = request.getSession();
            session.setAttribute("username",islogin.getuName());
        } else {
            map.put("loginscuceess",0);
            map.put("tip","登录失败，用户名或密码错误！");
        }
        model.put("map",map);

        return map;
    }

    @RequestMapping("findById")
    @ResponseBody
    public Users findById(String userId, ModelMap model) {
        Users user = userService.findById(userId);
        model.put("user", user);
        return user;
    }
}