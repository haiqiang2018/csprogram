package com.cqjtu.csproject.controller.user;

import com.cqjtu.csproject.dao.model.Users;
import com.cqjtu.csproject.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
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
@RequestMapping("/user")
public class userController {

    @Autowired
    private UserService userService;

    @RequestMapping("/userLogin")
    @ResponseBody
    public Map<String,Object> userLogin(@RequestParam(value = "User_ID",required = false) String userID,
                                        @RequestParam(value = "PassWords",required = false) String passWords,
                                        HttpServletRequest request){
        Map<String,Object> map = new HashMap<String,Object>();

        map.put("user_ID",userID);
        map.put("user_Password",passWords);
        List<Users> islogin = userService.userLogin(userID,passWords);

        if(islogin != null || islogin.size()<0){
            map.put("loginscuccess",1);
        } else {
            map.put("loginscuceess",0);
        }

        return map;
    }
}
