package com.cqjtu.csproject.dao;

import com.cqjtu.csproject.dao.model.Order;

import java.util.List;


public interface OrderMapper {

    /**
     * 查询用户的订单
     * @param userEmail
     * @return
     */
    List<Order> findAllOrders(String userEmail);

}
