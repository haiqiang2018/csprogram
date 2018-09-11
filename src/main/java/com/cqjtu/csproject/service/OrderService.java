package com.cqjtu.csproject.service;

import com.cqjtu.csproject.dao.model.Order;

import java.util.List;

public interface OrderService {

    /**
     * 查询用户的订单
     * @param userEmail
     * @return
     */
    List<Order> findAllOrders(String userEmail);
}
