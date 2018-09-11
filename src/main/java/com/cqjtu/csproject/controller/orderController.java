package com.cqjtu.csproject.controller;

import com.cqjtu.csproject.dao.model.Order;
import com.cqjtu.csproject.service.OrderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping("order")
public class orderController {
    @Autowired
    private OrderService orderService;

    @RequestMapping("/findByOId")
    @ResponseBody
    public Order findByOId(String oId, ModelMap model) {
        Order order = orderService.findByOId(oId);
        model.put("order", order);
        return order;
    }
}
