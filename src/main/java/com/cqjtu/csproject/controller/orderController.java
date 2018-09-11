package com.cqjtu.csproject.controller;

import com.cqjtu.csproject.dao.model.Order;
import com.cqjtu.csproject.service.OrderService;
import com.cqjtu.csproject.service.UserService;
import com.cqjtu.csproject.utils.Utils;
import net.sf.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("order")
public class orderController {
    @Autowired
    private OrderService orderService;

    @Autowired
    private UserService userService;

    @RequestMapping("/findAllOrders")
    @ResponseBody
    public String findAllOrders(HttpServletRequest request) throws Exception {
        HttpSession session = request.getSession();
        String username = session.getAttribute("username").toString();

        String userEmail = userService.getUserEail(username);

        List<Order> order = orderService.findAllOrders(userEmail);

        String jsonArray = Utils.ConvertListToPageJson(order, 2);

        return jsonArray;
    }



}
